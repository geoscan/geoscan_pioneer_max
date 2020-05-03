#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from rospy import Service,Publisher
from gs_service.msg import RGBgs
from gs_service.srv import Event,EventResponse,Yaw,YawResponse,Pos,PosResponse,PosGPS,PosGPSResponse,Led,LedResponse,Info,InfoResponse,Time,TimeResponse,LpsPos,LpsPosResponse,LpsVel,LpsVelResponse,LpsYaw,LpsYawResponse,Range,RangeResponse,Gyro,GyroResponse,Acl,AclResponse,Ort,OrtResponse,Live,Log,LogResponse,Alt,AltResponse
import serial
from std_msgs.msg import Bool,String
from time import sleep,time

rospy.init_node("ros_serial_node")

p_name=rospy.search_param("port")
port=rospy.get_param(p_name)
ser=serial.Serial(port,9600)
isWrite=False
live=False
log=[]

def read(msg,logging=True):
    global ser
    global isWrite
    global log
    global logger_pub
    out_msg=""
    if(ser.read()==b'&'):
        s=ser.read()
        while(s!=b'#'):
            out_msg+=str(s,encoding='utf-8')
            s=ser.read()
    if(logging):
        log_msg="["+str(time())+"] request: "+msg+" -->"+"["+str(time())+ "] response: "+out_msg
        log.append(log_msg)
        logger_pub.publish(log_msg)
    isWrite=False
    return out_msg

def send(l_msg):
    global ser
    global isWrite
    global log
    global logger_pub

    while (isWrite):
        pass
    isWrite=True
    msg="#"+l_msg+"&"
    ser.write(bytes(msg,'utf-8'))
    log_msg="["+str(time())+"] send: "+l_msg
    log.append(log_msg)
    logger_pub.publish(log_msg)
    return read(l_msg)

def handle_live(req):
    global live
    return live

def handle_log(req):
    global log
    global isWrite
    while isWrite:
        pass
    s=LogResponse(log)
    return s

ev_msgs=("pre","tkff","land","darm")
sost_ev=-1
sost_yw=0
sost_pos=[0.,0.,0.,0.]
sost_gps_pos=[0.,0.,0.]
sost_board_led=[]
sost_module_led=[]
for _ in range(0,4):
    sost_board_led.append(RGBgs(False,False,False))

for _ in range(0,25):
    sost_module_led.append(RGBgs(False,False,False))

alive=Service("geoscan/alive",Live,handle_live)
logger=Service("geoscan/log_service",Log,handle_log)
logger_pub=Publisher("/geoscan/log_topic",String,queue_size=10)
rospy.loginfo("wait connection ...")
tmp=""
while (tmp!="ok"):
    tmp=send("start-")
    if(tmp=="okp"):
        read("start-",logging=False)
        break
sleep(1)
num=send("bnum-")
rospy.loginfo("board connect")
live=True

def handle_event(req):
    global sost_ev
    global ev_msgs
    if (req.event!=sost_ev):
        msg="eve-"+str(req.event)
        otv=send(msg)
        if (otv=="event_err"):
            status=-1
        elif(otv==ev_msgs[req.event]):
            status=1
        else:
            status=-2
        sost_ev=req.event
        return EventResponse(status)
    return EventResponse(1)

def handle_yaw(req):
    global sost_yw
    if(req.y!=sost_yw):
        msg="updy-"+str(round(req.y,2))
        otv=send(msg)
        if(otv=="updy"):
            status=True
        else:
            status=False
        sost_yw=req.y
        return YawResponse(status)
    return YawResponse(True)

def handle_local_pos(req):
    global sost_pos
    n_s=[req.x,req.y,req.z,req.time]
    if(n_s!=sost_pos):
        msg="gtlp-"+str(round(req.x,2))+"-"+str(round(req.y,2))+"-"+str(round(req.z,2))+"-"+str(round(req.time,2))
        otv=send(msg)
        if(otv=="gtlp"):
            status=True
        else:
            status=False
        sost_pos=n_s
        return PosResponse(status)
    return PosResponse(True)

def handle_gps_pos(req):
    global sost_gps_pos
    n_s=[req.latitude,req.longitude,req.altitude]
    if(n_s!=sost_gps_pos):
        msg="gtp-"+str(round(req.latitude,2))+"-"+str(round(req.longitude,2))+"-"+str(round(req.altitude,2))
        otv=send(msg)
        if(otv=="gtp"):
            status=True
        else:
            status=False
        sost_gps_pos=n_s
        return PosGPSResponse(status)
    return PosGPSResponse(True)

def handle_board_led(req):
    global sost_board_led
    leds=req.leds
    j=1
    if(leds!=sost_board_led):
        for i in range(0,len(leds)-1):
            if(leds[i]==leds[i+1]):
                j+=1
        if(j==len(leds)):
            msg="aled-"+str(int(leds[0].r))+"-"+str(int(leds[0].g))+"-"+str(int(leds[0].b))
            otv=send(msg)
            aled=True
        else:
            aled=False
            for i in range(0,len(leds)):
                if (leds[i]!=sost_board_led[i]):
                    msg="led-"+str(i)+"-"+str(int(leds[i].r))+"-"+str(int(leds[i].g))+"-"+str(int(leds[i].b))
                    otv=send(msg)
        if(aled):
            if(otv=="aled"):
                status=True
                sost_board_led=leds
            else:
                status=False
        else:
            if(otv=="led"):
                status=True
                sost_board_led=leds
            else:
                status=False
        return LedResponse(status)
    return LedResponse(True)

def handle_module_led(req):
    global sost_module_led
    leds=req.leds
    j=1
    if(leds!=sost_module_led):
        for i in range(0,len(leds)-1):
            if(leds[i]==leds[i+1]):
                j+=1
        if(j==len(leds)):
            msg="laled-"+str(int(leds[0].r))+"-"+str(int(leds[0].g))+"-"+str(int(leds[0].b))
            otv=send(msg)
            aled=True
        else:
            aled=False
            for i in range(0,len(leds)):
                if (leds[i]!=sost_module_led[i]):
                    msg="lled-"+str(i)+"-"+str(int(leds[i].r))+"-"+str(int(leds[i].g))+"-"+str(int(leds[i].b))
                    otv=send(msg)
        if(aled):
            if(otv=="laled"):
                status=True
                sost_module_led=leds
            else:
                status=False
        else:
            if(otv=="lled"):
                status=True
                sost_module_led=leds
            else:
                status=False
        return LedResponse(status)
    return LedResponse(True)
    
def handle_info(req):
    global num
    return InfoResponse(num)

def handle_time(req):
    msg="time-"
    return TimeResponse(float(send(msg)))

def handle_dltm(req):
    msg="dltm-"
    return TimeResponse(float(send(msg)))

def handle_lntm(req):
    msg="lntm-"
    return TimeResponse(float(send(msg)))

def handle_lps_pos(req):
    msg="lpspos-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="lpspos"):
        return LpsPosResponse(float(l[1]),float(l[2]),float(l[3]))
    return LpsPosResponse(0.,0.,0.)

def handle_lps_vel(req):
    msg="lpsvel-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="lpsvel"):
        return LpsVelResponse(float(l[1]),float(l[2]),float(l[3]))
    return LpsVelResponse(0.,0.,0.)

def handle_lps_yaw(req):
    msg="lpsyaw-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="lpsyaw"):
        return LpsYawResponse(float(l[1]))
    return LpsYawResponse(0.)

def handle_gyro(req):
    msg="gyro-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="gyro"):
        return GyroResponse(float(l[1]),float(l[2]),float(l[3]))
    return GyroResponse(0.,0.,0.)

def handle_acl(req):
    msg="acl-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="acl"):
        return AclResponse(float(l[1]),float(l[2]),float(l[3]))
    return AclResponse(0.,0.,0.)

def handle_ort(req):
    msg="ort-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="ort"):
        return OrtResponse(float(l[1]),float(l[2]),float(l[3]))
    return OrtResponse(0.,0.,0.)    

def handle_range(req):
    msg="range-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="range"):
        return RangeResponse(float(l[1]),float(l[2]),float(l[3]),float(l[4]),float(l[5]))
    return RangeResponse(0.,0.,0.,0.,0.)

def handle_alt(req):
    msg="alt-"
    otv=send(msg)
    l=otv.split(":")
    if(l[0]=="alt"):
        return AltResponse(float(l[1]))
    return AltResponse(0.)

s_ew=Service("geoscan/flight/event_service",Event,handle_event)
s_yw=Service("geoscan/flight/yaw_service",Yaw,handle_yaw)
s_ps=Service("geoscan/flight/local_position_service",Pos,handle_local_pos)
s_gps_ps=Service("geoscan/flight/gps_position_service",PosGPS,handle_gps_pos)
s_led=Service("geoscan/led/board/control_service",Led,handle_board_led)
s_lled=Service("geoscan/led/module/control_service",Led,handle_module_led)
s_info=Service("geoscan/board/info_service",Info,handle_info)
s_tm=Service("geoscan/board/time_service",Time,handle_time)
s_dltm=Service("geoscan/board/delta_time_service",Time,handle_dltm)
s_lntm=Service("geoscan/board/launch_time_service",Time,handle_lntm)
s_lpspos=Service("geoscan/sensors/lpspos_service",LpsPos,handle_lps_pos)
s_lpsvel=Service("geoscan/sensors/lpsvel_service",LpsVel,handle_lps_vel)
s_lpsyaw=Service("geoscan/sensors/lpsyaw_service",LpsYaw,handle_lps_yaw)
s_gyro=Service("geoscan/sensors/gyro_service",Gyro,handle_gyro)
s_acl=Service("geoscan/sensors/accel_service",Acl,handle_acl)
s_ort=Service("geoscan/sensors/orientation_service",Ort,handle_ort)
s_range=Service("geoscan/sensors/range_service",Range,handle_range)
s_altitude=Service("geoscan/sensors/altitude_service",Alt,handle_alt)

while not rospy.is_shutdown():
    pass