# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosnav: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irosnav:/home/az/arena_ws/src/planners/rosnav/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosnav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_custom_target(_rosnav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosnav" "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" ""
)

get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_custom_target(_rosnav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosnav" "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosnav
  "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosnav
)

### Generating Services
_generate_srv_cpp(rosnav
  "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosnav
)

### Generating Module File
_generate_module_cpp(rosnav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosnav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosnav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosnav_generate_messages rosnav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_dependencies(rosnav_generate_messages_cpp _rosnav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_dependencies(rosnav_generate_messages_cpp _rosnav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosnav_gencpp)
add_dependencies(rosnav_gencpp rosnav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosnav_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosnav
  "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosnav
)

### Generating Services
_generate_srv_eus(rosnav
  "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosnav
)

### Generating Module File
_generate_module_eus(rosnav
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosnav
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosnav_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosnav_generate_messages rosnav_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_dependencies(rosnav_generate_messages_eus _rosnav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_dependencies(rosnav_generate_messages_eus _rosnav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosnav_geneus)
add_dependencies(rosnav_geneus rosnav_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosnav_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosnav
  "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosnav
)

### Generating Services
_generate_srv_lisp(rosnav
  "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosnav
)

### Generating Module File
_generate_module_lisp(rosnav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosnav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosnav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosnav_generate_messages rosnav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_dependencies(rosnav_generate_messages_lisp _rosnav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_dependencies(rosnav_generate_messages_lisp _rosnav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosnav_genlisp)
add_dependencies(rosnav_genlisp rosnav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosnav_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosnav
  "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosnav
)

### Generating Services
_generate_srv_nodejs(rosnav
  "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosnav
)

### Generating Module File
_generate_module_nodejs(rosnav
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosnav
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosnav_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosnav_generate_messages rosnav_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_dependencies(rosnav_generate_messages_nodejs _rosnav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_dependencies(rosnav_generate_messages_nodejs _rosnav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosnav_gennodejs)
add_dependencies(rosnav_gennodejs rosnav_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosnav_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosnav
  "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav
)

### Generating Services
_generate_srv_py(rosnav
  "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav
)

### Generating Module File
_generate_module_py(rosnav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosnav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosnav_generate_messages rosnav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/msg/ResetStackedObs.msg" NAME_WE)
add_dependencies(rosnav_generate_messages_py _rosnav_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/az/arena_ws/src/planners/rosnav/srv/GetAction.srv" NAME_WE)
add_dependencies(rosnav_generate_messages_py _rosnav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosnav_genpy)
add_dependencies(rosnav_genpy rosnav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosnav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosnav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosnav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosnav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosnav
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosnav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosnav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosnav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosnav
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav)
  install(CODE "execute_process(COMMAND \"/home/az/.cache/pypoetry/virtualenvs/arena-rosnav-fVe40LB9-py3.8/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosnav
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
