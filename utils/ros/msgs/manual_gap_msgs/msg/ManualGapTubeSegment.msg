# One gap of a gap tube: the candidate's gap as DynamicGap propagated it over the
# planning horizon (a tube has a new segment each time the gap changes shape).
# Robot frame at the planning tick. NaN where the gap has no estimator or goal.

float32 t_start                # start of this segment (s from the tick)
float32 lifespan               # duration of this segment (s)
int32   end_condition          # Gap::end_condition_ (how the segment ended)
int32   left_model_id
int32   right_model_id

geometry_msgs/Vector3 left_pos         # gap point at the segment's start
geometry_msgs/Vector3 right_pos
geometry_msgs/Vector3 manip_left_pos   # after gap manipulation
geometry_msgs/Vector3 manip_right_pos
geometry_msgs/Vector3 manip_left_vel   # estimator velocity after manipulation
geometry_msgs/Vector3 manip_right_vel

bool    has_goal
geometry_msgs/Vector3 goal_pos         # gap goal at the segment's start
geometry_msgs/Vector3 goal_vel
geometry_msgs/Vector3 term_goal_pos    # gap goal at the segment's end
