#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_board import BoardManager
from gs_module import BoardLedController
from time import sleep

rospy.init_node("led_test_node")
board=BoardManager()
led=BoardLedController()
once=False

while not rospy.is_shutdown():
    if(board.runStatus()):
        if not once:
            print("start of programm")
            led.changeColor(0,0,1,0)
            sleep(1)
            led.changeColor(2,1,0,0)
            sleep(1)
            led.changeColor(3,0,0,1)
            sleep(1)
            led.changeAllColor(1,0,1)
            print("end of programm")
            once=True
