# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gs_service: 1 messages, 17 services")

set(MSG_I_FLAGS "-Igs_service:/home/ubuntu/geoscan_ws/src/gs_service/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gs_service_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" "gs_service/RGBgs"
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_custom_target(_gs_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_service" "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)

### Generating Services
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)
_generate_srv_cpp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
)

### Generating Module File
_generate_module_cpp(gs_service
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gs_service_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gs_service_generate_messages gs_service_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_cpp _gs_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_service_gencpp)
add_dependencies(gs_service_gencpp gs_service_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_service_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)

### Generating Services
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)
_generate_srv_eus(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
)

### Generating Module File
_generate_module_eus(gs_service
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gs_service_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gs_service_generate_messages gs_service_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_eus _gs_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_service_geneus)
add_dependencies(gs_service_geneus gs_service_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_service_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)

### Generating Services
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)
_generate_srv_lisp(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
)

### Generating Module File
_generate_module_lisp(gs_service
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gs_service_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gs_service_generate_messages gs_service_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_lisp _gs_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_service_genlisp)
add_dependencies(gs_service_genlisp gs_service_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_service_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)

### Generating Services
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)
_generate_srv_nodejs(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
)

### Generating Module File
_generate_module_nodejs(gs_service
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gs_service_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gs_service_generate_messages gs_service_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_nodejs _gs_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_service_gennodejs)
add_dependencies(gs_service_gennodejs gs_service_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_service_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)

### Generating Services
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)
_generate_srv_py(gs_service
  "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
)

### Generating Module File
_generate_module_py(gs_service
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gs_service_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gs_service_generate_messages gs_service_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/msg/RGBgs.msg" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Yaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Event.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Pos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/PosGPS.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Led.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Time.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Info.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsPos.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsVel.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/LpsYaw.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Gyro.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Acl.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Ort.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Live.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Log.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Range.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_service/srv/Alt.srv" NAME_WE)
add_dependencies(gs_service_generate_messages_py _gs_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_service_genpy)
add_dependencies(gs_service_genpy gs_service_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_service_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_service
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gs_service_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_service
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gs_service_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_service
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gs_service_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_service
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gs_service_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_service
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gs_service_generate_messages_py std_msgs_generate_messages_py)
endif()
