# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;mpc_local_planner_msgs;control_box_rst;teb_local_planner;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmpc_local_planner_utils;-lmpc_local_planner_optimal_control;-lmpc_local_planner".split(';') if "-lmpc_local_planner_utils;-lmpc_local_planner_optimal_control;-lmpc_local_planner" != "" else []
PROJECT_NAME = "mpc_local_planner"
PROJECT_SPACE_DIR = "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install"
PROJECT_VERSION = "0.0.3"
