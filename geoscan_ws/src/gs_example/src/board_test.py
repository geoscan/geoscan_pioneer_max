#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_board import BoardManager
from time import sleep

rospy.init_node("board_test_node")
board=BoardManager()
once=False

while not rospy.is_shutdown():
    if(board.runStatus()):
        if not once:
            print("start of programm")
            print(board.boardNumber())
            sleep(2)
            print(board.time())
            sleep(1)
            print(board.deltaTime())
            sleep(1)
            print(board.launchTime())
            print("end of programm")
            once=True