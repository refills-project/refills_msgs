int8 NO_TYPE=0
int8 BASE=1
int8 CAMERA=2
int8 BOTH=3
int8 JOINT=4

int8 type

# Goal position for the camera, but only using the base
geometry_msgs/PoseStamped base_pos

# position of the non-base joints of the robot
geometry_msgs/PoseStamped camera_pos

sensor_msgs/JointState goal_joint_state