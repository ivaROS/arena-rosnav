#!/usr/bin/env python3
"""Check delayed sequence alignment, expiry, goal stop, and reset isolation."""
import queue
import threading
import unittest
from unittest.mock import Mock, patch

import rospy
from cfm_mppi_continuous import ContinuousBridge


class ContinuousTests(unittest.TestCase):
    def setUp(self):
        for target, value in [("time.monotonic", 100.5), ("rospy.Time.now", rospy.Time.from_sec(10.5))]:
            p = patch(target, return_value=value)
            p.start()
            self.addCleanup(p.stop)
        self.b = ContinuousBridge.__new__(ContinuousBridge)
        self.b.lock = threading.RLock()
        self.b.requests = queue.Queue(maxsize=1)
        self.b.plan = None
        self.b.epoch, self.b.sequence = 4, 0
        self.b.active = self.b.ready = self.b.busy = True
        self.b.resetting = False
        self.b.state = (5.025, 5.0, 0.0)
        self.b.origin, self.b.goal = (5.0, 5.0, 0.0), (5.6, 5.0)
        self.b.odom_at, self.b.started, self.b.request_at = 100.5, 100.0, 100.0
        self.b.speed = 0.05
        self.b.pub, self.b.status = Mock(), Mock()
        self.request = {"id": 1, "epoch": 4, "state": [5, 5, 0], "goal": [5.6, 5],
                        "stamp": 10.0, "executing": True}
        self.reply = {"ok": True, "id": 1, "epoch": 4, "dt": 0.1,
                      "controls": [[0.05, 0.0] for _ in range(80)],
                      "states": [[5 + 0.005 * i, 5, 0] for i in range(81)]}

    def output(self):
        self.b.step()
        return self.b.pub.publish.call_args[0][0]

    def test_delayed_sequence_skips_elapsed_controls_and_keeps_moving_during_inference(self):
        self.reply["controls"][5] = [0.08, 0.0]
        self.b.accept(self.request, self.reply)
        self.assertIsNotNone(self.b.plan)
        self.assertEqual(self.output().linear.x, 0.08)
        self.assertTrue(self.b.busy)

    def test_startup_begins_at_first_control_after_stationary_wait(self):
        self.request["executing"] = False
        self.b.state = (5, 5, 0)
        self.reply["controls"][0] = [0.07, 0]
        self.b.accept(self.request, self.reply)
        self.assertEqual(self.b.plan["stamp"], 10.5)
        self.assertEqual(self.output().linear.x, 0.07)

    def test_expired_plan_stops_even_when_inference_is_still_busy(self):
        self.b.accept(self.request, self.reply)
        with patch("time.monotonic", return_value=102.1):
            self.b.odom_at = 102.1
            self.assertEqual(self.output().linear.x, 0)
            self.assertIsNone(self.b.plan)

    def test_goal_reached_stops_and_requires_new_enable(self):
        self.b.accept(self.request, self.reply)
        self.b.state = (5.52, 5, 0)
        self.assertEqual(self.output().linear.x, 0)
        self.assertFalse(self.b.active)
        self.assertIsNone(self.b.plan)

    def test_reset_discards_old_sequence(self):
        self.b.accept(self.request, self.reply)
        self.b.reset_start(None)
        self.b.reset_end(None)
        self.b.accept(self.request, self.reply)
        self.assertIsNone(self.b.plan)
        self.assertFalse(self.b.active)
        self.assertEqual(self.output().linear.x, 0)

    def test_stale_or_mismatching_prediction_is_not_accepted(self):
        self.b.state = (5.3, 5, 0)
        self.b.accept(self.request, self.reply)
        self.assertIsNone(self.b.plan)
        self.b.state = (5.025, 5, 0)
        with patch("time.monotonic", return_value=102.1):
            self.b.odom_at = 102.1
            self.b.accept(self.request, self.reply)
        self.assertIsNone(self.b.plan)

    def test_out_of_range_controls_disable_the_test(self):
        self.reply["controls"][50] = [0.2, 0]
        self.b.accept(self.request, self.reply)
        self.assertFalse(self.b.active)
        self.assertIsNone(self.b.plan)

    def test_float32_limit_rounding_is_accepted_and_clamped_exactly(self):
        self.reply["controls"][5] = [0.10000000149011612, -0.30000001192092896]
        self.b.accept(self.request, self.reply)
        self.assertIsNotNone(self.b.plan)
        command = self.output()
        self.assertEqual(command.linear.x, 0.1)
        self.assertEqual(command.angular.z, -0.3)

    def test_tracking_recovery_stops_and_replans_without_reset_resumption(self):
        self.b.recover_tracking = True
        self.b.accept(self.request, self.reply)
        self.b.state = (5.2, 5, 0)
        self.assertEqual(self.output().linear.x, 0)
        self.assertIsNone(self.b.plan)
        self.assertTrue(self.b.active)
        self.b.reset_start(None)
        self.assertFalse(self.b.active)


if __name__ == "__main__":
    unittest.main()
