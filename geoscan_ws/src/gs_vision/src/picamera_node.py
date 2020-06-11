#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import cv2
from rospy import Publisher
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import Image
from picamera.array import PiRGBArray
from picamera import PiCamera

rospy.init("picamera_node")
res_name=rospy.search_param("resolution")
res=str(rospy.get_param(res_name)).replace(" ","").split(",")
size=(int(res[0]),int(res[1]))

camera=PiCamera()
camera.resolution(size)
cam_capture=PiRGBArray(camera,size=size)

bridge=CvBridge()

pub=Publisher("geoscan/vision/picamera_capture",Image,queue_size=10)

for frame in camera.capture_continuous(cam_capture,format="bgr", use_video_port=True):
    try:
        pub.publish(bridge.cv2_to_imgmsg(frame.array,encoding="passthrough"))
    except CvBridgeError as e:
        rospy.loginfo("picamera capture is not correct")
    if rospy.is_shutdown():
        break
