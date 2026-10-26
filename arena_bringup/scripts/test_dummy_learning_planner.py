#!/usr/bin/env python3
"""Safety regression checks; run with the sourced ROS Python environment."""
import unittest
from unittest.mock import Mock, patch

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

from dummy_learning_planner import DummyPlanner
from dummy_cmd_vel_relay import GuardedRelay


class SafetyTests(unittest.TestCase):
    def setUp(self):
        for name in ("Publisher", "Subscriber", "Service", "on_shutdown", "loginfo"):
            p = patch.object(rospy, name)
            p.start()
            self.addCleanup(p.stop)
        for target, value in (("rospy.get_namespace", "/rto/"),
                              ("rospy.Time.now", rospy.Time(10)),
                              ("time.monotonic", 100.0)):
            p = patch(target, return_value=value)
            p.start()
            self.addCleanup(p.stop)
        self.planner = DummyPlanner()
        self.planner.pub = Mock()
        self.planner.pub.get_num_connections.return_value = 2
        self.relay = GuardedRelay()
        self.relay.pub = Mock()

    def odom(self, stamp=10, x=1.0):
        msg = Odometry()
        msg.header.stamp = rospy.Time.from_sec(stamp)
        msg.pose.pose.position.x = x
        with patch("rospy.Time.now", return_value=rospy.Time.from_sec(max(10, stamp))):
            self.planner.odometry(msg)

    def output(self, node):
        node.step()
        return node.pub.publish.call_args[0][0].linear.x

    def test_deliberate_enable_and_both_motion_bounds(self):
        self.assertFalse(self.planner.enable(None).success)
        self.odom()
        self.assertEqual(self.output(self.planner), 0)
        self.assertTrue(self.planner.enable(None).success)
        self.assertEqual(self.output(self.planner), 0.1)
        self.odom(10.01, 1.19)
        self.assertEqual(self.output(self.planner), 0)
        self.assertTrue(self.planner.enable(None).success)
        with patch("time.monotonic", return_value=102.01):
            self.assertEqual(self.output(self.planner), 0)

    def test_reset_requires_new_odometry_and_explicit_enable(self):
        self.odom()
        self.planner.enable(None)
        self.planner.reset_start(None)
        self.assertEqual(self.output(self.planner), 0)
        self.assertFalse(self.planner.enable(None).success)
        self.planner.reset_end(None)
        self.odom(9.9)  # queued pre-reset sample
        self.assertFalse(self.planner.enable(None).success)
        self.odom(10.01)
        self.assertEqual(self.output(self.planner), 0)
        self.assertTrue(self.planner.enable(None).success)
        self.planner.scenario_reset(None)
        self.assertEqual(self.output(self.planner), 0)
        self.assertFalse(self.planner.enable(None).success)

    def test_missing_odometry_stops_motion(self):
        self.odom()
        self.planner.enable(None)
        with patch("time.monotonic", return_value=100.6):
            self.assertEqual(self.output(self.planner), 0)

    def test_relay_blocks_cached_mbf_command_after_planner_death(self):
        command = Twist()
        command.linear.x = 0.1
        self.relay.learned_command(command)
        self.relay.mbf_command(command)
        self.assertEqual(self.output(self.relay), 0.1)
        with patch("time.monotonic", return_value=100.36):
            self.relay.mbf_command(command)  # MBF keeps replaying cached command
            self.assertEqual(self.output(self.relay), 0)

    def test_relay_zero_and_reset_override_mbf(self):
        command = Twist()
        command.linear.x = 0.1
        self.relay.learned_command(command)
        self.relay.mbf_command(command)
        self.relay.learned_command(Twist())
        self.assertEqual(self.output(self.relay), 0)
        self.relay.learned_command(command)
        self.relay.reset_start(None)
        self.relay.learned_command(command)
        self.relay.mbf_command(command)
        self.assertEqual(self.output(self.relay), 0)
        self.relay.reset_end(None)
        self.assertEqual(self.output(self.relay), 0)


if __name__ == "__main__":
    unittest.main()
