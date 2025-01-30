# CMake generated Testfile for 
# Source directory: /home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim
# Build directory: /home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/light_scan_sim
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_light_scan_sim_gtest_light_scan_sim-test "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/light_scan_sim/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/light_scan_sim/test_results/light_scan_sim/gtest-light_scan_sim-test.xml" "--return-code" "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/devel/.private/light_scan_sim/lib/light_scan_sim/light_scan_sim-test --gtest_output=xml:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/light_scan_sim/test_results/light_scan_sim/gtest-light_scan_sim-test.xml")
set_tests_properties(_ctest_light_scan_sim_gtest_light_scan_sim-test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/CMakeLists.txt;180;catkin_add_gtest;/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/planners/all_in_one/all_in_one_3rd_party/light_scan_sim/CMakeLists.txt;0;")
subdirs("gtest")
subdirs("thirdparty/Box2D")
