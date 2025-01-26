# CMake generated Testfile for 
# Source directory: /home/az/arena_ws/src/planners/cohan/hateb_local_planner
# Build directory: /home/az/arena_ws/build/hateb_local_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_hateb_local_planner_gtest_test_teb_basics "/home/az/arena_ws/build/hateb_local_planner/catkin_generated/env_cached.sh" "/home/az/.cache/pypoetry/virtualenvs/arena-rosnav-fVe40LB9-py3.8/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/az/arena_ws/build/hateb_local_planner/test_results/hateb_local_planner/gtest-test_teb_basics.xml" "--return-code" "/home/az/arena_ws/devel/.private/hateb_local_planner/lib/hateb_local_planner/test_teb_basics --gtest_output=xml:/home/az/arena_ws/build/hateb_local_planner/test_results/hateb_local_planner/gtest-test_teb_basics.xml")
set_tests_properties(_ctest_hateb_local_planner_gtest_test_teb_basics PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/az/arena_ws/src/planners/cohan/hateb_local_planner/CMakeLists.txt;306;catkin_add_gtest;/home/az/arena_ws/src/planners/cohan/hateb_local_planner/CMakeLists.txt;0;")
subdirs("gtest")
