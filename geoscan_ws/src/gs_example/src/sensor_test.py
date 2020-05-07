#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_sensors import SensorManager
from gs_board import BoardManager
from time import sleep

rospy.init_node("sensor_test_node")
board=BoardManager()
sensors=SensorManager()
once=False

while not rospy.is_shutdown():
    if(board.runStatus()):
        if not once:
            print("start programm")
            print(sensors.lpsPosition())
            print(sensors.lpsVelocity())
            print(sensors.lpsYaw())
            print(sensors.gyro())
            print(sensors.accel())
            print(sensors.orientation())
            print(sensors.altitude())
            print(sensors.range())
            print("end of programm")
            once=True