# One edge of the scene: a gap point of DynamicGap's raw gaps (every gap the scan
# shows, before simplification), robot frame, at the gap snapshot stamp.
# The edges are in scan order, two per raw gap (right point, then left point).
# Every edge has two neighbours: the other point of its gap, and toward the other
# side the next edge, the other end of the obstacle between them.

int32   scan_idx               # scan ray of the point
int32   model_id               # estimator id (stable over time); -1 without a model
float32 range
float32 theta

# estimator state (Estimator::getState): position, and velocity relative to the robot
geometry_msgs/Vector3 model_pos
geometry_msgs/Vector3 model_vel
float32[16] model_cov          # estimator covariance (x, y, vx, vy), row-major, after the last update; NaN without a model (schema 5)

int32   gap_neighbor           # position in edges[] of the other point of its gap
int32   obstacle_neighbor      # position in edges[] of the other end of the obstacle it bounds; -1 if none
