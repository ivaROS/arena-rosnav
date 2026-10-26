#!/usr/bin/env python3
"""One explicitly armed, bounded forward-motion test through the MBF adapter."""
import math
import threading
import time

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from std_msgs.msg import Empty, Int16
from std_srvs.srv import Trigger, TriggerResponse


class DummyPlanner:
    def __init__(self):
        if rospy.get_namespace() != "/rto/":
            raise RuntimeError("The existing MBF adapter requires namespace /rto")
        self.lock = threading.RLock()
        self.position = None
        self.odom_time = 0.0
        self.odom_stamp = rospy.Time(0)
        self.active = False
        self.resetting = False
        self.origin = None
        self.started = 0.0
        self.pub = rospy.Publisher("learned_cmd_vel", Twist, queue_size=1)
        rospy.Subscriber("odom", Odometry, self.odometry, queue_size=1)
        rospy.Subscriber("/reset_start", Empty, self.reset_start, queue_size=1)
        rospy.Subscriber("/reset_end", Empty, self.reset_end, queue_size=1)
        rospy.Subscriber("/scenario_reset", Int16, self.scenario_reset, queue_size=1)
        self.enable_service = rospy.Service("~enable", Trigger, self.enable)
        rospy.on_shutdown(self.shutdown)
        rospy.loginfo("Dummy planner disabled; call ~enable for a 0.1 m/s test")

    def odometry(self, msg):
        with self.lock:
            p = msg.pose.pose.position
            age = (rospy.Time.now() - msg.header.stamp).to_sec()
            if (not self.resetting and 0 <= age < 0.5
                    and msg.header.stamp > self.odom_stamp
                    and all(math.isfinite(v) for v in (p.x, p.y))):
                self.position = (p.x, p.y)
                self.odom_time = time.monotonic()
                self.odom_stamp = msg.header.stamp

    def clear(self):
        self.active = False
        self.origin = None
        self.position = None
        self.odom_time = 0.0
        self.odom_stamp = rospy.Time.now()
        self.pub.publish(Twist())

    def reset_start(self, _):
        with self.lock:
            self.resetting = True
            self.clear()

    def reset_end(self, _):
        with self.lock:
            self.clear()
            self.resetting = False

    def scenario_reset(self, _):
        with self.lock:
            self.clear()

    def enable(self, _):
        with self.lock:
            if self.active:
                return TriggerResponse(False, "Test already running")
            if self.resetting or self.position is None or time.monotonic() - self.odom_time > 0.5:
                return TriggerResponse(False, "Need fresh odometry after reset")
            if not self.pub.get_num_connections():
                return TriggerResponse(False, "No learned-command subscriber")
            self.origin = self.position
            self.started = time.monotonic()
            self.active = True
            rospy.loginfo("Dummy test enabled at x=%.6f y=%.6f", *self.origin)
            return TriggerResponse(True, "Enabled: stop at 0.18 m or 2 wall seconds")

    def step(self):
        with self.lock:
            cmd = Twist()
            if self.active:
                distance = math.hypot(self.position[0] - self.origin[0],
                                      self.position[1] - self.origin[1])
                now = time.monotonic()
                if distance >= 0.18 or now - self.started >= 2.0 or now - self.odom_time > 0.5:
                    rospy.loginfo("Dummy test stopped: displacement=%.6f m, x=%.6f y=%.6f",
                                  distance, *self.position)
                    self.active = False
                else:
                    cmd.linear.x = 0.1
            self.pub.publish(cmd)

    def shutdown(self):
        with self.lock:
            self.active = False
            for _ in range(3):
                self.pub.publish(Twist())
                time.sleep(0.02)


if __name__ == "__main__":
    rospy.init_node("dummy_learning_planner")
    planner = DummyPlanner()
    # Wall time keeps the stop deadline working even if simulation time pauses.
    while not rospy.is_shutdown():
        planner.step()
        time.sleep(0.1)
