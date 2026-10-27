#!/usr/bin/env python3
"""Asynchronous, time-indexed CFM plans for the supplied empty navigation scene."""
import math
from pathlib import Path
import sys
import time

# Catkin's devel executables are generated script relays; import the shared
# bridge from the actual scripts directory rather than importing a relay.
sys.path.insert(0, str(Path(__file__).resolve().parent))
import rospy
from geometry_msgs.msg import Twist
from std_srvs.srv import TriggerResponse
from cfm_mppi_bridge import CFMBridge


def angle_error(a, b):
    return abs(math.atan2(math.sin(a - b), math.cos(a - b)))


class ContinuousBridge(CFMBridge):
    scenarios = ("cfm_navigation.json",)
    max_seconds = 120
    max_displacement = 2
    min_speed = 0.0
    max_speed = 0.1
    max_turn = 0.3
    recover_tracking = False

    def __init__(self):
        self.plan = None
        super().__init__()

    def clear(self, reason):
        self.plan = None
        super().clear(reason)

    def enable(self, _):
        with self.lock:
            if (rospy.get_param("/map_file", "") != "map_empty" or
                    rospy.get_param("/task_generator_server/SCENARIO_file", "") not in self.scenarios or
                    rospy.get_param("/tm_obstacles", "") != "scenario"):
                return TriggerResponse(False, "Requires one of the supplied scenarios: " + ", ".join(self.scenarios))
            if self.active or self.resetting or self.busy or not self.ready:
                return TriggerResponse(False, "Planner is active, loading, busy, or resetting")
            if self.state is None or self.goal is None or time.monotonic() - self.odom_at > 0.5:
                return TriggerResponse(False, "Need fresh odometry and an Arena goal")
            self.plan = None
            self.origin = self.state
            self.started = time.monotonic()
            self.active = True
            self.report("enabled", origin=self.origin, goal=self.goal, continuous=True)
            return TriggerResponse(True, "Enabled navigation; 0.1 m goal tolerance, %s s limit" % self.max_seconds)

    def build_request(self):
        return {"id": self.sequence, "epoch": self.epoch, "state": list(self.state),
                "goal": list(self.goal), "sequence": True, "stamp": self.odom_stamp,
                "executing": self.plan is not None}

    def goal_ready(self):
        return math.dist(self.state[:2], self.goal) <= 0.1

    def accept(self, request, reply):
        now = time.monotonic()
        if not self.active or request["epoch"] != self.epoch:
            self.report("discarded", reason="inactive_or_reset")
            return
        controls, states = reply.get("controls", []), reply.get("states", [])
        valid = (reply.get("ok") and reply.get("id") == request["id"]
                 and reply.get("epoch") == self.epoch and reply.get("dt") == 0.1
                 and len(controls) == 80 and len(states) == 81)
        if valid:
            valid = (all(len(u) == 2 and all(math.isfinite(v) for v in u)
                         and self.min_speed - 1e-6 <= u[0] <= self.max_speed + 1e-6 and abs(u[1]) <= self.max_turn + 1e-6
                         for u in controls)
                     and all(len(s) == 3 and all(math.isfinite(v) for v in s) for s in states))
        if not valid:
            self.clear("invalid_result")
            return
        # Float32 MPPI limits such as 0.3 can arrive as 0.3000000119.
        # Accept rounding error, then publish exact configured bounds.
        controls = [[max(self.min_speed, min(self.max_speed, u[0])), max(-self.max_turn, min(self.max_turn, u[1]))] for u in controls]
        if now - self.request_at >= 2 or now - self.odom_at > 0.5:
            self.report("discarded", reason="stale_result")
            return
        sim_now = rospy.Time.now().to_sec()
        # At startup the robot waited at rest, so begin the returned sequence
        # now. During playback, skip the portion elapsed since observation.
        start_stamp = request["stamp"] if request["executing"] else sim_now
        age = sim_now - start_stamp
        index = int(age / 0.1) if age >= 0 else -1
        if (not 0 <= index < 80 or self.state is None or self.goal is None
                or math.dist(self.goal, request.get("final_goal", request["goal"])) > 0.01
                or math.dist(self.state[:2], states[index][:2]) > 0.08
                or angle_error(self.state[2], states[index][2]) > 0.3):
            self.report("discarded", reason="prediction_mismatch")
            return
        self.plan = {"controls": controls, "states": states, "stamp": start_stamp,
                     "expires": self.request_at + 2.0, "request_id": request["id"]}
        self.report("plan", request_id=request["id"], skipped_steps=index,
                    inference_seconds=reply.get("inference_seconds"))

    def step(self):
        with self.lock:
            now = time.monotonic()
            command = Twist()
            if self.active:
                if self.state is None or self.goal is None or now - self.odom_at > 0.5 or not self.ready:
                    self.clear("observations_or_worker_lost")
                elif self.goal_ready():
                    self.clear("goal_reached")
                elif now - self.started >= self.max_seconds or math.dist(self.state[:2], self.origin[:2]) >= self.max_displacement:
                    self.clear("test_limit")
                else:
                    if self.plan is not None:
                        age = rospy.Time.now().to_sec() - self.plan["stamp"]
                        index = int(age / 0.1) if age >= 0 else -1
                        if now >= self.plan["expires"] or not 0 <= index < 80:
                            self.plan = None
                            self.report("plan_expired")
                        elif (math.dist(self.state[:2], self.plan["states"][index][:2]) > 0.1
                              or angle_error(self.state[2], self.plan["states"][index][2]) > 0.4):
                            self.report("tracking_error_details",
                                        position_error=math.dist(self.state[:2], self.plan["states"][index][:2]),
                                        heading_error=angle_error(self.state[2], self.plan["states"][index][2]))
                            if self.recover_tracking:
                                self.plan = None
                                self.report("tracking_replan")
                            else:
                                self.clear("tracking_error")
                        else:
                            command.linear.x, command.angular.z = self.plan["controls"][index]
                    if self.active and not self.busy and (self.plan is not None or self.speed < 0.02):
                        self.sequence += 1
                        self.busy = True
                        self.request_at = now
                        self.requests.put_nowait(self.build_request())
                        self.report("planning", request_id=self.sequence, executing=self.plan is not None)
                    elif self.busy and now - self.request_at > 10:
                        self.clear("inference_timeout")
            self.pub.publish(command)


if __name__ == "__main__":
    rospy.init_node("cfm_mppi_continuous")
    bridge = ContinuousBridge()
    while not rospy.is_shutdown():
        bridge.step()
        time.sleep(0.05)
