# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "light_scan_sim: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ilight_scan_sim:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(light_scan_sim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_custom_target(_light_scan_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "light_scan_sim" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" ""
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_custom_target(_light_scan_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "light_scan_sim" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" "light_scan_sim/Segment"
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_custom_target(_light_scan_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "light_scan_sim" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" ""
)

get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_custom_target(_light_scan_sim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "light_scan_sim" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" "light_scan_sim/Material"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_cpp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_cpp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_cpp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
)

### Generating Services

### Generating Module File
_generate_module_cpp(light_scan_sim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(light_scan_sim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(light_scan_sim_generate_messages light_scan_sim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_cpp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_cpp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_cpp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_cpp _light_scan_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(light_scan_sim_gencpp)
add_dependencies(light_scan_sim_gencpp light_scan_sim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS light_scan_sim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
)
_generate_msg_eus(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
)
_generate_msg_eus(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
)
_generate_msg_eus(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
)

### Generating Services

### Generating Module File
_generate_module_eus(light_scan_sim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(light_scan_sim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(light_scan_sim_generate_messages light_scan_sim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_eus _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_eus _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_eus _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_eus _light_scan_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(light_scan_sim_geneus)
add_dependencies(light_scan_sim_geneus light_scan_sim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS light_scan_sim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_lisp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_lisp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
)
_generate_msg_lisp(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
)

### Generating Services

### Generating Module File
_generate_module_lisp(light_scan_sim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(light_scan_sim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(light_scan_sim_generate_messages light_scan_sim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_lisp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_lisp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_lisp _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_lisp _light_scan_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(light_scan_sim_genlisp)
add_dependencies(light_scan_sim_genlisp light_scan_sim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS light_scan_sim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
)
_generate_msg_nodejs(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
)
_generate_msg_nodejs(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
)
_generate_msg_nodejs(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
)

### Generating Services

### Generating Module File
_generate_module_nodejs(light_scan_sim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(light_scan_sim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(light_scan_sim_generate_messages light_scan_sim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_nodejs _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_nodejs _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_nodejs _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_nodejs _light_scan_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(light_scan_sim_gennodejs)
add_dependencies(light_scan_sim_gennodejs light_scan_sim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS light_scan_sim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
)
_generate_msg_py(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
)
_generate_msg_py(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
)
_generate_msg_py(light_scan_sim
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg"
  "${MSG_I_FLAGS}"
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
)

### Generating Services

### Generating Module File
_generate_module_py(light_scan_sim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(light_scan_sim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(light_scan_sim_generate_messages light_scan_sim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Segment.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_py _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/SegmentList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_py _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/Material.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_py _light_scan_sim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/msg/MaterialList.msg" NAME_WE)
add_dependencies(light_scan_sim_generate_messages_py _light_scan_sim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(light_scan_sim_genpy)
add_dependencies(light_scan_sim_genpy light_scan_sim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS light_scan_sim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/light_scan_sim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(light_scan_sim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/light_scan_sim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(light_scan_sim_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/light_scan_sim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(light_scan_sim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/light_scan_sim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(light_scan_sim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/light_scan_sim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(light_scan_sim_generate_messages_py std_msgs_generate_messages_py)
endif()
