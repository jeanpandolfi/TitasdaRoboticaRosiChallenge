# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosi_defy: 4 messages, 0 services")

set(MSG_I_FLAGS "-Irosi_defy:/home/rosichallenge/catkin_ws/src/rosi_defy/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosi_defy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_custom_target(_rosi_defy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosi_defy" "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" ""
)

get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_custom_target(_rosi_defy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosi_defy" "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_custom_target(_rosi_defy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosi_defy" "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_custom_target(_rosi_defy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosi_defy" "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" "rosi_defy/RosiMovement:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
)
_generate_msg_cpp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
)
_generate_msg_cpp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
)
_generate_msg_cpp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
)

### Generating Services

### Generating Module File
_generate_module_cpp(rosi_defy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosi_defy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosi_defy_generate_messages rosi_defy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_cpp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_cpp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_cpp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_cpp _rosi_defy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosi_defy_gencpp)
add_dependencies(rosi_defy_gencpp rosi_defy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosi_defy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
)
_generate_msg_eus(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
)
_generate_msg_eus(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
)
_generate_msg_eus(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
)

### Generating Services

### Generating Module File
_generate_module_eus(rosi_defy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosi_defy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosi_defy_generate_messages rosi_defy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_eus _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_eus _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_eus _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_eus _rosi_defy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosi_defy_geneus)
add_dependencies(rosi_defy_geneus rosi_defy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosi_defy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
)
_generate_msg_lisp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
)
_generate_msg_lisp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
)
_generate_msg_lisp(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
)

### Generating Services

### Generating Module File
_generate_module_lisp(rosi_defy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosi_defy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosi_defy_generate_messages rosi_defy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_lisp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_lisp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_lisp _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_lisp _rosi_defy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosi_defy_genlisp)
add_dependencies(rosi_defy_genlisp rosi_defy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosi_defy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
)
_generate_msg_nodejs(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
)
_generate_msg_nodejs(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
)
_generate_msg_nodejs(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rosi_defy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosi_defy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosi_defy_generate_messages rosi_defy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_nodejs _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_nodejs _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_nodejs _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_nodejs _rosi_defy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosi_defy_gennodejs)
add_dependencies(rosi_defy_gennodejs rosi_defy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosi_defy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
)
_generate_msg_py(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
)
_generate_msg_py(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
)
_generate_msg_py(rosi_defy
  "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
)

### Generating Services

### Generating Module File
_generate_module_py(rosi_defy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosi_defy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosi_defy_generate_messages rosi_defy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovement.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_py _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/HokuyoReading.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_py _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/ManipulatorJoints.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_py _rosi_defy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rosichallenge/catkin_ws/src/rosi_defy/msg/RosiMovementArray.msg" NAME_WE)
add_dependencies(rosi_defy_generate_messages_py _rosi_defy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosi_defy_genpy)
add_dependencies(rosi_defy_genpy rosi_defy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosi_defy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosi_defy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosi_defy_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosi_defy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosi_defy_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosi_defy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosi_defy_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosi_defy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosi_defy_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosi_defy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosi_defy_generate_messages_py std_msgs_generate_messages_py)
endif()
