import rclpy
from gs_interfaces.srv import Led,Live
from gs_interfaces.msg import RGBgs
from std_msgs.msg import Empty

class BoardLedController():
    def __init__(self,node):
        self.__node=node
        self.__leds=[]
        for _ in range(0,4):
            rgb=RGBgs()
            rgb.r=False
            rgb.g=False
            rgb.b=False
            self.__leds.append(rgb)
        self.__alive=self.__node.create_client(Live,"geoscan/alive")
        self.__wait_srv(self.__alive)
        self.__led_service=self.__node.create_client(Led,"geoscan/led/board/control_service")
        self.__wait_srv(self.__led_service)

    def __call_srv(self,srv,request):
        future=srv.call_async(request)
        while rclpy.ok():
            rclpy.spin_once(self.__node)
            if future.done():
                response=future.result()
                return response

    def __wait_srv(self,srv):
        while not srv.wait_for_service(timeout_sec=1.0):
            pass

    def __loginfo(self,msg):
        self.__node.get_logger().info(msg)

    def changeColor(self,i,r,g,b):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                try:
                    if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                        rgb=RGBgs()
                        rgb.r=bool(r)
                        rgb.g=bool(g)
                        rgb.b=bool(b)
                        self.__leds[i]=rgb
                        request=Led.Request()
                        request.leds=self.__leds
                        status=self.__call_srv(self.__led_service,request).status
                        if(status):
                            break
                    else:
                        self.__loginfo("Сolor value should be 0 or 1")
                        break
                except:
                    self.__loginfo("Index led: "+str(i)+" is not correct")
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def changeAllColor(self,r,g,b):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                    for i in range(0,len(self.__leds)):
                        rgb=RGBgs()
                        rgb.r=bool(r)
                        rgb.g=bool(g)
                        rgb.b=bool(b)
                        self.__leds[i]=rgb
                    request=Led.Request()
                    request.leds=self.__leds
                    status=self.__call_srv(self.__led_service,request).status
                    if(status):
                        break
                else:
                    self.__loginfo("Сolor value should be 0 or 1")
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")

class ModuleLedController():
    def __init__(self,node):
        self.__node=node
        self.__leds=[]
        for _ in range(0,25):
            rgb=RGBgs()
            rgb.r=False
            rgb.g=False
            rgb.b=False
            self.__leds.append(rgb)
        self.__alive=self.__node.create_client(Live,"geoscan/alive")
        self.__wait_srv(self.__alive)
        self.__led_service=self.__node.create_client(Led,"geoscan/led/board/control_service")
        self.__wait_srv(self.__led_service)

    def __call_srv(self,srv,request):
        future=srv.call_async(request)
        while rclpy.ok():
            rclpy.spin_once(self.__node)
            if future.done():
                response=future.result()
                return response

    def __wait_srv(self,srv):
        while not srv.wait_for_service(timeout_sec=1.0):
            pass

    def __loginfo(self,msg):
        self.__node.get_logger().info(msg)

    def changeColor(self,i,r,g,b):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                try:
                    if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                        rgb=RGBgs()
                        rgb.r=bool(r)
                        rgb.g=bool(g)
                        rgb.b=bool(b)
                        self.__leds[i]=rgb
                        request=Led.Request()
                        request.leds=self.__leds
                        status=self.__call_srv(self.__led_service,request).status
                        if(status):
                            break
                    else:
                        self.__loginfo("Сolor value should be 0 or 1")
                        break
                except:
                    self.__loginfo("Index led: "+str(i)+" is not correct")
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def changeAllColor(self,r,g,b):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                if ((r==0 or r==1) and (g==0 or g==1) and (b==0 or b==1)):
                    for i in range(0,len(self.__leds)):
                        rgb=RGBgs()
                        rgb.r=bool(r)
                        rgb.g=bool(g)
                        rgb.b=bool(b)
                        self.__leds[i]=rgb
                    request=Led.Request()
                    request.leds=self.__leds
                    status=self.__call_srv(self.__led_service,request).status
                    if(status):
                        break
                else:
                    self.__loginfo("Сolor value should be 0 or 1")
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")