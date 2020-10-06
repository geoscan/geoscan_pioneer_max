#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import struct
import serial
from rospy import Service,Publisher
from gs_interfaces.srv import Event,EventResponse
from gs_interfaces.srv import Yaw,YawResponse
from gs_interfaces.srv import Position,PositionResponse
from gs_interfaces.srv import PositionGPS,PositionGPSResponse
from gs_interfaces.srv import Led,LedResponse
from gs_interfaces.srv import Info,InfoResponse
from gs_interfaces.srv import Time,TimeResponse
from gs_interfaces.srv import LpsPos,LpsPosResponse
from gs_interfaces.srv import LpsVel,LpsVelResponse
from gs_interfaces.srv import LpsYaw,LpsYawResponse
from gs_interfaces.srv import Range,RangeResponse
from gs_interfaces.srv import Gyro,GyroResponse
from gs_interfaces.srv import Accel,AccelResponse
from gs_interfaces.srv import Orientation,OrientationResponse
from gs_interfaces.srv import Live
from gs_interfaces.srv import Log,LogResponse
from gs_interfaces.srv import Altitude,AltitudeResponse
from gs_interfaces.msg import SimpleBatteryState,PointGPS
from std_msgs.msg import Bool,String,ColorRGBA
from geometry_msgs.msg import Point
from time import sleep,time

rospy.init_node("ros_serial_node")

p_name=rospy.search_param("port")
port=rospy.get_param(p_name)
ser=serial.Serial(port,9600,timeout=1)
isWrite=False
live=False
log=[]
ev_msgs=(b"prfl",b"tkff",b"land")
dbg_msgs=(b"egst",b"ptrd",b"crld")
sost_ev=-1
sost_yw=0
sost_pos=[0.,0.,0.,0.]
sost_gps_pos=[0.,0.,0.]
sost_board_led=[]
sost_module_led=[]
tmp=b""
last_check_time=0.0
first=False
isRead=False

def send_log(msg):
    global log
    global logger_pub
    msg="["+str(time())+"] "+msg
    log.append(msg)
    logger_pub.publish(msg)

def msg_exchange(msg):
    global ser
    global isWrite
    global live
    global last_check_time
    global first
    while (isWrite):
        pass
    isWrite=True
    ser.write(msg)

    out_msg=b''
    is_taking=False
    while True:
        s=ser.read()
        last_check_time=time()
        if(s==b''):
            if(live and first):
                live=False
                rospy.loginfo("Board disconnect")
                rospy.loginfo("Try to reconnect with the board")
                send_log("board-live: disconnect")
            ser.write(msg)
        else:
            if(not live and first):
               live=True
               rospy.loginfo("Board reconnect")
               send_log("board-live: reconnect")
            if(is_taking):
                if(s==b'#'):
                    is_taking=False
                    break
                else:
                    out_msg+=s
            elif(s==b'&'):
                is_taking=True
                out_msg=b''
    isWrite=False
    return out_msg

def heartbeat():
    global last_check_time
    global battery_pub
    if (time()-last_check_time>3.0):
        status=msg_exchange(struct.pack(">6s",b'#stts&'))
        if(status==b'oks'):
            try:
                l,current,charge=struct.unpack(">4sff",msg_exchange(struct.pack(">6s",b'#powr&')))
                if(l == b'powr'):
                    state=SimpleBatteryState()
                    state.header.stamp=rospy.Time.now()
                    state.current=current
                    state.change=charge
                    battery_pub.publish(state)
            except:
                pass

def read_event():
    global ser
    global isRead
    out_msg=b''
    is_taking=False
    isRead=True
    while True:
        if(not isWrite):
            s=ser.read()
            if(s==b''):
                heartbeat()
            elif(is_taking):
                if(s==b'#'):
                    is_taking=False
                    break
                else:
                    out_msg+=s
            elif(s==b'&'):
                is_taking=True
                out_msg=b''
    isRead=False
    return out_msg

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

def handle_event(req):
    global sost_ev
    global ev_msgs
    try:
        if (req.event!=sost_ev):
            msg=struct.pack(">5s4s1s",b"#evnt",ev_msgs[req.event],b"&")
            send_log("send: change event to "+ str(ev_msgs[req.event],encoding='utf-8'))
            otv=struct.unpack(">4s",msg_exchange(msg))[0]
            send_log("response: "+ str(otv, encoding='utf-8'))
            if (otv==b"ever"):
                status=-1
            elif(otv==ev_msgs[req.event]):
                if(dbg_msgs[req.event]!=None):
                    ev=struct.unpack(">4s",read_event())[0]
                    send_log("event-response: "+ str(ev, encoding='utf-8'))
                    if(ev==dbg_msgs[req.event]):
                        status=1
                else:
                    status=1
            else:
                status=-2
            sost_ev=req.event
            return EventResponse(status)
    except:
        return EventResponse(-3)
    return EventResponse(1)

def handle_yaw(req):
    global sost_yw
    try:
        if(req.angle!=sost_yw):
            msg=struct.pack(">5sf1s",b"#updy",round(req.angle,2),b"&")
            send_log("send: update yaw - "+ str(round(req.angle,2)))
            otv=struct.unpack(">4s",msg_exchange(msg))[0]
            send_log("response: "+ str(otv, encoding='utf-8'))
            if(otv==b"updy"):
                status=True
            else:
                status=False
            sost_yw=req.angle
            return YawResponse(status)
    except:
        return YawResponse(False)
    return YawResponse(True)

def handle_local_pos(req):
    global sost_pos
    n_s=[req.position.x,req.position.y,req.position.z,req.time]
    try:
        if(n_s!=sost_pos):
            msg=struct.pack(">5sffff1s",b"#gtlp",round(n_s[0],2),round(n_s[1],2),round(n_s[2],2),round(n_s[3],2),b"&")
            send_log("send: go to local point - x: "+str(round(n_s[0],2))+", y: "+str(round(n_s[1],2))+", z: "+ str(round(n_s[2],2))+", time:"+str(round(n_s[3],2)))
            otv=struct.unpack(">4s",msg_exchange(msg))[0]
            send_log("response: "+ str(otv, encoding='utf-8'))
            if(otv==b"gtlp"):
                ev=struct.unpack(">4s",read_event())[0]
                send_log("event-response: "+ str(ev, encoding='utf-8'))
                if(ev==dbg_msgs[1]):
                    status=True
                else:
                    status=False
            else:
                status=False
            sost_pos=n_s
            return PositionResponse(status)
    except:
        return PositionResponse(False)
    return PositionResponse(True)

def handle_gps_pos(req):
    global sost_gps_pos
    n_s=[req.position.latitude,req.position.longitude,req.position.altitude]
    try:
        if(n_s!=sost_gps_pos):
            msg=struct.pack(">5sfff1s",b"#gtpg",round(n_s[0],2),round(n_s[1],2),round(n_s[2],2),b"&")
            send_log("send: go to GPS position - latitude: "+str(round(n_s[0],2))+", longitude: "+str(round(n_s[1],2))+", altitude: "+str(round(n_s[2],2),b"&"))
            otv=struct.unpack(">4s",msg_exchange(msg))[0]
            send_log("response: "+ str(otv, encoding='utf-8'))
            if(otv==b"gtpg"):
                ev=struct.unpack(">4s",read_event())[0]
                send_log("event-response: "+ str(ev, encoding='utf-8'))
                if(ev==dbg_msgs[1]):
                    status=True
                else:
                    status=False
            else:
                status=False
            sost_gps_pos=n_s
            return PositionGPSResponse(status)
    except:
        return PositionGPSResponse(False)
    return PositionGPSResponse(True)

def handle_board_led(req):
    global sost_board_led
    leds=req.leds
    j=1
    try:
        if(leds!=sost_board_led):
            for i in range(0,len(leds)-1):
                if(leds[i]==leds[i+1]):
                    j+=1
            if(j==len(leds)):
                msg=struct.pack(">5sfff1s",b"#aled",int(leds[0].r),int(leds[0].g),int(leds[0].b),b"&")
                send_log("send: change all board leds color - r: "+str(int(leds[0].r))+", g: "+str(int(leds[0].g))+", b: "+str(int(leds[0].b)))
                otv=struct.unpack(">4s",msg_exchange(msg))[0]
                send_log("response: "+ str(otv, encoding='utf-8'))
                aled=True
            else:
                aled=False
                for i in range(0,len(leds)):
                    if (leds[i]!=sost_board_led[i]):
                        msg=struct.pack(">5sBfff1s",b"#bled",i,int(leds[i].r),int(leds[i].g),int(leds[i].b),b"&")
                        send_log("send: change board leds color - n: "+str(i)+", r: "+str(int(leds[0].r))+", g: "+str(int(leds[0].g))+", b: "+str(int(leds[0].b)))
                        otv=struct.unpack(">4s",msg_exchange(msg))[0]
                        send_log("response: "+ str(otv, encoding='utf-8'))
            if(aled):
                if(otv==b"aled"):
                    status=True
                    sost_board_led=leds
                else:
                    status=False
            else:
                if(otv==b"bled"):
                    status=True
                    sost_board_led=leds
                else:
                    status=False
            return LedResponse(status)
    except:
        return LedResponse(False)
    return LedResponse(True)

def handle_module_led(req):
    global sost_module_led
    leds=req.leds
    j=1
    try:
        if(leds!=sost_module_led):
            for i in range(0,len(leds)-1):
                if(leds[i]==leds[i+1]):
                    j+=1
            if(j==len(leds)):
                msg=struct.pack(">5sfff1s",b"#lled",int(leds[0].r),int(leds[0].g),int(leds[0].b),b"&")
                send_log("send: change all module leds color - r: "+str(int(leds[0].r))+", g: "+str(int(leds[0].g))+", b: "+str(int(leds[0].b)))
                otv=struct.unpack(">4s",msg_exchange(msg))[0]
                send_log("response: "+ str(otv, encoding='utf-8'))
                aled=True
            else:
                aled=False
                for i in range(0,len(leds)):
                    if (leds[i]!=sost_module_led[i]):
                        msg=struct.pack(">5sBfff1s",b"#mled",i,int(leds[i].r),int(leds[i].g),int(leds[i].b),b"&")
                        send_log("send: change module leds color - n: "+str(i)+", r: "+str(int(leds[0].r))+", g: "+str(int(leds[0].g))+", b: "+str(int(leds[0].b)))
                        otv=struct.unpack(">4s",msg_exchange(msg))[0]
                        send_log("response: "+ str(otv, encoding='utf-8'))
            if(aled):
                if(otv==b"lled"):
                    status=True
                    sost_module_led=leds
                else:
                    status=False
            else:
                if(otv==b"mled"):
                    status=True
                    sost_module_led=leds
                else:
                    status=False
            return LedResponse(status)
    except:
        return LedResponse(False)
    return LedResponse(True)
    
def handle_info(req):
    try:
        l,num=struct.unpack(">4sB",msg_exchange(struct.pack(">6s",b"#bnum&")))
        if(l==b'bnum'):
            return InfoResponse(str(num))
    except:
        return InfoResponse("error")
    return InfoResponse("error")

def handle_time(req):
    try:
        msg=struct.pack(">6s",b"#time&")
        send_log("send: time request")
        l,otv=struct.unpack(">4sf",msg_exchange(msg))
        send_log("response: "+ str(otv))
        if(l==b'time'):
            return TimeResponse(otv)
    except:
        pass
    return TimeResponse(0.)

def handle_dltm(req):
    try:
        msg=struct.pack(">6s",b"#dltm&")
        send_log("send: delta time request")
        l,otv=struct.unpack(">4sf",msg_exchange(msg))
        send_log("response: "+ str(otv))
        if(l==b'dltm'):
            return TimeResponse(otv)
    except:
        pass
    return TimeResponse(0.)

def handle_lntm(req):
    try:
        msg=struct.pack(">6s",b"#lntm&")
        send_log("send: launch time request")
        l,otv=struct.unpack(">4sf",msg_exchange(msg))
        send_log("response: "+ str(otv))
        if(l==b'lntm'):
            return TimeResponse(otv)
    except:
        pass
    return TimeResponse(0.)


def handle_lps_pos(req):
    try:
        msg=struct.pack(">6s",b"#lpsp&")
        send_log("send: LPS position request")
        l,x,y,z=struct.unpack(">4sfff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([x,y,z]))
        if(l==b"lpsp"):
            point=Point()
            point.x=x
            point.y=y
            point.z=z
            return LpsPosResponse(point)
    except:
        pass
    return LpsPosResponse(Point())

def handle_lps_vel(req):
    try:
        msg=struct.pack(">6s",b"#lpsv&")
        send_log("send: LPS velocity request")
        l,x,y,z=struct.unpack(">4sfff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([x,y,z]))
        if(l==b"lpsv"):
            point=Point()
            point.x=x
            point.y=y
            point.z=z
            return LpsVelResponse(point)
    except:
        pass
    return LpsVelResponse(Point())

def handle_lps_yaw(req):
    try:
        msg=struct.pack(">6s",b"#lpsy&")
        send_log("send: LPS yaw request")
        l,yaw=struct.unpack(">4sf",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str(yaw))
        if(l==b"lpsy"):
            return LpsYawResponse(yaw)
    except:
        pass
    return LpsYawResponse(0.)

def handle_gyro(req):
    try:
        msg=struct.pack(">6s",b"#gyro&")
        send_log("send: Gyro request")
        l,x,y,z=struct.unpack(">4sfff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([x,y,z]))
        if(l==b"gyro"):
            point=Point()
            point.x=x
            point.y=y
            point.z=z
            return GyroResponse(point)
    except:
        pass
    return GyroResponse(Point())

def handle_acl(req):
    try:
        msg=struct.pack(">6s",b"#accl&")
        send_log("send: Accel request")
        l,x,y,z=struct.unpack(">4sfff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([x,y,z]))
        if(l==b"accl"):
            point=Point()
            point.x=x
            point.y=y
            point.z=z
            return AccelResponse(point)
    except:
        pass
    return AccelResponse(Point())

def handle_ort(req):
    try:
        msg=struct.pack(">6s",b"#ornt&")
        send_log("send: Orientation request")
        l,roll,pitch,azimuth=struct.unpack(">4sfff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([roll,pitch,azimuth]))
        if(l==b"ornt"):
            return OrientationResponse(roll,pitch,azimuth)
    except:
        pass
    return OrientationResponse(0.,0.,0.)    

def handle_range(req):
    try:
        msg=struct.pack(">6s",b"#rnge&")
        send_log("send: Range request")
        l,r1,r2,r3,r4,r5=struct.unpack(">4sfffff",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str([r1,r2,r3,r4,r5]))
        if(l==b"rnge"):
            return RangeResponse(r1,r2,r3,r4,r5)
    except:
        pass
    return RangeResponse(0.,0.,0.,0.,0.)

def handle_alt(req):
    try:
        msg=struct.pack(">6s",b"#altd&")
        send_log("send: Altitude request")
        l,h=struct.unpack(">4sf",msg_exchange(msg))
        send_log("response: "+str(l,encoding='utf-8')+" - "+str(h))
        if(l[0]==b"altd"):
            return AltitudeResponse(h)
    except:
        pass
    return AltitudeResponse(0.)
    
alive=Service("geoscan/alive",Live,handle_live)
logger=Service("geoscan/log_service",Log,handle_log)
logger_pub=Publisher("geoscan/log_topic",String,queue_size=10)
battery_pub=Publisher("geoscan/battery_state",SimpleBatteryState,queue_size=10)
s_ew=Service("geoscan/flight/event_service",Event,handle_event)
s_yw=Service("geoscan/flight/yaw",Yaw,handle_yaw)
s_ps=Service("geoscan/flight/local_position_service",Position,handle_local_pos)
s_gps_ps=Service("geoscan/flight/gps_position_service",PositionGPS,handle_gps_pos)
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
s_acl=Service("geoscan/sensors/accel_service",Accel,handle_acl)
s_ort=Service("geoscan/sensors/orientation_service",Orientation,handle_ort)
s_range=Service("geoscan/sensors/range_service",Range,handle_range)
s_altitude=Service("geoscan/sensors/altitude_service",Altitude,handle_alt)

while not rospy.is_shutdown():
    if(not first):
        for _ in range(0,4):
            sost_board_led.append(ColorRGBA())

        for _ in range(0,25):
            sost_module_led.append(ColorRGBA())

        rospy.loginfo("Wait start connection ...")
        send_log("wait start connect")
        tmp=b''
        while (tmp!=b"oks"):
            msg=struct.pack(">6s",b"#strt&")
            try:
                tmp=struct.unpack(">3s",msg_exchange(msg))[0]
            except:
                tmp=b''
        sleep(1.5)
        rospy.loginfo("Board start connect - done")
        send_log("start connect - done")
        live=True
        first=True
    elif(not isRead):
        heartbeat()
