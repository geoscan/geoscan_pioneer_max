import rclpy
from rclpy.node import Node
import serial
from gs_interfaces.srv import Live,Log,Event,Yaw,Pos,PosGPS,Led,Info,Time,LpsPos,LpsVel,LpsYaw,Gyro,Acl,Ort,Range,Alt
from gs_interfaces.msg import RGBgs
from std_msgs.msg import String
from time import sleep,time

class SerialNode(Node):
    def __init__(self):
        super().__init__("ros_serial_node")
        self.declare_parameter("port")
        p_name=self.get_parameter("port").value
        self.ser=serial.Serial(p_name)
        self.isWrite=False
        self.live=False
        self.log=[]

        self.ev_msgs=("pre","tkff","land","darm")
        self.sost_ev=-1
        self.sost_yw=0
        self.sost_pos=[0.,0.,0.,0.]
        self.sost_gps_pos=[0.,0.,0.]
        self.sost_board_led=[]
        self.sost_module_led=[]

        for _ in range(0,4):
            rgb=RGBgs()
            rgb.r=False
            rgb.g=False
            rgb.b=False
            self.sost_board_led.append(rgb)

        for _ in range(0,25):
            rgb=RGBgs()
            rgb.r=False
            rgb.g=False
            rgb.b=False
            self.sost_module_led.append(rgb)

        self.alive=self.create_service(Live,"geoscan/alive",self.live_callback)
        self.logger_service=self.create_service(Log,"geoscan/log_service",self.logger_callback)
        self.logger_pub=self.create_publisher(String,"/geoscan/log_topic",10)
        self.get_logger().info("wait connection ...")
        tmp=""
        while (tmp!="ok"):
            tmp=self.send("start-")
            if(tmp=="okp"):
                self.read("start-",logging=False)
                break

        sleep(1)
        self.num=self.send("bnum-")
        self.get_logger().info("board connect")
        self.live=True

        self.s_ew=self.create_service(Event,"geoscan/flight/event_service",self.event_callback)
        self.s_yw=self.create_service(Yaw,"geoscan/flight/yaw_service",self.yaw_callback)
        self.s_ps=self.create_service(Pos,"geoscan/flight/local_position_service",self.local_pos_callback)
        self.s_gps_ps=self.create_service(PosGPS,"geoscan/flight/gps_position_service",self.gps_pos_callback)
        self.s_led=self.create_service(Led,"geoscan/led/board/control_service",self.board_led_callback)
        self.s_lled=self.create_service(Led,"geoscan/led/module/control_service",self.module_led_callback)
        self.s_info=self.create_service(Info,"geoscan/board/info_service",self.info_callback)
        self.s_tm=self.create_service(Time,"geoscan/board/time_service",self.time_callback)
        self.s_dltm=self.create_service(Time,"geoscan/board/delta_time_service",self.dltm_callback)
        self.s_lntm=self.create_service(Time,"geoscan/board/launch_time_service",self.lntm_callback)
        self.s_lpspos=self.create_service(LpsPos,"geoscan/sensors/lpspos_service",self.lps_pos_callback)
        self.s_lpsvel=self.create_service(LpsVel,"geoscan/sensors/lpsvel_service",self.lps_vel_callback)
        self.s_lpsyaw=self.create_service(LpsYaw,"geoscan/sensors/lpsyaw_service",self.lps_yaw_callback)
        self.s_gyro=self.create_service(Gyro,"geoscan/sensors/gyro_service",self.gyro_callback)
        self.s_acl=self.create_service(Acl,"geoscan/sensors/accel_service",self.acl_callback)
        self.s_ort=self.create_service(Ort,"geoscan/sensors/orientation_service",self.ort_callback)
        self.s_range=self.create_service(Range,"geoscan/sensors/range_service",self.range_callback)
        self.s_altitude=self.create_service(Alt,"geoscan/sensors/altitude_service",self.alt_callback)

    def live_callback(self,request,response):
        response.status=self.live
        return response

    def logger_callback(self,request,response):
        while self.isWrite:
            pass
        response.msgs=self.log
        return response

    def read(self,msg,logging=True):
        out_msg=""
        if(self.ser.read()==b'&'):
            s=self.ser.read()
            while(s!=b'#'):
                out_msg+=str(s,encoding='utf-8')
                s=self.ser.read()
        if(logging):
            log_msg=String()
            log_msg.data="["+str(time())+"] request: "+msg+" -->"+"["+str(time())+ "] response: "+out_msg
            self.log.append(log_msg.data)
            self.logger_pub.publish(log_msg)
        self.isWrite=False
        return out_msg

    def send(self,l_msg):
        while (self.isWrite):
            pass
        self.isWrite=True
        msg="#"+l_msg+"&"
        self.ser.write(bytes(msg,'utf-8'))
        log_msg=String()
        log_msg.data="["+str(time())+"] send: "+l_msg
        self.log.append(log_msg.data)
        self.logger_pub.publish(log_msg)
        return self.read(l_msg)

    def event_callback(self,request,response):
        if (request.event!=self.sost_ev):
            msg="eve-"+str(request.event)
            otv=self.send(msg)
            if (otv=="event_err"):
                status=-1
            elif(otv==self.ev_msgs[request.event]):
                status=1
            else:
                status=-2
            self.sost_ev=request.event
            response.status=status
            return response
        response.status=1
        return response

    def yaw_callback(self,request,response):
        if(request.y!=self.sost_yw):
            msg="updy-"+str(round(request.y,2))
            otv=self.send(msg)
            if(otv=="updy"):
                status=True
            else:
                status=False
            self.sost_yw=request.y
            response.status=status
            return response
        response.status=True
        return response

    def local_pos_callback(self,request,response):
        n_s=[request.x,request.y,request.z,request.time]
        if(n_s!=self.sost_pos):
            msg="gtlp-"+str(round(request.x,2))+"-"+str(round(request.y,2))+"-"+str(round(request.z,2))+"-"+str(round(request.time,2))
            otv=self.send(msg)
            if(otv=="gtlp"):
                status=True
            else:
                status=False
            self.sost_pos=n_s
            response.status=status
            return response
        response.status=True
        return response

    def gps_pos_callback(self,request,response):
        n_s=[request.latitude,request.longitude,request.altitude]
        if(n_s!=self.sost_gps_pos):
            msg="gtp-"+str(round(request.latitude,2))+"-"+str(round(request.longitude,2))+"-"+str(round(request.altitude,2))
            otv=self.send(msg)
            if(otv=="gtp"):
                status=True
            else:
                status=False
            self.sost_gps_pos=n_s
            response.status=status
            return response
        response.status=True
        return response

    def board_led_callback(self,request,response):
        leds=request.leds
        j=1
        if(leds!=self.sost_board_led):
            for i in range(0,len(leds)-1):
                if(leds[i]==leds[i+1]):
                    j+=1
            if(j==len(leds)):
                msg="aled-"+str(int(leds[0].r))+"-"+str(int(leds[0].g))+"-"+str(int(leds[0].b))
                otv=self.send(msg)
                aled=True
            else:
                aled=False
                for i in range(0,len(leds)):
                    if (leds[i]!=self.sost_board_led[i]):
                        msg="led-"+str(i)+"-"+str(int(leds[i].r))+"-"+str(int(leds[i].g))+"-"+str(int(leds[i].b))
                        otv=self.send(msg)
            if(aled):
                if(otv=="aled"):
                    status=True
                    self.sost_board_led=leds
                else:
                    status=False
            else:
                if(otv=="led"):
                    status=True
                    self.sost_board_led=leds
                else:
                    status=False
            response.status=status
            return response
        response.status=True
        return response

    def module_led_callback(self,request,response):
        leds=request.leds
        j=1
        if(leds!=self.sost_module_led):
            for i in range(0,len(leds)-1):
                if(leds[i]==leds[i+1]):
                    j+=1
            if(j==len(leds)):
                msg="laled-"+str(int(leds[0].r))+"-"+str(int(leds[0].g))+"-"+str(int(leds[0].b))
                otv=self.send(msg)
                aled=True
            else:
                aled=False
                for i in range(0,len(leds)):
                    if (leds[i]!=self.sost_module_led[i]):
                        msg="lled-"+str(i)+"-"+str(int(leds[i].r))+"-"+str(int(leds[i].g))+"-"+str(int(leds[i].b))
                        otv=self.send(msg)
            if(aled):
                if(otv=="laled"):
                    status=True
                    self.sost_module_led=leds
                else:
                    status=False
            else:
                if(otv=="lled"):
                    status=True
                    self.sost_module_led=leds
                else:
                    status=False
            response.status=status
            return response
        response.status=True
        return response

    def info_callback(self,request,response):
        response.num=self.num
        return response

    def time_callback(self,request,response):
        msg="time-"
        response.time=float(self.send(msg))
        return response

    def dltm_callback(self,request,response):
        msg="dltm-"
        response.time=float(self.send(msg))
        return response

    def lntm_callback(self,request,response):
        msg="lntm-"
        response.time=float(self.send(msg))
        return response

    def lps_pos_callback(self,request,response):
        msg="lpspos-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="lpspos"):
            response.lps_x=float(l[1])
            response.lps_y=float(l[2])
            response.lps_z=float(l[3])
            return response
        response.lps_x=0.
        response.lps_y=0.
        response.lps_z=0.
        return response

    def lps_vel_callback(self,request,response):
        msg="lpsvel-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="lpsvel"):
            response.lps_vel_x=float(l[1])
            response.lps_vel_y=float(l[2])
            response.lps_vel_z=float(l[3])
            return response
        response.lps_vel_x=0.
        response.lps_vel_y=0.
        response.lps_vel_z=0.
        return response

    def lps_yaw_callback(self,request,response):
        msg="lpsyaw-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="lpsyaw"):
            response.yaw=float(l[1])
            return response
        response.yaw=0.
        return response

    def gyro_callback(self,request,response):
        msg="gyro-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="gyro"):
            response.gx=float(l[1])
            response.gy=float(l[2])
            response.gz=float(l[3])
            return response
        response.gx=0.
        response.gy=0.
        response.gz=0.
        return response

    def acl_callback(self,request,response):
        msg="acl-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="acl"):
            response.ax=float(l[1])
            response.ay=float(l[2])
            response.az=float(l[3])
            return response
        response.ax=0.
        response.ay=0.
        response.az=0.
        return response

    def ort_callback(self,request,response):
        msg="ort-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="ort"):
            response.roll=float(l[1])
            response.pitch=float(l[2])
            response.azimuth=float(l[3])
            return response
        response.roll=0.
        response.pitch=0.
        response.azimuth=0.
        return response

    def range_callback(self,request,response):
        msg="range-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="range"):
            response.distance1=float(l[1])
            response.distance2=float(l[2])
            response.distance3=float(l[3])
            response.distance4=float(l[4])
            response.distance5=float(l[5])
            return response
        response.distance1=0.
        response.distance2=0.
        response.distance3=0.
        response.distance4=0.
        response.distance5=0.
        return response

    def alt_callback(self,request,response):
        msg="alt-"
        otv=self.send(msg)
        l=otv.split(":")
        if(l[0]=="alt"):
            response.altitude=float(l[1])
            return response
        response.altitude=0.
        return response

def main(args=None):
    rclpy.init(args=args)
    serialNode=SerialNode()
    rclpy.spin(serialNode)