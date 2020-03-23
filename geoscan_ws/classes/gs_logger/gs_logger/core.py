#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import ServiceProxy
from gs_service.srv import Log

class Logger():
    def __init__(self):
        rospy.wait_for_service("geoscan/log_service")
        self.__log_service=ServiceProxy("geoscan/log_service",Log)
        self.__msgs=[]

    def lastMsgs(self):
        otv=self.__log_service().msgs
        self.__msgs=self.__msgs+otv
        return self.__msgs[len(self.__msgs)-1]
    
    def allMsgs(self):
        self.lastMsgs()
        return self.__msgs
