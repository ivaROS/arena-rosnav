# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_manager;gazebo_ros;gazebo_ros_control;hardware_interface;joint_limits_interface;pluginlib;roscpp;transmission_interface;urdf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhwi_switch_gazebo_ros_control;-lhwi_switch_robot_hw_sim".split(';') if "-lhwi_switch_gazebo_ros_control;-lhwi_switch_robot_hw_sim" != "" else []
PROJECT_NAME = "cob_gazebo_ros_control"
PROJECT_SPACE_DIR = "/home/az/arena_ws/install"
PROJECT_VERSION = "0.7.7"
