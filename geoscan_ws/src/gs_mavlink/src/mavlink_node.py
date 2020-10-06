#!/usr/bin/env python3
#!-*- coding: utf-8 -*-

from time import sleep,time
from pymavlink import mavutil
from pymavlink.dialects.v10 import ardupilotmega
import rospy
import os
from gs_board import *
from gs_flight import *
from gs_module import *
from gs_sensors import *
from gs_logger import *
import math
TARGET_SYSTEM=None
MISSIN_COUNT=None
TARGET_COMP=1
MISSION_LIST=[]
CUSTOM_MODE=0

def start_mission(mission_list):
    global flight
    global MODE
    if(len(mission_list)!=1):
        mission_list[0],mission_list[1]=mission_list[1],mission_list[0]
        start_point=mission_list[1]
    else:
        start_point=mission_list[0]
    for i in mission_list:
        if(i[0]==mavutil.mavlink.MAV_CMD_NAV_RETURN_TO_LAUNCH):
            flight.goToPoint(start_point[2],start_point[3],start_point[4])
            if(start_point[1]!=0.0):
                flight.updateYaw(start_point[1])
            flight.landing()
            MODE=mavutil.mavlink.MAV_MODE_GUIDED_DISARMED
        elif(i[0]==mavutil.mavlink.MAV_CMD_NAV_LAND):
            flight.landing()
            MODE=mavutil.mavlink.MAV_MODE_GUIDED_DISARMED
        elif(i[0]==mavutil.mavlink.MAV_CMD_NAV_TAKEOFF):
            flight.takeoff()
        elif(i[0]==mavutil.mavlink.MAV_CMD_NAV_WAYPOINT):
            flight.goToPoint(i[2],i[3],i[4])
            if(i[1]!=0.0):
                flight.updateYaw(i[1])

rospy.init_node("mavlink_node")
try:
    board = BoardManager()
    flight=FlightController()
    led_b=BoardLedController()
    led_m=ModuleLedController()
    sensors=SensorManager()
    # log=Logger()

    while not board.runStatus():
        pass

    rospy.loginfo("MAVLink Server ON")

    led_b.changeAllColor(0,0,0)
    led_m.changeAllColor(0,0,0)
    hostname=os.popen('ip addr show wlan0').read().split("inet ")[1].split("/")[0]
    master = mavutil.mavlink_connection('udpin:'+hostname+':14555',source_component=TARGET_COMP)
    master.wait_heartbeat()

    protocol=False
    MODE=mavutil.mavlink.MAV_MODE_GUIDED_DISARMED

    while not rospy.is_shutdown():
        msg=master.recv_match()
        if(msg!=None):
            print(msg.to_dict())

            master.mav.heartbeat_send(
                    type=mavutil.mavlink.MAV_TYPE_QUADROTOR,
                    autopilot=mavutil.mavlink.MAV_AUTOPILOT_ARDUPILOTMEGA,
                    base_mode=MODE,
                    custom_mode=CUSTOM_MODE,
                    system_status=mavutil.mavlink.MAV_STATE_STANDBY
            )
            roll,pitch,yaw=sensors.orientation()
            roll=roll*math.pi/180
            pitch=pitch*math.pi/180
            yaw=yaw*math.pi/180
            master.mav.attitude_send(
                    time_boot_ms=int(time()),
                    roll=roll,
                    pitch=pitch,
                    yaw=yaw,
                    rollspeed=0.01,
                    pitchspeed=0.01,
                    yawspeed=0.01
            )
            # master.mav.global_position_int_send(
            #     time_boot_ms=int(time()),
            #     lat=1,
            #     lon=1,
            #     alt=int(altitude),
            #     relative_alt=int(altitude),
            #     vx=0,
            #     vy=0,
            #     vz=0,
            #     hdg=0
            # )
            if(protocol):
                master.mav.sys_status_send(
                        onboard_control_sensors_present=32,
                        onboard_control_sensors_enabled=32,
                        onboard_control_sensors_health=1,
                        load=0,
                        voltage_battery=12000,
                        current_battery=2500,
                        battery_remaining=-1,
                        drop_rate_comm=0,
                        errors_comm=0,
                        errors_count1=0,
                        errors_count2=0,
                        errors_count3=0,
                        errors_count4=0
                )
                protocol=False
            if(type(msg)==ardupilotmega.MAVLink_mission_count_message):
                MISSIN_COUNT=msg.count
                TARGET_SYSTEM=msg.target_system
                MISSION_LIST=[]
                master.mav.mission_request_int_send(
                        seq=0,
                        target_component=TARGET_COMP,
                        target_system=TARGET_SYSTEM
                )
            elif(type(msg)==mavutil.mavlink.MAVLink_mission_item_int_message):
                if(msg.seq==MISSIN_COUNT-1):
                    master.mav.mission_ack_send(
                            target_system=TARGET_SYSTEM,
                            target_component=TARGET_COMP,
                            type=mavutil.mavlink.MAV_MISSION_ACCEPTED
                    )
                    TARGET_SYSTEM=None
                    MISSIN_COUNT=None
                else:
                    master.mav.mission_request_int_send(
                            seq=msg.seq+1,
                            target_component=TARGET_COMP,
                            target_system=TARGET_SYSTEM
                    )
                MISSION_LIST.append([msg.command,msg.param4,msg.x,msg.y,msg.z])
            elif(type(msg)==ardupilotmega.MAVLink_mission_set_current_message):
                master.mav.command_ack_send(
                        command=mavutil.mavlink.MAV_CMD_MISSION_START,
                        result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                )
                start_mission([MISSION_LIST[msg.seq]])
            elif(type(msg)==ardupilotmega.MAVLink_param_request_list_message):
                master.mav.param_value_send(
                        param_id=b"pioneermax_gs_em",
                        param_value=0.0,
                        param_type=mavutil.mavlink.MAV_PARAM_TYPE_UINT8,
                        param_count=0,
                        param_index=0
                )
            elif(type(msg)==ardupilotmega.MAVLink_mission_request_list_message):
                    TARGET_SYSTEM=msg.target_system
                    master.mav.mission_count_send(
                        target_system=TARGET_SYSTEM,
                        target_component=TARGET_COMP,
                        count=0
                )
            elif(type(msg)==ardupilotmega.MAVLink_request_data_stream_message):
                master.mav.data_stream_send(
                        stream_id=msg.req_stream_id,
                        message_rate=0,
                        on_off=0
                )
            elif(type(msg)==ardupilotmega.MAVLink_set_mode_message):
                CUSTOM_MODE=msg.custom_mode
                MODE=msg.base_mode
            elif(type(msg)==ardupilotmega.MAVLink_command_long_message):
                if(msg.command==519):
                    master.mav.command_ack_send(
                            command=519,
                            result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                    )
                    protocol=True
                elif(msg.command==mavutil.mavlink.MAV_CMD_MISSION_START):
                    if(len(MISSION_LIST)!=0):
                        master.mav.command_ack_send(
                                command=mavutil.mavlink.MAV_CMD_MISSION_START,
                                result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                        )
                        start_mission(MISSION_LIST)
                    else:
                        master.mav.command_ack_send(
                                command=mavutil.mavlink.MAV_CMD_MISSION_START,
                                result=mavutil.mavlink.MAV_RESULT_DENIED 
                        )
                elif(msg.command==mavutil.mavlink.MAV_CMD_NAV_TAKEOFF):
                    print("TAKEOFF")
                    flight.takeoff()
                    master.mav.command_ack_send(
                            command=mavutil.mavlink.MAV_CMD_NAV_TAKEOFF,
                            result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                    )
                elif(msg.command==mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM):
                    if(msg.param1==0.0):
                        master.mav.command_ack_send(
                                command=mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
                                result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                        )
                        MODE=mavutil.mavlink.MAV_MODE_GUIDED_DISARMED
                        flight.landing()
                    elif (msg.param1==1.0):
                        master.mav.command_ack_send(
                                command=mavutil.mavlink.MAV_CMD_COMPONENT_ARM_DISARM,
                                result=mavutil.mavlink.MAV_RESULT_ACCEPTED
                        )
                        MODE=mavutil.mavlink.MAV_MODE_GUIDED_ARMED
                        flight.preflight()
except:
    pass