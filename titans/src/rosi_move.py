#! /usr/bin/env python

import rospy
from titans.msg import RosiMovement
from titans.msg import RosiMovementArray
# nó utilizado para movimentação(rodas)
rospy.init_node('rosi_move')
# registro para editores
publisher = rospy.Publisher('/rosi/command_traction_speed', RosiMovementArray, queue_size=1)

while not rospy.is_shutdown():
    #lista de comandos para as rodas
    traction_command_list = RosiMovementArray()

    for i in range(4):

        traction_command = RosiMovement()
	#indicando qual roda passará o comando
        traction_command.nodeID = i+1
        
        if i < 2:
	    #atribuindo valores às rodas esquerdas
            traction_command.joint_var = 30.00
        else:
            #atribuindo valores às rodas esquerdas
            traction_command.joint_var = 30.00
	#Adicionando os comandos a serem enviados na lista
        traction_command_list.movement_array.append(traction_command)
    # Enviando para o nó 
    publisher.publish(traction_command_list)
    
