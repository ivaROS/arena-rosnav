# The planner's gaps after one laser scan (Planner::laserScanCB, every scan, 25 Hz):
# both points of every raw and every simplified gap, with the estimator ids and
# states after this scan's update. Published in manual and learned selection mode,
# recorded with the IL session. This is the stream gap-point estimators (Kalman,
# GRU) run on; the per-tick ManualGapSample holds only the raw edges at ~9 Hz.

uint16 SCHEMA_VERSION = 1

uint16  schema_version
Header  header                   # the scan's stamp (sim time); frame_id = robot frame
time    wall_stamp
uint32  scan_seq                 # the scan's header.seq (joins /<ns>/scan)
int32   episode_id               # last /scenario_reset id; -1 before the first
bool    colliding                # scan inside the robot radius: gap detection skipped, no gaps
geometry_msgs/Pose    robot_pose_odom
geometry_msgs/Twist   robot_vel  # robot frame, the latest velocity the estimators used

# same layout as ManualGapSample.edges: scan order, right point then left point
# per gap, gap_neighbor / obstacle_neighbor within the same list.
# range/theta are the measurement the estimator was updated with.
ManualGapEdge[] raw_edges
ManualGapEdge[] simplified_edges
