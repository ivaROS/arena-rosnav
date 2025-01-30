# Install script for directory: /home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE PROGRAM FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE PROGRAM FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/setup.bash;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE FILE FILES
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/setup.bash"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/setup.sh;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE FILE FILES
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/setup.sh"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/setup.zsh;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE FILE FILES
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/setup.zsh"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" TYPE FILE FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pedsim_msgs/msg" TYPE FILE FILES
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentState.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentStates.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentGroup.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentGroups.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentForce.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Wall.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Walls.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/TrackedPerson.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/TrackedPersons.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/TrackedGroup.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/TrackedGroups.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SocialRelation.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SocialRelations.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SocialActivity.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SocialActivities.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Waypoint.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Waypoints.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Ped.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Obstacle.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/Obstacles.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/RobotState.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/PedsimAgentsDataframe.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentFeedback.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/AgentFeedbacks.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SemanticDatum.msg"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/msg/SemanticData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pedsim_msgs/cmake" TYPE FILE FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/pedsim_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/include/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/share/roseus/ros/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/share/common-lisp/ros/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/share/gennodejs/ros/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/lib/python3/dist-packages/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/pedsim_msgs/lib/python3/dist-packages/pedsim_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/pedsim_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pedsim_msgs/cmake" TYPE FILE FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/pedsim_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pedsim_msgs/cmake" TYPE FILE FILES
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/pedsim_msgsConfig.cmake"
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/catkin_generated/installspace/pedsim_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pedsim_msgs" TYPE FILE FILES "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/pedsim_ros/pedsim_msgs/pedsim_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/pedsim_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
