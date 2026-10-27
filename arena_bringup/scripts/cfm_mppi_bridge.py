#!/usr/bin/env python3
"""Bounded empty-scene CFM experiment using an independent inference process."""
import json
import math
import os
import queue
import subprocess
import threading
import time

import rospy
import tf2_ros
from geometry_msgs.msg import PoseStamped, Twist
from nav_msgs.msg import Odometry
from std_msgs.msg import Empty, Int16, String
from std_srvs.srv import Trigger, TriggerResponse


def yaw(q):
    return math.atan2(2 * (q.w * q.z + q.x * q.y), 1 - 2 * (q.y * q.y + q.z * q.z))


class CFMBridge:
    def __init__(self):
        if rospy.get_namespace() != "/rto/":
            raise RuntimeError("The shared MBF adapter requires /rto/")
        self.lock = threading.RLock()
        self.requests = queue.Queue(maxsize=1)
        self.epoch = self.sequence = 0
        self.active = self.resetting = self.ready = self.busy = self.closed = False
        self.state = self.goal = self.origin = None
        self.velocity = (0.0, 0.0)
        self.planar_velocity = (0.0, 0.0, 0.0)
        self.odom_at = self.odom_stamp = self.started = self.action_until = 0.0
        self.speed = float("inf")
        self.action = (0.0, 0.0)
        self.request_at = 0.0
        self.frame = "map"
        self.tf = tf2_ros.Buffer()
        self.listener = tf2_ros.TransformListener(self.tf)
        self.pub = rospy.Publisher("learned_cmd_vel", Twist, queue_size=1)
        self.status = rospy.Publisher("~status", String, queue_size=1, latch=True)
        rospy.Subscriber("odom", Odometry, self.odometry, queue_size=1)
        rospy.Subscriber("move_base_simple/goal", PoseStamped, self.goal_callback, queue_size=1)
        rospy.Subscriber("/reset_start", Empty, self.reset_start, queue_size=1)
        rospy.Subscriber("/reset_end", Empty, self.reset_end, queue_size=1)
        rospy.Subscriber("/scenario_reset", Int16, self.scenario_reset, queue_size=1)
        self.enable_service = rospy.Service("~enable", Trigger, self.enable)
        self.stop_service = rospy.Service("~stop", Trigger, self.stop)
        self.repo = rospy.get_param("~cfm_repo", "/home/azaro/cfm_mppi")
        python = rospy.get_param("~cfm_python", "/home/azaro/miniconda3/envs/cfm_mppi/bin/python")
        env = os.environ.copy()
        env.pop("PYTHONPATH", None)
        env.pop("PYTHONHOME", None)
        self.process = subprocess.Popen(
            [python, "-u", "-B", "-m", "cfm_mppi.evaluation.arena_worker",
             "--device", rospy.get_param("~device", "cpu"),
             "--samples", str(rospy.get_param("~samples", 20))],
            cwd=self.repo, env=env, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
            text=True, bufsize=1,
        )
        rospy.on_shutdown(self.shutdown)
        threading.Thread(target=self.inference_loop, daemon=True).start()
        self.report("loading")

    def report(self, event, **extra):
        self.status.publish(String(data=json.dumps({"event": event, "epoch": self.epoch, **extra})))

    def map_pose(self, pose, header):
        angle = yaw(pose.orientation)
        x, y = pose.position.x, pose.position.y
        if header.frame_id != self.frame:
            transform = self.tf.lookup_transform(self.frame, header.frame_id, header.stamp,
                                                 rospy.Duration(0.03)).transform
            rotation = yaw(transform.rotation)
            x, y = (transform.translation.x + math.cos(rotation) * x - math.sin(rotation) * y,
                    transform.translation.y + math.sin(rotation) * x + math.cos(rotation) * y)
            angle += rotation
        values = (x, y, math.atan2(math.sin(angle), math.cos(angle)))
        if not all(math.isfinite(v) for v in values):
            raise ValueError("Non-finite pose")
        return values

    def odometry(self, msg):
        with self.lock:
            stamp = msg.header.stamp.to_sec()
            age = (rospy.Time.now() - msg.header.stamp).to_sec()
            if self.resetting or stamp <= self.odom_stamp or not 0 <= age < 0.5:
                return
            try:
                state = self.map_pose(msg.pose.pose, msg.header)
            except (tf2_ros.TransformException, ValueError):
                return
            v = msg.twist.twist
            speed = max(math.hypot(v.linear.x, v.linear.y), abs(v.angular.z))
            if not math.isfinite(speed):
                return
            self.state, self.speed = state, speed
            self.velocity = (v.linear.x, v.angular.z)
            self.planar_velocity = (v.linear.x, v.linear.y, v.angular.z)
            self.odom_at, self.odom_stamp = time.monotonic(), stamp

    def goal_callback(self, msg):
        with self.lock:
            if self.resetting:
                return
            try:
                goal = self.map_pose(msg.pose, msg.header)[:2]
            except (tf2_ros.TransformException, ValueError):
                return
            if self.goal is not None and math.dist(goal, self.goal) > 0.01:
                self.clear("goal_changed")
            self.goal = goal

    def clear(self, reason):
        self.epoch += 1
        self.active = False
        self.action_until = 0.0
        self.action = (0.0, 0.0)
        self.origin = None
        self.pub.publish(Twist())
        self.report(reason)

    def reset_start(self, _):
        with self.lock:
            self.resetting = True
            self.clear("reset_start")
            self.state = self.goal = None
            self.odom_stamp = rospy.Time.now().to_sec()

    def reset_end(self, _):
        with self.lock:
            self.clear("reset_end")
            self.resetting = False
            self.state = self.goal = None
            self.odom_stamp = rospy.Time.now().to_sec()

    def scenario_reset(self, _):
        with self.lock:
            self.clear("scenario_reset")
            self.state = self.goal = None
            self.odom_stamp = rospy.Time.now().to_sec()

    def enable(self, _):
        with self.lock:
            if (rospy.get_param("/map_file", "") != "map_empty" or
                    rospy.get_param("/task_generator_server/SCENARIO_file", "") != "dummy_motion.json" or
                    rospy.get_param("/tm_obstacles", "") != "scenario"):
                return TriggerResponse(False, "This bridge requires the supplied empty dummy_motion scenario")
            if self.active or self.resetting or self.busy or not self.ready:
                return TriggerResponse(False, "Planner is active, loading, busy, or resetting")
            if self.state is None or self.goal is None or time.monotonic() - self.odom_at > 0.5:
                return TriggerResponse(False, "Need fresh odometry and an Arena goal")
            self.origin = self.state
            self.started = time.monotonic()
            self.active = True
            self.report("enabled", origin=self.origin, goal=self.goal)
            return TriggerResponse(True, "Enabled bounded CFM test: <=0.18 m or 30 wall seconds")

    def stop(self, _):
        with self.lock:
            self.clear("stopped")
        return TriggerResponse(True, "Stopped; enable required to resume")

    def accept(self, request, reply):
        now = time.monotonic()
        if not self.active or request["epoch"] != self.epoch:
            self.report("discarded", reason="inactive_or_reset")
            return
        action = reply.get("action", [])
        unchanged = (self.state is not None and self.goal is not None
                     and math.dist(self.state[:2], request["state"][:2]) <= 0.03
                     and abs(math.atan2(math.sin(self.state[2] - request["state"][2]),
                                       math.cos(self.state[2] - request["state"][2]))) <= 0.1
                     and math.dist(self.goal, request["goal"]) <= 0.01)
        if (not reply.get("ok") or reply.get("id") != request["id"]
                or reply.get("epoch") != self.epoch or len(action) != 2
                or not all(math.isfinite(v) for v in action)
                or now - self.request_at > 10 or now - self.odom_at > 0.5 or not unchanged):
            self.clear("invalid_or_stale_result")
            return
        self.action = (max(-0.1, min(0.1, action[0])), max(-0.3, min(0.3, action[1])))
        self.action_until = now + 0.2
        self.report("result", request_id=request["id"], raw_action=action,
                    action=self.action, inference_seconds=reply.get("inference_seconds"))

    def inference_loop(self):
        try:
            hello = json.loads(self.process.stdout.readline())
            if not hello.get("ready"):
                raise RuntimeError("Inference worker did not become ready")
            with self.lock:
                self.ready = True
                self.report("ready", device=hello.get("device"))
            while not self.closed:
                try:
                    request = self.requests.get(timeout=0.2)
                except queue.Empty:
                    if self.process.poll() is not None:
                        raise RuntimeError("Inference worker exited")
                    continue
                self.process.stdin.write(json.dumps(request) + "\n")
                self.process.stdin.flush()
                reply = json.loads(self.process.stdout.readline())
                with self.lock:
                    self.busy = False
                    self.accept(request, reply)
        except Exception as exc:
            with self.lock:
                self.ready = self.busy = False
                if not self.closed:
                    self.clear("worker_error")
                    rospy.logerr("CFM worker: %s", exc)

    def step(self):
        with self.lock:
            now = time.monotonic()
            command = Twist()
            if self.active:
                distance = math.dist(self.state[:2], self.origin[:2]) if self.state else 0.0
                if (self.state is None or now - self.odom_at > 0.5 or distance >= 0.18
                        or now - self.started >= 30 or not self.ready):
                    self.clear("test_finished")
                elif self.busy and now - self.request_at > 10:
                    self.clear("inference_timeout")
                elif now < self.action_until:
                    command.linear.x, command.angular.z = self.action
                elif not self.busy and self.speed < 0.02:
                    self.sequence += 1
                    self.busy = True
                    self.request_at = now
                    self.requests.put_nowait({"id": self.sequence, "epoch": self.epoch,
                                             "state": list(self.state), "goal": list(self.goal)})
                    self.report("planning", request_id=self.sequence)
            self.pub.publish(command)

    def shutdown(self):
        with self.lock:
            self.closed = True
            self.clear("shutdown")
        self.process.terminate()
        try:
            self.process.wait(timeout=2)
        except subprocess.TimeoutExpired:
            self.process.kill()
            self.process.wait()


if __name__ == "__main__":
    rospy.init_node("cfm_mppi_bridge")
    bridge = CFMBridge()
    while not rospy.is_shutdown():
        bridge.step()
        time.sleep(0.05)
