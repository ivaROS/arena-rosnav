#!/usr/bin/env python3
"""Live scan/pedestrian observations and trajectory clearance checks for CFM."""
import math
from pathlib import Path
import sys
import time

sys.path.insert(0, str(Path(__file__).resolve().parent))
import rospy
import tf2_ros
from geometry_msgs.msg import Twist
from pedsim_msgs.msg import AgentStates
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Path as NavPath
from std_srvs.srv import TriggerResponse
from cfm_mppi_bridge import yaw
from cfm_mppi_continuous import ContinuousBridge


def trajectory_clear(states, tracks, start, now, horizon=4.0):
    """Tracks are (x,y,vx,vy,clearance_radius,observation_sim_stamp)."""
    current_index = min(len(states) - 1, max(0, int((now - start) / 0.1)))
    thresholds = []
    for x, y, vx, vy, radius, observed in tracks:
        age = max(0.0, now - observed)
        distance = math.hypot(states[current_index][0] - x - vx * age,
                              states[current_index][1] - y - vy * age)
        # A person can enter the planning buffer after a plan was issued.
        # Permit an escape inside that soft buffer while enforcing the
        # physical body clearance floor along every future state.
        thresholds.append(0.55 if radius >= 0.65 and distance < radius else radius)
    for i, state in enumerate(states):
        stamp = start + i * 0.1
        if stamp < now:
            continue
        if stamp > now + horizon:
            break
        for (x, y, vx, vy, _, observed), radius in zip(tracks, thresholds):
            age = max(0.0, stamp - observed)
            if math.hypot(state[0] - x - vx * age, state[1] - y - vy * age) < radius:
                return False
    return True


class ObstacleBridge(ContinuousBridge):
    scenarios = ("cfm_static.json", "cfm_pedestrian.json", "cfm_speed.json")
    max_seconds = 300
    max_displacement = 4
    min_speed = -0.25
    max_speed = 0.75
    max_turn = 1.0
    recover_tracking = True
    lookahead_distance = 2.0

    def __init__(self):
        self.max_speed = float(rospy.get_param("~max_linear", 0.75))
        self.max_turn = float(rospy.get_param("~max_angular", 1.0))
        self.min_speed = -float(rospy.get_param("~max_reverse", 0.25))
        if not (0 < self.max_speed <= 0.75 and 0 < self.max_turn <= 1.0
                and -self.max_speed <= self.min_speed <= 0):
            raise ValueError("Invalid RTO experiment velocity limits")
        self.scan_at = self.agents_at = 0.0
        self.scan_stamp = self.agents_stamp = 0.0
        self.scan_points, self.agents = [], []
        self.nearest_scan = float("inf")
        self.global_points, self.path_at = [], 0.0
        super().__init__()
        rospy.Subscriber("scan", LaserScan, self.scan_callback, queue_size=1)
        rospy.Subscriber("/pedsim_simulator/simulated_agents", AgentStates,
                         self.agents_callback, queue_size=1)
        rospy.Subscriber("move_base_flex/NavfnROS/plan", NavPath, self.path_callback, queue_size=1)

    def clear(self, reason):
        super().clear(reason)
        self.scan_at = self.agents_at = 0.0
        self.scan_points, self.agents = [], []
        self.global_points, self.path_at = [], 0.0

    def path_callback(self, msg):
        with self.lock:
            if self.resetting or not msg.poses:
                return
            try:
                tx, ty, angle = self.transform(msg.header)
            except tf2_ros.TransformException:
                return
            c, s = math.cos(angle), math.sin(angle)
            points = [(tx + c * p.pose.position.x - s * p.pose.position.y,
                       ty + s * p.pose.position.x + c * p.pose.position.y) for p in msg.poses]
            if all(math.isfinite(v) for p in points for v in p):
                self.global_points, self.path_at = points, time.monotonic()

    def uses_path(self):
        return rospy.get_param("/task_generator_server/SCENARIO_file", "") == "cfm_pedestrian.json"

    def local_goal(self):
        nearest = min(range(len(self.global_points)), key=lambda i: math.dist(self.state[:2], self.global_points[i]))
        remaining = self.lookahead_distance
        point = self.global_points[nearest]
        for following in self.global_points[nearest + 1:]:
            distance = math.dist(point, following)
            if distance >= remaining:
                ratio = remaining / distance
                return [point[0] + ratio * (following[0] - point[0]),
                        point[1] + ratio * (following[1] - point[1])]
            remaining -= distance
            point = following
        return list(self.goal)

    def transform(self, header):
        if header.frame_id == self.frame:
            return 0.0, 0.0, 0.0
        t = self.tf.lookup_transform(self.frame, header.frame_id, header.stamp,
                                     rospy.Duration(0.03)).transform
        return t.translation.x, t.translation.y, yaw(t.rotation)

    def scan_callback(self, msg):
        with self.lock:
            age = (rospy.Time.now() - msg.header.stamp).to_sec()
            if self.resetting or not 0 <= age < 0.5:
                return
            if not msg.ranges or not any(not math.isnan(r) and r >= msg.range_min for r in msg.ranges):
                self.scan_at = 0.0
                return
            try:
                x, y, angle = self.transform(msg.header)
            except tf2_ros.TransformException:
                return
            points, cells = [], set()
            valid_ranges = []
            for i, distance in enumerate(msg.ranges):
                if not math.isfinite(distance) or not msg.range_min < distance < min(msg.range_max - 0.02, 2.5):
                    continue
                valid_ranges.append(distance)
                bearing = angle + msg.angle_min + i * msg.angle_increment
                px, py = x + distance * math.cos(bearing), y + distance * math.sin(bearing)
                cell = (round(px / 0.15), round(py / 0.15))
                if cell not in cells:
                    cells.add(cell)
                    points.append((distance, px, py))
            points.sort()
            self.scan_points = [(px, py) for _, px, py in points[:32]]
            self.nearest_scan = min(valid_ranges, default=float("inf"))
            self.scan_at, self.scan_stamp = time.monotonic(), msg.header.stamp.to_sec()

    def agents_callback(self, msg):
        with self.lock:
            age = (rospy.Time.now() - msg.header.stamp).to_sec()
            if self.resetting or not 0 <= age < 0.5:
                return
            try:
                tx, ty, angle = self.transform(msg.header)
            except tf2_ros.TransformException:
                return
            c, s = math.cos(angle), math.sin(angle)
            agents = []
            for agent in msg.agent_states:
                p, v = agent.pose.position, agent.twist.linear
                values = (tx + c * p.x - s * p.y, ty + s * p.x + c * p.y,
                          c * v.x - s * v.y, s * v.x + c * v.y)
                if not all(math.isfinite(a) for a in values):
                    self.agents_at = 0.0
                    return
                if self.state is None or math.dist(values[:2], self.state[:2]) < 4:
                    agents.append(values)
            self.agents = agents[:16]
            self.agents_at, self.agents_stamp = time.monotonic(), msg.header.stamp.to_sec()

    def tracks(self):
        radius = 0.8 + self.max_speed * 0.3
        result = [(x, y, vx, vy, radius, self.agents_stamp) for x, y, vx, vy in self.agents]
        for x, y in self.scan_points:
            # Pedestrian scan returns are represented by moving agent tracks.
            # The existing person model has a 0.7 m visual/sensor halo in
            # addition to its 0.3 m legs. Represent the whole moving person
            # once, rather than freezing its halo into static scan points.
            if not any(math.hypot(x - a[0], y - a[1]) < 0.75 for a in self.agents):
                result.append((x, y, 0, 0, 0.35, self.scan_stamp))
        return result

    def clearance_ok(self):
        if self.state is None:
            return False
        linear, lateral, _ = getattr(self, "planar_velocity", (*getattr(self, "velocity", (0, 0))[:1], 0, 0))
        c, s = math.cos(self.state[2]), math.sin(self.state[2])
        robot_vx, robot_vy = c * linear - s * lateral, s * linear + c * lateral
        for x, y, vx, vy, radius, _ in self.tracks():
            dx, dy = x - self.state[0], y - self.state[1]
            distance = math.hypot(dx, dy)
            if distance == 0:
                return False
            robot_closing = max(0.0, (robot_vx * dx + robot_vy * dy) / distance)
            relative_closing = max(0.0, ((robot_vx - vx) * dx + (robot_vy - vy) * dy) / distance)
            floor = 0.55 if radius >= 0.65 else 0.30
            # RTO's existing velocity response has Kp=5; include stopping
            # travel and one command/observation propagation interval.
            if distance < floor + robot_closing / 5.0 + relative_closing * 0.15:
                return False
        return True

    def goal_ready(self):
        # Kp=5 on both world velocity axes gives stopping travel v/5.
        # Include half a relay tick and target a slightly tighter stop circle
        # so measured settling stays inside the 0.1 m goal tolerance.
        vx, vy, _ = self.planar_velocity
        c, s = math.cos(self.state[2]), math.sin(self.state[2])
        stop = (self.state[0] + (c * vx - s * vy) * 0.225,
                self.state[1] + (s * vx + c * vy) * 0.225)
        return math.dist(stop, self.goal) <= 0.075

    def observations_fresh(self):
        moving_scene = rospy.get_param("/task_generator_server/SCENARIO_file", "") == "cfm_pedestrian.json"
        now = time.monotonic()
        return now - self.scan_at < 0.5 and (not moving_scene or
                                            (now - self.agents_at < 0.5 and bool(self.agents)))

    def enable(self, request):
        with self.lock:
            if not self.observations_fresh():
                return TriggerResponse(False, "Need fresh scan and (for pedestrians) agent observations")
            if not self.clearance_ok():
                return TriggerResponse(False, "Obstacle inside the experiment's stop margin")
            if self.uses_path() and (not self.global_points or time.monotonic() - self.path_at > 2):
                return TriggerResponse(False, "Need a fresh Arena global path")
        return super().enable(request)

    def build_request(self):
        request = super().build_request()
        if self.uses_path():
            request["final_goal"] = request["goal"]
            request["goal"] = self.local_goal()
        tracks = self.tracks()
        stamp = request["stamp"]
        request["obstacles"] = [[x + vx * max(0, stamp - observed),
                                  y + vy * max(0, stamp - observed), vx, vy]
                                 for x, y, vx, vy, _, observed in tracks]
        request["collision_radius"] = 0.8 + self.max_speed * 0.3 if self.agents else 0.4
        request["reverse"] = bool(self.agents)
        request["limits"] = [self.min_speed if self.agents else 0.0, self.max_speed, self.max_turn]
        request["dynamics"] = "rto_response"
        request["velocity"] = list(self.planar_velocity)
        return request

    def accept(self, request, reply):
        super().accept(request, reply)
        if self.plan is not None and self.plan["request_id"] == request["id"]:
            now = rospy.Time.now().to_sec()
            if not self.observations_fresh() or not trajectory_clear(self.plan["states"], self.tracks(), self.plan["stamp"], now):
                self.plan = None
                self.report("unsafe_plan_rejected", obstacle_count=reply.get("obstacle_count"))
            else:
                self.report("obstacle_plan", request_id=request["id"], obstacle_count=reply.get("obstacle_count"),
                            moving_obstacle_count=reply.get("moving_obstacle_count"),
                            collision_radius=reply.get("collision_radius"))

    def step(self):
        with self.lock:
            if self.active:
                if not self.observations_fresh() or not self.clearance_ok():
                    self.clear("obstacle_observations_or_clearance_lost")
                elif self.uses_path() and (not self.global_points or time.monotonic() - self.path_at > 2):
                    self.clear("global_path_lost")
                elif self.plan is not None and not trajectory_clear(
                        self.plan["states"], self.tracks(), self.plan["stamp"], rospy.Time.now().to_sec()):
                    self.plan = None
                    self.report("updated_obstacle_blocks_plan")
        super().step()


if __name__ == "__main__":
    rospy.init_node("cfm_mppi_obstacles")
    bridge = ObstacleBridge()
    while not rospy.is_shutdown():
        bridge.step()
        time.sleep(0.05)
