#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_board import BoardManager
from gs_logger import Logger
from gs_module import BoardLedController
from time import sleep

rospy.init_node("logger_test_node")
once=False
board=BoardManager()
logger=Logger()
ledbar=BoardLedController()

while not rospy.is_shutdown():
    if(board.runStatus()):
        if not once:
            print("start of programm")
            print(logger.lastMsgs())
            ledbar.changeAllColor(1,0,0)
            print(logger.lastMsgs())
            print(logger.allMsgs())
            print("end of programm")
            once=True
