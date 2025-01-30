# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arena_evaluation_msgs: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arena_evaluation_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_custom_target(_arena_evaluation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arena_evaluation_msgs" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(arena_evaluation_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arena_evaluation_msgs
)

### Generating Module File
_generate_module_cpp(arena_evaluation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arena_evaluation_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arena_evaluation_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arena_evaluation_msgs_generate_messages arena_evaluation_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_dependencies(arena_evaluation_msgs_generate_messages_cpp _arena_evaluation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arena_evaluation_msgs_gencpp)
add_dependencies(arena_evaluation_msgs_gencpp arena_evaluation_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arena_evaluation_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(arena_evaluation_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arena_evaluation_msgs
)

### Generating Module File
_generate_module_eus(arena_evaluation_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arena_evaluation_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(arena_evaluation_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(arena_evaluation_msgs_generate_messages arena_evaluation_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_dependencies(arena_evaluation_msgs_generate_messages_eus _arena_evaluation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arena_evaluation_msgs_geneus)
add_dependencies(arena_evaluation_msgs_geneus arena_evaluation_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arena_evaluation_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(arena_evaluation_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arena_evaluation_msgs
)

### Generating Module File
_generate_module_lisp(arena_evaluation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arena_evaluation_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arena_evaluation_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arena_evaluation_msgs_generate_messages arena_evaluation_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_dependencies(arena_evaluation_msgs_generate_messages_lisp _arena_evaluation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arena_evaluation_msgs_genlisp)
add_dependencies(arena_evaluation_msgs_genlisp arena_evaluation_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arena_evaluation_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(arena_evaluation_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arena_evaluation_msgs
)

### Generating Module File
_generate_module_nodejs(arena_evaluation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arena_evaluation_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(arena_evaluation_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(arena_evaluation_msgs_generate_messages arena_evaluation_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_dependencies(arena_evaluation_msgs_generate_messages_nodejs _arena_evaluation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arena_evaluation_msgs_gennodejs)
add_dependencies(arena_evaluation_msgs_gennodejs arena_evaluation_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arena_evaluation_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(arena_evaluation_msgs
  "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arena_evaluation_msgs
)

### Generating Module File
_generate_module_py(arena_evaluation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arena_evaluation_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arena_evaluation_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arena_evaluation_msgs_generate_messages arena_evaluation_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/evaluation/arena_evaluation_msgs/srv/ChangeDirectory.srv" NAME_WE)
add_dependencies(arena_evaluation_msgs_generate_messages_py _arena_evaluation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arena_evaluation_msgs_genpy)
add_dependencies(arena_evaluation_msgs_genpy arena_evaluation_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arena_evaluation_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arena_evaluation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arena_evaluation_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arena_evaluation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/arena_evaluation_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arena_evaluation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arena_evaluation_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arena_evaluation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/arena_evaluation_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arena_evaluation_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arena_evaluation_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arena_evaluation_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
