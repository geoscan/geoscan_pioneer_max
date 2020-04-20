#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_service.srv import LpsPos,LpsVel,LpsYaw,Gyro,Acl,Ort,Live,Range,Alt
from rospy import ServiceProxy
from std_msgs.msg import Bool

class SensorManager():
    def __init__(self):
        self.error_number=0.
        rospy.wait_for_service("geoscan/alive")
        rospy.wait_for_service("geoscan/sensors/lpspos_service")
        rospy.wait_for_service("geoscan/sensors/lpsvel_service")
        rospy.wait_for_service("geoscan/sensors/lpsyaw_service")
        rospy.wait_for_service("geoscan/sensors/gyro_service")
        rospy.wait_for_service("geoscan/sensors/accel_service")
        rospy.wait_for_service("geoscan/sensors/orientation_service")
        rospy.wait_for_service("geoscan/sensors/range_service")
        self.__alive=ServiceProxy("geoscan/alive",Live)
        self.__lpspos_service=ServiceProxy("geoscan/sensors/lpspos_service",LpsPos)
        self.__lpsvel_service=ServiceProxy("geoscan/sensors/lpsvel_service",LpsVel)
        self.__lpsyaw_service=ServiceProxy("geoscan/sensors/lpsyaw_service",LpsYaw)
        self.__gyro_service=ServiceProxy("geoscan/sensors/gyro_service",Gyro)
        self.__accel_service=ServiceProxy("geoscan/sensors/accel_service",Acl)
        self.__orientation_service=ServiceProxy("geoscan/sensors/orientation_service",Ort)
        self.__range_service=ServiceProxy("geoscan/sensors/range_service",Range)
        self.__altitude_service=ServiceProxy("geoscan/sensors/altitude_service",Alt)

    def lpsPosition(self):
        if(self.__alive().status):
            otv=self.__lpspos_service()
            return otv.lpsX,otv.lpsY,otv.lpsZ
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def lpsVelocity(self):
        if(self.__alive().status):
            otv=self.__lpsvel_service()
            return otv.lpsVelX,otv.lpsVelY,otv.lpsVelZ
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number
        
    def lpsYaw(self):
        if(self.__alive().status):
            return self.__lpsyaw_service().yaw
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number

    def gyro(self):
        if(self.__alive().status):
            otv=self.__gyro_service()
            return otv.gx,otv.gy,otv.gz
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def accel(self):
        if(self.__alive().status):
            otv=self.__accel_service()
            return otv.ax,otv.ay,otv.az
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def orientation(self):
        if(self.__alive().status):
            otv=self.__orientation_service()
            return otv.roll,otv.pitch,otv.azimuth
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def altitude(self):
        if(self.__alive().status):
            return self.__altitude_service().altitude
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number       

    def range(self):
        if(self.__alive().status):
            otv=self.__range_service()
            return otv.distance1,otv.distance2,otv.distance3,otv.distance4,otv.distance5
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number,self.error_number,self.error_number