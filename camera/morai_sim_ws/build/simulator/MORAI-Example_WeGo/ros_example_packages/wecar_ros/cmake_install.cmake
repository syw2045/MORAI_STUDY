# Install script for directory: /home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/src/simulator/MORAI-Example_WeGo/ros_example_packages/wecar_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/wecar_ros/catkin_generated/installspace/wecar_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wecar_ros/cmake" TYPE FILE FILES
    "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/wecar_ros/catkin_generated/installspace/wecar_rosConfig.cmake"
    "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/wecar_ros/catkin_generated/installspace/wecar_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wecar_ros" TYPE FILE FILES "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/src/simulator/MORAI-Example_WeGo/ros_example_packages/wecar_ros/package.xml")
endif()

