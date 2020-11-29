cmake_minimum_required(VERSION 2.8.3)
project(refills_msgs)

find_package(catkin REQUIRED COMPONENTS actionlib actionlib_msgs geometry_msgs message_generation std_msgs sensor_msgs trajectory_msgs)

add_message_files(
  FILES
  FullBodyPosture.msg
  FullBodyPath.msg
  JointPosition.msg
  Barcode.msg
  Separator.msg
  SeparatorArray.msg
)

add_service_files(
  FILES
  FinishPerception.srv
  QueryShelfSystems.srv
  QueryShelfLayers.srv
  QueryFacings.srv
  QueryDetectShelfLayersPath.srv
  QueryDetectFacingsPath.srv
  QueryCountProductsPosture.srv
  CountObjects.srv
  QueryLogging.srv
)

add_action_files(
  FILES
  DetectShelfLayers.action
  DetectFacings.action
  CountProducts.action
  Scanning.action
  ProductCounting.action
  ProductIdentification.action 
)

generate_messages(
  DEPENDENCIES
  actionlib_msgs
  geometry_msgs
  std_msgs
  sensor_msgs
  trajectory_msgs
)

catkin_package(CATKIN_DEPENDS actionlib_msgs geometry_msgs message_runtime std_msgs)
	