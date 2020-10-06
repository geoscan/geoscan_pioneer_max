#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from gs_interfaces.srv import LpsPos,LpsVel,LpsYaw,Gyro,Accel,Orientation,Live,Range,Altitude
from gs_interfaces.msg import SimpleBatteryState
from geometry_msgs.msg import Point
from rospy import ServiceProxy,Subscriber
from std_msgs.msg import Bool

class SensorManager():
    def __callback(self,data):
        self.__battery_state=data

    def __init__(self):
        self.error_number=-255.
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
        self.__accel_service=ServiceProxy("geoscan/sensors/accel_service",Accel)
        self.__orientation_service=ServiceProxy("geoscan/sensors/orientation_service",Orientation)
        self.__range_service=ServiceProxy("geoscan/sensors/range_service",Range)
        self.__altitude_service=ServiceProxy("geoscan/sensors/altitude_service",Altitude)
        self.__battery_state=SimpleBatteryState()
        self.__power_sub=Subscriber("geoscan/battery_state",SimpleBatteryState,self.__callback)

    def lpsPosition(self):
        if(self.__alive().status):
            otv=self.__lpspos_service()
            return otv.lps_position.x,otv.lps_position.y,otv.lps_position.z
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def lpsVelocity(self):
        if(self.__alive().status):
            otv=self.__lpsvel_service()
            return otv.lps_velocity.x,otv.lps_velocity.y,otv.lps_velocity.z
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number
        
    def lpsYaw(self):
        if(self.__alive().status):
            return self.__lpsyaw_service().angle
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number

    def gyro(self):
        if(self.__alive().status):
            otv=self.__gyro_service()
            return otv.gyro.x,otv.gyro.y,otv.gyro.z
        else:
            rospy.loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def accel(self):
        if(self.__alive().status):
            otv=self.__accel_service()
            return otv.accel.x,otv.accel.y,otv.accel.z
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

    def power(self):
        return self.__battery_state.current,self.__battery_state.charge,self.__battery_state.secs