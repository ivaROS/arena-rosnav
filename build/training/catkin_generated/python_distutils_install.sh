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

echo_and_run cd "/home/az/arena_ws/src/arena/arena-rosnav/training"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/az/arena_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/az/arena_ws/install/lib/python3/dist-packages:/home/az/arena_ws/build/training/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/az/arena_ws/build/training" \
    "/home/az/.cache/pypoetry/virtualenvs/arena-rosnav-fVe40LB9-py3.8/bin/python3" \
    "/home/az/arena_ws/src/arena/arena-rosnav/training/setup.py" \
     \
    build --build-base "/home/az/arena_ws/build/training" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/az/arena_ws/install" --install-scripts="/home/az/arena_ws/install/bin"
