cmake_minimum_required(VERSION 2.8.3)
project(refills_msgs)

if(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(MSG_DEPS
  std_msgs
  geometry_msgs
  sensor_msgs
  actionlib_msgs
)

set(MSG_FILES
  Barcode.msg
  Separator.msg
  SeparatorArray.msg
 )

set(SRV_FILES
  CountObjects.srv
)

set(ACT_FILES
  Scanning.action
  ProductCounting.action
  ProductIdentification.action 
)

find_package(catkin REQUIRED COMPONENTS
  ${MSG_DEPS}
  message_generation
  actionlib
)

add_message_files(DIRECTORY msg FILES ${MSG_FILES})
add_service_files(DIRECTORY srv FILES ${SRV_FILES})
add_action_files(DIRECTORY action FILES ${ACT_FILES})

generate_messages(DEPENDENCIES ${MSG_DEPS})

catkin_package(DEPENDS ${MSG_DEPS} message_runtime actionlib)
