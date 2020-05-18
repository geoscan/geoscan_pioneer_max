#!/usr/bin/python3
import rospy
from gs_board import *
from gs_flight import *
from gs_module import *
from gs_sensors import *
from gs_logger import *
rospy.init_node("pioneer_bricks_node")
board = BoardManager()
flight=FlightController()
led_b=BoardLedController()
led_m=ModuleLedController()
sensors=SensorManager()
log=Logger()
led_b.changeAllColor(0,0,0)
led_m.changeAllColor(0,0,0)
print('asasa')
