#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import Publisher
from std_msgs.msg import Float32
import RPi.GPIO as GPIO
from time import sleep
from time import time

class Ultrasonic:
    def __init__(self,trig,echo):
        self.TRIG=trig
        self.ECHO=echo
        self.sleep_time=0.0051
        
        GPIO.setwarnings(False)
        GPIO.setmode(GPIO.BCM)
        
        GPIO.setup(self.TRIG,GPIO.OUT)
        GPIO.setup(self.ECHO,GPIO.IN)
        
    def getDistance(self):
        try:
            GPIO.output(self.TRIG,False)
            sleep(0.0001)
            GPIO.output(self.TRIG,True)
            sleep(0.005)
            GPIO.output(self.TRIG,False)
            i=0
            err=550
            while GPIO.input(self.ECHO) == 0:
                start = time()
                i+=1
                if (i>err):
                    return float("inf")
                
            i=0
            while (GPIO.input(self.ECHO) == 1):
                end = time()
                i+=1
                if (i>err):
                    return float("inf")
                
            duration=end-start

            distance=duration*17150

            distance=round(distance,2)
            
            return distance
        except:
            return float("inf")

rospy.init_node("ultrasonic_node")

echo_p=rospy.search_param("echo")
echo=int(rospy.get_param(echo_p))
trig_p=rospy.search_param("trig")
trig=int(rospy.get_param(trig_p))
pub=Publisher("ultrasonic_sensor/trig_"+str(trig)+"_echo_"+str(echo),Float32,queue_size=10)
ultrasonic=Ultrasonic(trig,echo)

while not rospy.is_shutdown():
    distance=ultrasonic.getDistance()
    pub.publish(Float32(distance))