cmake_minimum_required(VERSION 2.8.3)
project(gs_vision)

find_package(catkin REQUIRED
    COMPONENTS message_generation std_msgs
)

add_message_files(
  FILES
  Apriltag.msg
  QR.msg
  ArUco.msg
  Apriltag_array.msg
  QR_array.msg
  ArUco_array.msg
)

# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

generate_messages(
   DEPENDENCIES std_msgs  
)

catkin_package(
  CATKIN_DEPENDS message_runtime
  DEPENDS CvBridge
)

include_directories()