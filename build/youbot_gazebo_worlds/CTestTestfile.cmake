# CMake generated Testfile for 
# Source directory: /home/az/arena_ws/src/arena/utils/3rd-party-robot-packages/youbot/youbot_simulation/youbot_gazebo_worlds
# Build directory: /home/az/arena_ws/build/youbot_gazebo_worlds
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_youbot_gazebo_worlds_roslaunch-check_launch "/home/az/arena_ws/build/youbot_gazebo_worlds/catkin_generated/env_cached.sh" "/home/az/.cache/pypoetry/virtualenvs/arena-rosnav-fVe40LB9-py3.8/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/az/arena_ws/build/youbot_gazebo_worlds/test_results/youbot_gazebo_worlds/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/az/arena_ws/build/youbot_gazebo_worlds/test_results/youbot_gazebo_worlds" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/az/arena_ws/build/youbot_gazebo_worlds/test_results/youbot_gazebo_worlds/roslaunch-check_launch.xml\" \"/home/az/arena_ws/src/arena/utils/3rd-party-robot-packages/youbot/youbot_simulation/youbot_gazebo_worlds/launch\" ")
set_tests_properties(_ctest_youbot_gazebo_worlds_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/az/arena_ws/src/arena/utils/3rd-party-robot-packages/youbot/youbot_simulation/youbot_gazebo_worlds/CMakeLists.txt;16;roslaunch_add_file_check;/home/az/arena_ws/src/arena/utils/3rd-party-robot-packages/youbot/youbot_simulation/youbot_gazebo_worlds/CMakeLists.txt;0;")
subdirs("gtest")
