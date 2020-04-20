# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gs_vision: 6 messages, 0 services")

set(MSG_I_FLAGS "-Igs_vision:/home/ubuntu/geoscan_ws/src/gs_vision/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gs_vision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" ""
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" "gs_vision/Apriltag"
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" "gs_vision/QR"
)

get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_custom_target(_gs_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gs_vision" "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" "gs_vision/ArUco"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)
_generate_msg_cpp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
)

### Generating Services

### Generating Module File
_generate_module_cpp(gs_vision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gs_vision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gs_vision_generate_messages gs_vision_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_cpp _gs_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_vision_gencpp)
add_dependencies(gs_vision_gencpp gs_vision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_vision_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)
_generate_msg_eus(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
)

### Generating Services

### Generating Module File
_generate_module_eus(gs_vision
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gs_vision_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gs_vision_generate_messages gs_vision_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_eus _gs_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_vision_geneus)
add_dependencies(gs_vision_geneus gs_vision_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_vision_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)
_generate_msg_lisp(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
)

### Generating Services

### Generating Module File
_generate_module_lisp(gs_vision
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gs_vision_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gs_vision_generate_messages gs_vision_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_lisp _gs_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_vision_genlisp)
add_dependencies(gs_vision_genlisp gs_vision_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_vision_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)
_generate_msg_nodejs(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gs_vision
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gs_vision_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gs_vision_generate_messages gs_vision_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_nodejs _gs_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_vision_gennodejs)
add_dependencies(gs_vision_gennodejs gs_vision_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_vision_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)
_generate_msg_py(gs_vision
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
)

### Generating Services

### Generating Module File
_generate_module_py(gs_vision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gs_vision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gs_vision_generate_messages gs_vision_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/Apriltag_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/QR_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/geoscan_ws/src/gs_vision/msg/ArUco_array.msg" NAME_WE)
add_dependencies(gs_vision_generate_messages_py _gs_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gs_vision_genpy)
add_dependencies(gs_vision_genpy gs_vision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gs_vision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gs_vision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gs_vision_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gs_vision
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gs_vision_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gs_vision
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gs_vision_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gs_vision
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gs_vision_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gs_vision
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gs_vision_generate_messages_py std_msgs_generate_messages_py)
endif()
