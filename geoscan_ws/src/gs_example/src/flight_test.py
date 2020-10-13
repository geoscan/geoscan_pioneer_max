#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_flight import FlightController
from gs_board import BoardManager
from time import sleep
rospy.init_node("flight_node")

board=BoardManager()
ap=FlightController()

once=False
while not rospy.is_shutdown():
    if (board.runStatus()):
        if not once:
            print("start of programm")
            ap.preflight()
            sleep(1)
            print("preflight")
            ap.takeoff()
            print("takeoff")
            sleep(0.5)
            print("wait")
            ap.goToLocalPoint(0,1,1)
            print("gtlp")
            print("gtlp1")
            ap.goToLocalPoint(1,1,1)
            print("gtlp2")
            ap.goToLocalPoint(1,0,1)
            print("gtlp3")
            ap.goToLocalPoint(0,0,1)
            print("gtlp4")
            ap.updateYaw(1.5)
            ap.landing()
            print("land")
            print("end of programm")
            once=True
