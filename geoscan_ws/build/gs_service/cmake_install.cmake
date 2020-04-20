# Install script for directory: /home/ubuntu/geoscan_ws/src/gs_service

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/geoscan_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service/srv" TYPE FILE FILES
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
    "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service/msg" TYPE FILE FILES "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service/cmake" TYPE FILE FILES "/home/ubuntu/geoscan_ws/build/gs_service/catkin_generated/installspace/gs_service-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/geoscan_ws/devel/include/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/geoscan_ws/devel/share/roseus/ros/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/geoscan_ws/devel/share/common-lisp/ros/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/geoscan_ws/devel/share/gennodejs/ros/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ubuntu/geoscan_ws/devel/lib/python3/dist-packages/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/geoscan_ws/devel/lib/python3/dist-packages/gs_service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/geoscan_ws/build/gs_service/catkin_generated/installspace/gs_service.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service/cmake" TYPE FILE FILES "/home/ubuntu/geoscan_ws/build/gs_service/catkin_generated/installspace/gs_service-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service/cmake" TYPE FILE FILES
    "/home/ubuntu/geoscan_ws/build/gs_service/catkin_generated/installspace/gs_serviceConfig.cmake"
    "/home/ubuntu/geoscan_ws/build/gs_service/catkin_generated/installspace/gs_serviceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gs_service" TYPE FILE FILES "/home/ubuntu/geoscan_ws/src/gs_service/package.xml")
endif()

