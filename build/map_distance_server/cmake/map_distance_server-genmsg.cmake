# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "map_distance_server: 0 messages, 1 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(map_distance_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_custom_target(_map_distance_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "map_distance_server" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" "geometry_msgs/Quaternion:nav_msgs/MapMetaData:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(map_distance_server
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_distance_server
)

### Generating Module File
_generate_module_cpp(map_distance_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_distance_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(map_distance_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(map_distance_server_generate_messages map_distance_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_dependencies(map_distance_server_generate_messages_cpp _map_distance_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_distance_server_gencpp)
add_dependencies(map_distance_server_gencpp map_distance_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_distance_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(map_distance_server
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_distance_server
)

### Generating Module File
_generate_module_eus(map_distance_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_distance_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(map_distance_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(map_distance_server_generate_messages map_distance_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_dependencies(map_distance_server_generate_messages_eus _map_distance_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_distance_server_geneus)
add_dependencies(map_distance_server_geneus map_distance_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_distance_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(map_distance_server
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_distance_server
)

### Generating Module File
_generate_module_lisp(map_distance_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_distance_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(map_distance_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(map_distance_server_generate_messages map_distance_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_dependencies(map_distance_server_generate_messages_lisp _map_distance_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_distance_server_genlisp)
add_dependencies(map_distance_server_genlisp map_distance_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_distance_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(map_distance_server
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_distance_server
)

### Generating Module File
_generate_module_nodejs(map_distance_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_distance_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(map_distance_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(map_distance_server_generate_messages map_distance_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_dependencies(map_distance_server_generate_messages_nodejs _map_distance_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_distance_server_gennodejs)
add_dependencies(map_distance_server_gennodejs map_distance_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_distance_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(map_distance_server
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_distance_server
)

### Generating Module File
_generate_module_py(map_distance_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_distance_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(map_distance_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(map_distance_server_generate_messages map_distance_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/ros/rosnodes/map_distance_server/srv/GetDistanceMap.srv" NAME_WE)
add_dependencies(map_distance_server_generate_messages_py _map_distance_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_distance_server_genpy)
add_dependencies(map_distance_server_genpy map_distance_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_distance_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_distance_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_distance_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(map_distance_server_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(map_distance_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_distance_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_distance_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(map_distance_server_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(map_distance_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_distance_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_distance_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(map_distance_server_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(map_distance_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_distance_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_distance_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(map_distance_server_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(map_distance_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_distance_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_distance_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_distance_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(map_distance_server_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(map_distance_server_generate_messages_py std_msgs_generate_messages_py)
endif()
