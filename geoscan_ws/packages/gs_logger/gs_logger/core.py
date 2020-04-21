#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import ServiceProxy,Subscriber
from std_msgs.msg import String
from gs_service.srv import Log

class Logger():
    def __callback(self,data):
        self.__msg=data.data

    def __init__(self):
        self.__msg=""
        rospy.wait_for_service("geoscan/log_service")
        self.__log_service=ServiceProxy("geoscan/log_service",Log)
        self.__log_sub=Subscriber("geoscan/log_topic",String,self.__callback)

    def lastMsgs(self):
        return self.__msg
    
    def allMsgs(self):
        return self.__log_service().msgs
