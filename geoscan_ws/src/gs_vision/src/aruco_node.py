#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import cv2
from cv2 import aruco
from gs_vision.msg import ArUco,ArUco_array
from cv_bridge import CvBridge,CvBridgeError
from rospy import Subscriber,Publisher
from sensor_msgs.msg import Image

rospy.init_node("aruco_node")

res_name=rospy.search_param("image_apr")
cam=rospy.get_param(res_name)

bridge=CvBridge()
pub=Publisher("/geoscan/vision/aruco",ArUco_array,queue_size=10)
sost=ArUco_array()
pub.publish(sost)
aruco_dict=aruco.Dictionary_get(aruco.DICT_6X6_250)
parm=aruco.DetectorParameters_create()

def callback(data):
    global pub
    global bridge
    global sost
    global aruco_dict
    global parm
    try:
        img=bridge.imgmsg_to_cv2(data,"bgr8")
        gray=cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        cor,ids,_=aruco.detectMarkers(gray, aruco_dict, parameters=parm)
        if(len(cor)>0):
            ar_a=ArUco_array()
            for i in range(0,len(cor)):
                ar=ArUco()
                ar.id=ids[i][0]
                ar.x1=cor[i][0][0][0]
                ar.y1=cor[i][0][0][1]
                ar.x2=cor[i][0][1][0]
                ar.y2=cor[i][0][1][1]
                ar.x3=cor[i][0][2][0]
                ar.y3=cor[i][0][2][1]
                ar.x4=cor[i][0][3][0]
                ar.y4=cor[i][0][3][1]
                ar_a.arucos.append(ar)
            sost=ar_a
            pub.publish(ar_a)
        else:
            if(ArUco_array()!=sost):
                pub.publish(ArUco_array())
                sost=ArUco_array()
    except CvBridgeError as e:
        rospy.loginfo(str(e))

sub=Subscriber(cam,Image,callback)

while not rospy.is_shutdown():
    pass