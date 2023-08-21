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

echo_and_run cd "/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/src/simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/install/lib/python3/dist-packages:/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/build" \
    "/usr/bin/python3" \
    "/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/src/simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros/setup.py" \
     \
    build --build-base "/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/install" --install-scripts="/home/ssong/Documents/MORAI_STUDY/camera/morai_sim_ws/install/bin"
