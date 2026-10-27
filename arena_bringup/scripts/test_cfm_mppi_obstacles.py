#!/usr/bin/env python3
"""Observation-frame, freshness, and predicted-clearance regression checks."""
import math
import threading
import unittest
from unittest.mock import Mock, patch

import rospy
from sensor_msgs.msg import LaserScan
from pedsim_msgs.msg import AgentState, AgentStates
from cfm_mppi_obstacles import ObstacleBridge, trajectory_clear


class ObstacleTests(unittest.TestCase):
    def setUp(self):
        for target, value in [("time.monotonic", 100), ("rospy.Time.now", rospy.Time(10))]:
            p = patch(target, return_value=value)
            p.start()
            self.addCleanup(p.stop)
        self.b = ObstacleBridge.__new__(ObstacleBridge)
        self.b.lock = threading.RLock()
        self.b.resetting = False
        self.b.scan_at = self.b.agents_at = 0
        self.b.scan_stamp = self.b.agents_stamp = 0
        self.b.scan_points, self.b.agents = [], []
        self.b.state = (10, 20, 0)
        self.b.frame = "map"
        self.b.transform = Mock(return_value=(10, 20, math.pi / 2))

    def test_scan_transform_and_spatial_deduplication(self):
        scan = LaserScan()
        scan.header.stamp = rospy.Time(10)
        scan.range_min, scan.range_max = 0.05, 5
        scan.angle_increment = 0.001
        scan.ranges = [1, 1.01, float("inf"), float("nan")]
        self.b.scan_callback(scan)
        self.assertEqual(len(self.b.scan_points), 1)
        self.assertAlmostEqual(self.b.scan_points[0][0], 10)
        self.assertAlmostEqual(self.b.scan_points[0][1], 21)
        self.assertEqual(self.b.scan_at, 100)

    def test_invalid_scan_is_not_treated_as_empty_free_space(self):
        scan = LaserScan()
        scan.header.stamp = rospy.Time(10)
        scan.ranges = [float("nan")]
        self.b.scan_at = 99.9
        self.b.scan_callback(scan)
        self.assertEqual(self.b.scan_at, 0)

    def test_agent_position_and_velocity_rotate_into_map(self):
        msg = AgentStates()
        msg.header.stamp = rospy.Time(10)
        agent = AgentState()
        agent.pose.position.x = 1
        agent.twist.linear.x = 1
        msg.agent_states = [agent]
        self.b.agents_callback(msg)
        x, y, vx, vy = self.b.agents[0]
        self.assertAlmostEqual(x, 10)
        self.assertAlmostEqual(y, 21)
        self.assertAlmostEqual(vx, 0)
        self.assertAlmostEqual(vy, 1)

    def test_moving_person_scan_returns_are_not_duplicated_as_static(self):
        self.b.agents = [(1, 2, 0, 0.5)]
        self.b.scan_points = [(1.1, 2), (1.7, 2), (3, 4)]
        tracks = self.b.tracks()
        self.assertEqual(len(tracks), 2)
        self.assertEqual(tracks[0][3], 0.5)
        self.assertEqual(tracks[1][2:4], (0, 0))

    def test_future_crossing_is_blocked_before_current_collision(self):
        states = [(i * 0.1, 0, 0) for i in range(21)]
        moving = [(1, -1, 0, 1, 0.3, 10)]
        self.assertFalse(trajectory_clear(states, moving, 10, 10))
        self.assertTrue(trajectory_clear(states, [(1, 3, 0, 0, 0.3, 10)], 10, 10))

    def test_clear_invalidates_observations_and_plan(self):
        self.b.epoch = 2
        self.b.pub, self.b.status = Mock(), Mock()
        self.b.plan = {"states": []}
        self.b.active = True
        self.b.scan_at = self.b.agents_at = 100
        self.b.clear("reset")
        self.assertEqual(self.b.scan_at, 0)
        self.assertEqual(self.b.agents_at, 0)
        self.assertIsNone(self.b.plan)
        self.assertFalse(self.b.active)

    def test_pedestrian_scene_requires_a_live_agent_and_fresh_scan(self):
        self.b.scan_at = self.b.agents_at = 100
        with patch.object(rospy, "get_param", return_value="cfm_pedestrian.json"):
            self.assertFalse(self.b.observations_fresh())
            self.b.agents = [(1, 2, 0, 0.3)]
            self.assertTrue(self.b.observations_fresh())
            self.b.scan_at = 99.4
            self.assertFalse(self.b.observations_fresh())

    def test_escape_is_allowed_inside_planning_buffer_but_not_body_floor(self):
        reversing = [(-0.01 * i, 0, 0) for i in range(41)]
        self.assertTrue(trajectory_clear(reversing, [(0.6, 0.3, 0, -0.15, 0.8, 10)], 10, 10))
        stationary = [(0, 0, 0) for _ in range(41)]
        self.assertFalse(trajectory_clear(stationary, [(0.67, 0, -0.2, 0, 0.8, 10)], 10, 10))

    def test_local_goal_follows_global_path_around_corner(self):
        self.b.state, self.b.goal = (0, 0, 0), (1, 1)
        self.b.global_points = [(0, 0), (0, 0.5), (1, 0.5), (1, 1)]
        self.b.lookahead_distance = 0.8
        local = self.b.local_goal()
        self.assertAlmostEqual(local[0], 0.3)
        self.assertAlmostEqual(local[1], 0.5)

    def test_speed_dependent_stop_margin_accounts_for_braking_direction(self):
        self.b.state = (0, 0, 0)
        self.b.scan_points = [(0.4, 0)]
        self.b.velocity = (0.75, 0)
        self.assertFalse(self.b.clearance_ok())
        self.b.velocity = (-0.75, 0)
        self.assertTrue(self.b.clearance_ok())

    def test_goal_stop_uses_predicted_settled_position(self):
        self.b.state = (0.75, 0, 0)
        self.b.goal = (1, 0)
        self.b.planar_velocity = (0.75, 0, 0)
        self.assertFalse(self.b.goal_ready())
        self.b.state = (0.80, 0, 0)
        self.assertTrue(self.b.goal_ready())
        self.b.planar_velocity = (0, 0.75, 0)
        self.assertFalse(self.b.goal_ready())


if __name__ == "__main__":
    unittest.main()
