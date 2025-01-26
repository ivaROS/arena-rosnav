execute_process(COMMAND "/home/az/arena_ws/build/cob_twist_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/az/arena_ws/build/cob_twist_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
