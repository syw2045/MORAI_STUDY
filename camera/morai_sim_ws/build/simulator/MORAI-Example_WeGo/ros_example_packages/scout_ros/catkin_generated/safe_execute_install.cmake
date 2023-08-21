execute_process(COMMAND "/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ssong/Documents/MORAI_STUDY/camera_exercise/morai_sim_ws/build/simulator/MORAI-Example_WeGo/ros_example_packages/scout_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
