#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/misc/rviz_utils"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/lib/python3/dist-packages:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/rviz_utils/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/rviz_utils" \
    "/usr/bin/python3" \
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/arena-rosnav/utils/misc/rviz_utils/setup.py" \
     \
    build --build-base "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/rviz_utils" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" --install-scripts="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/bin"
