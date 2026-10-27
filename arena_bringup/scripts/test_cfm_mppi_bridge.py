#!/usr/bin/env python3
"""State and command-safety checks without a ROS master or an ML process."""
import queue
import threading
import unittest
from unittest.mock import Mock, patch

import rospy
from geometry_msgs.msg import Twist

from cfm_cmd_vel_relay import CFMRelay
from cfm_mppi_bridge import CFMBridge


class BridgeTests(unittest.TestCase):
    def setUp(self):
        self.clock = patch("time.monotonic", return_value=100.0)
        self.clock.start()
        self.addCleanup(self.clock.stop)
        self.prepare_bridge()

    def prepare_bridge(self):
        self.b = CFMBridge.__new__(CFMBridge)
        self.b.lock = threading.RLock()
        self.b.requests = queue.Queue(maxsize=1)
        self.b.epoch, self.b.sequence = 2, 0
        self.b.active, self.b.ready = True, True
        self.b.resetting = self.b.busy = False
        self.b.state, self.b.origin = (5.0, 5.0, 0.0), (5.0, 5.0, 0.0)
        self.b.goal = (10.0, 5.0)
        self.b.odom_at = self.b.started = self.b.request_at = 100.0
        self.b.action_until = 0.0
        self.b.speed = 0.0
        self.b.action = (0.0, 0.0)
        self.b.pub, self.b.status = Mock(), Mock()
        self.request = {"id": 1, "epoch": 2, "state": [5, 5, 0], "goal": [10, 5]}
        self.reply = {"ok": True, "id": 1, "epoch": 2, "action": [1.2, -1.8]}

    def test_publishes_zero_during_inference_then_bounded_pulse(self):
        self.b.step()
        self.assertTrue(self.b.busy)
        self.assertEqual(self.b.pub.publish.call_args[0][0].linear.x, 0)
        self.b.accept(self.request, self.reply)
        self.assertEqual(self.b.action, (0.1, -0.3))
        self.b.busy = False
        self.b.step()
        self.assertEqual(self.b.pub.publish.call_args[0][0].linear.x, 0.1)
        with patch("time.monotonic", return_value=100.21):
            self.b.speed = 0.1  # settling; no new request yet
            self.b.step()
        self.assertEqual(self.b.pub.publish.call_args[0][0].linear.x, 0)

    def test_reset_discards_inflight_result_and_requires_reenable(self):
        with patch("rospy.Time.now", return_value=rospy.Time(10)):
            self.b.reset_start(None)
            self.b.accept(self.request, self.reply)
            self.b.reset_end(None)
        self.assertFalse(self.b.active)
        self.assertIsNone(self.b.state)
        self.assertIsNone(self.b.goal)
        self.assertEqual(self.b.action_until, 0)
        self.assertEqual(self.b.odom_stamp, 10)

    def test_moved_robot_stale_odom_and_bad_results_stop(self):
        for mutation in ("moved", "old_odom", "wrong_id", "wrong_epoch", "nan", "error"):
            with self.subTest(mutation=mutation):
                self.prepare_bridge()
                reply = dict(self.reply)
                if mutation == "moved":
                    self.b.state = (5.1, 5.0, 0.0)
                elif mutation == "old_odom":
                    self.b.odom_at = 99.0
                elif mutation == "wrong_id":
                    reply["id"] = 5
                elif mutation == "wrong_epoch":
                    reply["epoch"] = 1
                elif mutation == "nan":
                    reply["action"] = [float("nan"), 0]
                else:
                    reply["ok"] = False
                self.b.accept(self.request, reply)
                self.assertFalse(self.b.active)
                self.assertEqual(self.b.action_until, 0)

    def test_distance_and_inference_timeout_stop(self):
        self.b.state = (5.19, 5, 0)
        self.b.step()
        self.assertFalse(self.b.active)
        self.b.active = self.b.busy = True
        self.b.state = (5, 5, 0)
        self.b.origin = self.b.state
        self.b.request_at = 80
        self.b.step()
        self.assertFalse(self.b.active)


class RelayTests(unittest.TestCase):
    def test_stale_mismatched_and_unbounded_commands_are_masked(self):
        patches = [patch.object(rospy, name) for name in ("Publisher", "Subscriber", "on_shutdown")]
        for p in patches:
            p.start()
            self.addCleanup(p.stop)
        parameter = patch.object(rospy, "get_param", side_effect=lambda name, default: default)
        parameter.start()
        self.addCleanup(parameter.stop)
        relay = CFMRelay()
        relay.pub = Mock()
        action = Twist()
        action.linear.x, action.angular.z = 0.08, -0.2
        with patch("time.monotonic", return_value=100):
            relay.learned_command(action)
            relay.mbf_command(action)
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0.08)
        with patch("time.monotonic", return_value=100.36):
            relay.mbf_command(action)  # MBF still replays its cached value
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0)
            relay.learned_command(Twist())
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0)
            action.linear.x = 0.11
            relay.learned_command(action)
            relay.mbf_command(action)
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0)

    def test_sequence_mode_forwards_mbf_during_updates_but_zero_still_stops(self):
        with patch.object(rospy, "Publisher"), patch.object(rospy, "Subscriber"), \
                patch.object(rospy, "on_shutdown"), patch.object(rospy, "get_param", side_effect=lambda name, default: False if name.endswith("match_latest") else default), \
                patch("time.monotonic", return_value=100):
            relay = CFMRelay()
            relay.pub = Mock()
            old, latest = Twist(), Twist()
            old.linear.x, latest.linear.x = 0.08, 0.05
            relay.mbf_command(old)
            relay.learned_command(latest)
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0.08)
            relay.learned_command(Twist())
            relay.step()
            self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0)
            relay.learned_command(latest)
            with patch("time.monotonic", return_value=100.36):
                relay.mbf_command(old)
                relay.step()
                self.assertEqual(relay.pub.publish.call_args[0][0].linear.x, 0)


if __name__ == "__main__":
    unittest.main()
