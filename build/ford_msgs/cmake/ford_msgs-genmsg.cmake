# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ford_msgs: 12 messages, 1 services")

set(MSG_I_FLAGS "-Iford_msgs:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ford_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" "std_msgs/Header:std_msgs/ColorRGBA:ford_msgs/ImageRect"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" "geometry_msgs/Vector3:std_msgs/Header:ford_msgs/Pose2DStamped:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Pose2D:ford_msgs/Pose2DStamped:ford_msgs/PedTraj"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" "std_msgs/Header:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Point:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" "std_msgs/Header:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" "std_msgs/Header:std_msgs/ColorRGBA:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" "geometry_msgs/Point:std_msgs/Header:std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_custom_target(_ford_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ford_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseStamped"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)
_generate_msg_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)

### Generating Services
_generate_srv_cpp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
)

### Generating Module File
_generate_module_cpp(ford_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ford_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ford_msgs_generate_messages ford_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_dependencies(ford_msgs_generate_messages_cpp _ford_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ford_msgs_gencpp)
add_dependencies(ford_msgs_gencpp ford_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ford_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)
_generate_msg_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)

### Generating Services
_generate_srv_eus(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
)

### Generating Module File
_generate_module_eus(ford_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ford_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ford_msgs_generate_messages ford_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_dependencies(ford_msgs_generate_messages_eus _ford_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ford_msgs_geneus)
add_dependencies(ford_msgs_geneus ford_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ford_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)
_generate_msg_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)

### Generating Services
_generate_srv_lisp(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
)

### Generating Module File
_generate_module_lisp(ford_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ford_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ford_msgs_generate_messages ford_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_dependencies(ford_msgs_generate_messages_lisp _ford_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ford_msgs_genlisp)
add_dependencies(ford_msgs_genlisp ford_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ford_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)
_generate_msg_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)

### Generating Services
_generate_srv_nodejs(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
)

### Generating Module File
_generate_module_nodejs(ford_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ford_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ford_msgs_generate_messages ford_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_dependencies(ford_msgs_generate_messages_nodejs _ford_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ford_msgs_gennodejs)
add_dependencies(ford_msgs_gennodejs ford_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ford_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)
_generate_msg_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)

### Generating Services
_generate_srv_py(ford_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
)

### Generating Module File
_generate_module_py(ford_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ford_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ford_msgs_generate_messages ford_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ClusterHit.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Pose2DStamped.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageObj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTraj.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PedTrajVec.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/Clusters.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/PlannerMode.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/NNActions.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/potential_detections.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/ped_detection.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/msg/SSDObjs.msg" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/extern/ford_msgs/srv/GetSafeActions.srv" NAME_WE)
add_dependencies(ford_msgs_generate_messages_py _ford_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ford_msgs_genpy)
add_dependencies(ford_msgs_genpy ford_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ford_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ford_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ford_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ford_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ford_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ford_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ford_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ford_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ford_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ford_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ford_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ford_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ford_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ford_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ford_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ford_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ford_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ford_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ford_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ford_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ford_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
