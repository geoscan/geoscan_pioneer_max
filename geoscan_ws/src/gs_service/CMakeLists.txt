cmake_minimum_required(VERSION 2.8.3)
project(gs_service)

find_package(catkin REQUIRED
    COMPONENTS message_generation std_msgs geometry_msgs
)

add_service_files(
   FILES
   Yaw.srv
   Event.srv
   Position.srv
   PositionGPS.srv
   Led.srv
   Time.srv
   Info.srv
   LpsPos.srv
   LpsVel.srv
   LpsYaw.srv
   Gyro.srv
   Accel.srv
   Orientation.srv
   Live.srv
   Log.srv
   Range.srv
   Altitude.srv
)

generate_messages(
   DEPENDENCIES std_msgs geometry_msgs
)

catkin_package(
   CATKIN_DEPENDS message_runtime
)

include_directories()