#! /usr/bin/env python

import rospy
from rosi_defy.msg import RosiMovement
from rosi_defy.msg import ManipulatorJoints
from rosi_defy.msg import RosiMovementArray

rospy.init_node('rosi_move')

publisher = rospy.Publisher('/rosi/command_traction_speed', RosiMovementArray, queue_size=1)

while not rospy.is_shutdown():
    traction_command_list = RosiMovementArray()

    for i in range(4):
        traction_command = RosiMovement()
        traction_command.nodeID = i+1
        
        if i < 2:
            traction_command.joint_var = 30.00
        else:
            traction_command.joint_var = 30.00

        traction_command_list.movement_array.append(traction_command)

    publisher.publish(traction_command_list)
    