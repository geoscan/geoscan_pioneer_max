#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_interfaces.srv import Led,Live
from rospy import ServiceProxy
from std_msgs.msg import Bool,ColorRGBA

class BoardLedController():
    def __init__(self):
        self.__leds=[]
        for _ in range(0,4):
            self.__leds.append(ColorRGBA())
        rospy.wait_for_service("geoscan/alive")
        rospy.wait_for_service("geoscan/led/board/control_service")
        self.__alive=ServiceProxy("geoscan/alive",Live)
        self.__led_service=ServiceProxy("geoscan/led/board/control_service",Led)

    def changeColor(self,i,r,g,b):
        if (self.__alive().status):
            while True:
                try:
                    if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                        color=ColorRGBA()
                        color.r=r
                        color.g=g
                        color.b=b
                        self.__leds[i]=color
                        status=self.__led_service(self.__leds).status
                        if(status):
                            break
                    else:
                        rospy.loginfo("Сolor value should be 0 or 1")
                        break
                except:
                    rospy.loginfo("Index led: "+str(i)+" is not correct")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")
    
    def changeAllColor(self,r,g,b):
        if (self.__alive().status):
            while True:
                if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                    for i in range(0,len(self.__leds)):
                        color=ColorRGBA()
                        color.r=r
                        color.g=g
                        color.b=b
                        self.__leds[i]=color
                    status=self.__led_service(self.__leds).status
                    if(status):
                        break
                else:
                    rospy.loginfo("Сolor value should be 0 or 1")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")

class ModuleLedController():
    def __init__(self):
        self.__leds=[]
        for _ in range(0,25):
            self.__leds.append(ColorRGBA())
        rospy.wait_for_service("geoscan/alive")
        rospy.wait_for_service("geoscan/led/module/control_service")
        self.__alive=ServiceProxy("geoscan/alive",Live)
        self.__led_service=ServiceProxy("geoscan/led/module/control_service",Led)

    def changeColor(self,i,r,g,b):
        if (self.__alive().status):
            while True:
                try:
                    if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                        color=ColorRGBA()
                        color.r=r
                        color.g=g
                        color.b=b
                        self.__leds[i]=color
                        status=self.__led_service(self.__leds).status
                        if(status):
                            break
                    else:
                        rospy.loginfo("Сolor value should be 0 or 1")
                        break
                except:
                    rospy.loginfo("Index led: "+str(i)+" is not correct")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")
    
    def changeAllColor(self,r,g,b):
        if (self.__alive().status):
            while True:
                if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                    for i in range(0,len(self.__leds)):
                        color=ColorRGBA()
                        color.r=r
                        color.g=g
                        color.b=b
                        self.__leds[i]=color
                    status=self.__led_service(self.__leds).status
                    if(status):
                        break
                else:
                    rospy.loginfo("Сolor value should be 0 or 1")
                    break
        else:
            rospy.loginfo("Wait, connecting to flight controller")
