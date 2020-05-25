# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pixel_to_servo: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipixel_to_servo:C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pixel_to_servo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_custom_target(_pixel_to_servo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pixel_to_servo" "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pixel_to_servo
  "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pixel_to_servo
)

### Generating Services

### Generating Module File
_generate_module_cpp(pixel_to_servo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pixel_to_servo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pixel_to_servo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pixel_to_servo_generate_messages pixel_to_servo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_dependencies(pixel_to_servo_generate_messages_cpp _pixel_to_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pixel_to_servo_gencpp)
add_dependencies(pixel_to_servo_gencpp pixel_to_servo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pixel_to_servo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pixel_to_servo
  "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pixel_to_servo
)

### Generating Services

### Generating Module File
_generate_module_eus(pixel_to_servo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pixel_to_servo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pixel_to_servo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pixel_to_servo_generate_messages pixel_to_servo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_dependencies(pixel_to_servo_generate_messages_eus _pixel_to_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pixel_to_servo_geneus)
add_dependencies(pixel_to_servo_geneus pixel_to_servo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pixel_to_servo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pixel_to_servo
  "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pixel_to_servo
)

### Generating Services

### Generating Module File
_generate_module_lisp(pixel_to_servo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pixel_to_servo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pixel_to_servo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pixel_to_servo_generate_messages pixel_to_servo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_dependencies(pixel_to_servo_generate_messages_lisp _pixel_to_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pixel_to_servo_genlisp)
add_dependencies(pixel_to_servo_genlisp pixel_to_servo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pixel_to_servo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pixel_to_servo
  "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pixel_to_servo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pixel_to_servo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pixel_to_servo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pixel_to_servo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pixel_to_servo_generate_messages pixel_to_servo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_dependencies(pixel_to_servo_generate_messages_nodejs _pixel_to_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pixel_to_servo_gennodejs)
add_dependencies(pixel_to_servo_gennodejs pixel_to_servo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pixel_to_servo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pixel_to_servo
  "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pixel_to_servo
)

### Generating Services

### Generating Module File
_generate_module_py(pixel_to_servo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pixel_to_servo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pixel_to_servo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pixel_to_servo_generate_messages pixel_to_servo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/opt/Turret_Surveillance_System/src/pixel_to_servo/msg/target_location.msg" NAME_WE)
add_dependencies(pixel_to_servo_generate_messages_py _pixel_to_servo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pixel_to_servo_genpy)
add_dependencies(pixel_to_servo_genpy pixel_to_servo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pixel_to_servo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pixel_to_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pixel_to_servo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pixel_to_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pixel_to_servo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pixel_to_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pixel_to_servo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pixel_to_servo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pixel_to_servo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pixel_to_servo)
  install(CODE "execute_process(COMMAND \"C:/opt/python27amd64/python.exe\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pixel_to_servo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pixel_to_servo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
