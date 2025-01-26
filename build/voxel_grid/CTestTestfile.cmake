# CMake generated Testfile for 
# Source directory: /home/az/arena_ws/src/arena/utils/navigation/utils/voxel_grid
# Build directory: /home/az/arena_ws/build/voxel_grid
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_voxel_grid_gtest_voxel_grid_tests "/home/az/arena_ws/build/voxel_grid/catkin_generated/env_cached.sh" "/home/az/.cache/pypoetry/virtualenvs/arena-rosnav-fVe40LB9-py3.8/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/az/arena_ws/build/voxel_grid/test_results/voxel_grid/gtest-voxel_grid_tests.xml" "--return-code" "/home/az/arena_ws/devel/.private/voxel_grid/lib/voxel_grid/voxel_grid_tests --gtest_output=xml:/home/az/arena_ws/build/voxel_grid/test_results/voxel_grid/gtest-voxel_grid_tests.xml")
set_tests_properties(_ctest_voxel_grid_gtest_voxel_grid_tests PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/az/arena_ws/src/arena/utils/navigation/utils/voxel_grid/CMakeLists.txt;42;catkin_add_gtest;/home/az/arena_ws/src/arena/utils/navigation/utils/voxel_grid/CMakeLists.txt;0;")
subdirs("gtest")
