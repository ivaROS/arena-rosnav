import enum
from pedsim_agents.utils import SemanticAttribute

MAX_WAIT = 2  # in seconds
SLEEP = 0.05  # in seconds

class DONE_REASONS(enum.Enum):
    STEP_LIMIT = 0
    COLLISION = 1
    SUCCESS = 2


class TOPICS:
    LASER = "scan"
    FULL_RANGE_LASER = "full_scan"
    ROBOT_STATE = "odom"
    GOAL = "goal"

    GLOBALPLAN = "move_base_flex/get_path/goal"

    PEDSIM_STATES = "pedsim_simulator/simulated_agents"
    PEDSIM_SEMANTIC = "pedsim_agents/semantic"
    
    PED_SAFE_DIST = "ped_safe_dist"
    OBS_SAFE_DIST = "obs_safe_dist"
    COLLISION = "collision"


class OBS_DICT_KEYS:
    """
    Constants for observation dictionary keys.
    """

    LASER = "laser_scan"
    ROBOT_POSE = "robot_pose"
    GOAL_DIST_ANGLE = "goal_in_robot_frame"
    GOAL_LOCATION_IN_ROBOT_FRAME = "goal_location_in_robot_frame"
    GOAL_LOCATION = "goal_location"
    DISTANCE_TO_GOAL = "distance_to_goal"
    LAST_ACTION = "last_action"
    GLOBAL_PLAN = "global_plan"
    DONE = "is_done"
    PED_SAFE_DIST = "ped_safe_dist"
    OBS_SAFE_DIST = "obs_safe_dist"
    COLLSION = "collision"
    

    # why not have SEMANTIC = SemanticAttribute ?
    class SEMANTIC(enum.Enum):
        PEDESTRIAN_LOCATION = SemanticAttribute.IS_PEDESTRIAN.value
        PEDESTRIAN_TYPE = SemanticAttribute.PEDESTRIAN_TYPE.value
        PEDESTRIAN_MOVING = SemanticAttribute.IS_PEDESTRIAN_MOVING.value
        PEDESTRIAN_VEL_X = SemanticAttribute.PEDESTRIAN_VEL_X.value
        PEDESTRIAN_VEL_Y = SemanticAttribute.PEDESTRIAN_VEL_Y.value

        RELATIVE_LOCATION = "relative_location"
        RELATIVE_X_VEL = "relative_x_vel"
        RELATIVE_Y_VEL = "relative_y_vel"

        MIN_DISTANCE_PER_TYPE = "min_distance_per_type"
