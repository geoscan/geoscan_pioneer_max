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
            print("preflight")
            ap.takeoff()
            print("takeoff")
            ap.goToLocalPoint(0,0.5,0.5)
            print("gtlp1")
            ap.goToLocalPoint(0.5,0.5,0.5)
            print("gtlp2")
            ap.goToLocalPoint(0.5,0,0.5)
            print("gtlp3")
            ap.goToLocalPoint(0,0,0.5)
            print("gtlp4")
            ap.landing()
            print("land")
            print("end of programm")
            once=True
