#!/usr/bin/env python3
"""Forward fresh, matching MBF commands within the CFM experiment's limits."""
import math
import threading
import time

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty, Int16


def bounded(command, max_linear=0.1, max_angular=0.3):
    values = (command.linear.x, command.linear.y, command.linear.z,
              command.angular.x, command.angular.y, command.angular.z)
    return (all(math.isfinite(v) for v in values)
            and abs(command.linear.x) <= max_linear + 1e-8
            and abs(command.angular.z) <= max_angular + 1e-8
            and all(abs(v) < 1e-8 for v in values[1:5]))


class CFMRelay:
    def __init__(self):
        self.lock = threading.RLock()
        self.resetting = False
        self.match_latest = rospy.get_param("~match_latest", True)
        self.max_linear = float(rospy.get_param("~max_linear", 0.1))
        self.max_angular = float(rospy.get_param("~max_angular", 0.3))
        self.learned, self.command = Twist(), Twist()
        self.learned_at = self.command_at = 0.0
        self.pub = rospy.Publisher("cmd_vel", Twist, queue_size=1)
        rospy.Subscriber("learned_cmd_vel", Twist, self.learned_command, queue_size=1)
        rospy.Subscriber("cmd_vel_internal", Twist, self.mbf_command, queue_size=1)
        rospy.Subscriber("/reset_start", Empty, self.reset_start, queue_size=1)
        rospy.Subscriber("/reset_end", Empty, self.reset_end, queue_size=1)
        rospy.Subscriber("/scenario_reset", Int16, self.scenario_reset, queue_size=1)
        rospy.on_shutdown(self.shutdown)

    def learned_command(self, message):
        with self.lock:
            if not self.resetting:
                self.learned, self.learned_at = message, time.monotonic()

    def mbf_command(self, message):
        with self.lock:
            if not self.resetting:
                self.command, self.command_at = message, time.monotonic()

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
            valid = (not self.resetting and now - self.learned_at < 0.35
                     and now - self.command_at < 0.35
                     and bounded(self.learned, self.max_linear, self.max_angular)
                     and bounded(self.command, self.max_linear, self.max_angular)
                     and ((abs(self.command.linear.x - self.learned.linear.x) < 1e-8
                           and abs(self.command.angular.z - self.learned.angular.z) < 1e-8)
                          if self.match_latest else
                          (abs(self.learned.linear.x) + abs(self.learned.angular.z) > 1e-8)))
            self.pub.publish(self.command if valid else Twist())

    def shutdown(self):
        with self.lock:
            self.resetting = True
            for _ in range(3):
                self.pub.publish(Twist())
                time.sleep(0.02)


if __name__ == "__main__":
    rospy.init_node("cfm_cmd_vel_relay")
    relay = CFMRelay()
    while not rospy.is_shutdown():
        relay.step()
        time.sleep(0.05)
