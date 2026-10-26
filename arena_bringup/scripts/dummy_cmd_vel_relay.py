#!/usr/bin/env python3
"""Relay MBF output, stopping if the independent dummy planner disappears.

The existing C++ adapter caches learned_cmd_vel indefinitely. Only this planner's
launch uses this guard; no shared plugin or other planner is changed.
"""
import threading
import time

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, Int16


class GuardedRelay:
    def __init__(self):
        self.lock = threading.RLock()
        self.resetting = False
        self.learned = Twist()
        self.command = Twist()
        self.learned_at = self.command_at = 0.0
        self.pub = rospy.Publisher("cmd_vel", Twist, queue_size=1)
        rospy.Subscriber("learned_cmd_vel", Twist, self.learned_command, queue_size=1)
        rospy.Subscriber("cmd_vel_internal", Twist, self.mbf_command, queue_size=1)
        rospy.Subscriber("/reset_start", Empty, self.reset_start, queue_size=1)
        rospy.Subscriber("/reset_end", Empty, self.reset_end, queue_size=1)
        rospy.Subscriber("/scenario_reset", Int16, self.scenario_reset, queue_size=1)
        rospy.on_shutdown(self.shutdown)

    def learned_command(self, msg):
        with self.lock:
            if not self.resetting:
                self.learned = msg
                self.learned_at = time.monotonic()

    def mbf_command(self, msg):
        with self.lock:
            if not self.resetting:
                self.command = msg
                self.command_at = time.monotonic()

    def clear(self):
        self.learned_at = self.command_at = 0.0
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

    def step(self):
        with self.lock:
            now = time.monotonic()
            # This guard only permits the dummy's forward command, and only
            # when MBF itself has produced a matching command recently.
            valid = (not self.resetting and now - self.learned_at < 0.35
                     and now - self.command_at < 0.35
                     and self.learned.linear.x == 0.1
                     and self.command.linear.x == 0.1
                     and self.command.linear.y == 0 and self.command.angular.z == 0)
            self.pub.publish(self.command if valid else Twist())

    def shutdown(self):
        with self.lock:
            self.resetting = True
            for _ in range(3):
                self.pub.publish(Twist())
                time.sleep(0.02)


if __name__ == "__main__":
    rospy.init_node("dummy_cmd_vel_relay")
    relay = GuardedRelay()
    while not rospy.is_shutdown():
        relay.step()
        time.sleep(0.05)
