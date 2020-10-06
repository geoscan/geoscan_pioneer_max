#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_interfaces.srv import Time,Info,Live
from gs_interfaces.msg import SimpleBatteryState
from rospy import ServiceProxy
from std_msgs.msg import Bool

class BoardManager():

    def __init__(self):
        self.error_number=-255.
        rospy.wait_for_service("geoscan/alive")
        rospy.wait_for_service("geoscan/board/time_service")
        rospy.wait_for_service("geoscan/board/delta_time_service")
        rospy.wait_for_service("geoscan/board/launch_time_service")
        rospy.wait_for_service("geoscan/board/info_service")
        self.__alive=ServiceProxy("geoscan/alive",Live)
        self.__tm_service=ServiceProxy("geoscan/board/time_service",Time)
        self.__dltm_service=ServiceProxy("geoscan/board/delta_time_service",Time)
        self.__lntm_service=ServiceProxy("geoscan/board/launch_time_service",Time)
        self.__info_service=ServiceProxy("geoscan/board/info_service",Info)
    
    def runStatus(self):
        return self.__alive().status

    def boardNumber(self):
        if(self.runStatus()):
            return self.__info_service().num
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return ""

    def time(self):
        if(self.runStatus()):
            return self.__tm_service().time
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number

    def deltaTime(self):
        if(self.runStatus()):
            return self.__dltm_service().time
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number

    def launchTime(self):
        if(self.runStatus()):
            return self.__lntm_service().time
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number
