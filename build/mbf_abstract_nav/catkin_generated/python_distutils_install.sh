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

echo_and_run cd "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/move_base_flex/core/nav/mbf_abstract_nav"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/lib/python3/dist-packages:/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/mbf_abstract_nav/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/mbf_abstract_nav" \
    "/usr/bin/python3" \
    "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/src/arena/utils/move_base_flex/core/nav/mbf_abstract_nav/setup.py" \
     \
    build --build-base "/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/build/mbf_abstract_nav" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install" --install-scripts="/home/az/github_may_messed_it_up_20250124arena_try_get_rel_vel_work/arena_ws/install/bin"
