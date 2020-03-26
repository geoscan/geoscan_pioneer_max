#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import ServiceProxy
from gs_service.srv import Log

class Logger():
    def __init__(self):
        rospy.wait_for_service("geoscan/log_service")
        self.__log_service=ServiceProxy("geoscan/log_service",Log)

    def lastMsgs(self):
        otv=self.__log_service().msgs
        return otv[len(otv)-1]
    
    def allMsgs(self):
        return self.__log_service().msgs
