cmake_minimum_required(VERSION 3.5)
project(gs_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/RGBgs.msg"
)

set(srv_files
  "srv/Yaw.srv"
  "srv/Event.srv"
  "srv/Pos.srv"
  "srv/PosGPS.srv"
  "srv/Led.srv"
  "srv/Time.srv"
  "srv/Info.srv"
  "srv/LpsPos.srv"
  "srv/LpsVel.srv"
  "srv/LpsYaw.srv"
  "srv/Gyro.srv"
  "srv/Acl.srv"
  "srv/Ort.srv"
  "srv/Live.srv"
  "srv/Log.srv"
  "srv/Range.srv"
  "srv/Alt.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_default_runtime)

ament_package()
