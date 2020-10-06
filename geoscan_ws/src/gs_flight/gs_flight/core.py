#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import ServiceProxy
from std_msgs.msg import Bool
from geometry_msgs.msg import Point
from gs_interfaces.srv import Event,Yaw,Position,PositionGPS,Live
from gs_interfaces.msg import PointGPS

"""
0-preflight
1-takeoff
2-landing
3-engines_disarm
"""

class FlightController():
    
    def __init__(self):
        rospy.wait_for_service("geoscan/alive")
        rospy.wait_for_service("geoscan/flight/event_service")
        rospy.wait_for_service("geoscan/flight/yaw")
        rospy.wait_for_service("geoscan/flight/local_position_service")
        rospy.wait_for_service("geoscan/flight/gps_position_service")
        self.__alive=ServiceProxy("geoscan/alive",Live)
        self.__ev_service=ServiceProxy("geoscan/flight/event_service",Event)
        self.__yw_service=ServiceProxy("geoscan/flight/yaw",Yaw)
        self.__ps_service=ServiceProxy("geoscan/flight/local_position_service",Position)
        self.__gps_service=ServiceProxy("geoscan/flight/gps_position_service",PositionGPS)
    
    def goToLocalPoint(self,x,y,z,time=0):
        if(self.__alive().status):
            while True:
                point=Point()
                point.x=x
                point.y=y
                point.z=z
                status=self.__ps_service(point,time).status
                if(status):
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")

    def goToPoint(self,latitude,longitude,altitude):
        if(self.__alive().status):
            while True:
                point_gps=PointGPS()
                point_gps.latitude=latitude
                point_gps.longitude=longitude
                point_gps.altitude=altitude
                status=self.__gps_service(point_gps).status
                if(status):
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")
    
    def updateYaw(self,angle):
        if(self.__alive().status):
            while True:
                status=self.__yw_service(angle).status
                if(status):
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")

    def preflight(self):
        if(self.__alive().status):
            while True:
                status=self.__ev_service(0).status
                if(status==1):
                    break
                elif(status==-1):
                    rospy.loginfo("Somethigs wrong")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")

    def takeoff(self):
        if(self.__alive().status):
            status=0
            while True:
                status=self.__ev_service(1).status
                if(status==1):
                    break
                elif(status==-1):
                    rospy.loginfo("Somethigs wrong")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")

    def landing(self):
        if(self.__alive().status):
            status=0
            while True:
                status=self.__ev_service(2).status
                if(status==1):
                    break
                elif(status==-1):
                    rospy.loginfo("Somethigs wrong")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")