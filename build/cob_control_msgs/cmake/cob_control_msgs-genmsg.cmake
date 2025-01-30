# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_control_msgs: 2 messages, 1 services")

set(MSG_I_FLAGS "-Icob_control_msgs:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_custom_target(_cob_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_control_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_custom_target(_cob_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_control_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" "std_msgs/Header:cob_control_msgs/ObstacleDistance:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_custom_target(_cob_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_control_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs
)
_generate_msg_cpp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs
)

### Generating Services
_generate_srv_cpp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs
)

### Generating Module File
_generate_module_cpp(cob_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_control_msgs_generate_messages cob_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_cpp _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_cpp _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_cpp _cob_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_control_msgs_gencpp)
add_dependencies(cob_control_msgs_gencpp cob_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs
)
_generate_msg_eus(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs
)

### Generating Services
_generate_srv_eus(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs
)

### Generating Module File
_generate_module_eus(cob_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_control_msgs_generate_messages cob_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_eus _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_eus _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_eus _cob_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_control_msgs_geneus)
add_dependencies(cob_control_msgs_geneus cob_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs
)
_generate_msg_lisp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs
)

### Generating Services
_generate_srv_lisp(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs
)

### Generating Module File
_generate_module_lisp(cob_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_control_msgs_generate_messages cob_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_lisp _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_lisp _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_lisp _cob_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_control_msgs_genlisp)
add_dependencies(cob_control_msgs_genlisp cob_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs
)
_generate_msg_nodejs(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs
)

### Generating Services
_generate_srv_nodejs(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs
)

### Generating Module File
_generate_module_nodejs(cob_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_control_msgs_generate_messages cob_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_nodejs _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_nodejs _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_nodejs _cob_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_control_msgs_gennodejs)
add_dependencies(cob_control_msgs_gennodejs cob_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs
)
_generate_msg_py(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs
)

### Generating Services
_generate_srv_py(cob_control_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs
)

### Generating Module File
_generate_module_py(cob_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_control_msgs_generate_messages cob_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistance.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_py _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/msg/ObstacleDistances.msg" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_py _cob_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/3rd-party-robot-packages/cob4/cob_control_msgs/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(cob_control_msgs_generate_messages_py _cob_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_control_msgs_genpy)
add_dependencies(cob_control_msgs_genpy cob_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cob_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cob_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cob_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cob_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cob_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
