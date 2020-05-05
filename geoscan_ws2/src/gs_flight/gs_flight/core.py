from gs_interfaces.srv import Live,Event,Yaw,Pos,PosGPS
import rclpy

"""
0-preflight
1-takeoff
2-landing
3-engines_disarm
"""


class FlightController():
    def __init__(self,node):
        self.__node=node
        self.__alive=self.__node.create_client(Live,"geoscan/alive")
        self.__wait_srv(self.__alive)
        self.__ev_service=self.__node.create_client(Event,"geoscan/flight/event_service")
        self.__wait_srv(self.__ev_service)
        self.__ps_service=self.__node.create_client(Pos,"geoscan/flight/local_position_service")
        self.__wait_srv(self.__ps_service)
        self.__gps_service=self.__node.create_client(PosGPS,"geoscan/flight/gps_position_service")
        self.__wait_srv(self.__gps_service)
        self.__yw_service=self.__node.create_client(Yaw,"geoscan/flight/yaw_service")
        self.__wait_srv(self.__yw_service)

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

    def preflight(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Event.Request()
                request.event=0
                status=self.__call_srv(self.__ev_service,request).status
                if(status==1):
                    break
                elif (status==-1):
                    self.__loginfo("Somethigs wrong")
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def takeoff(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Event.Request()
                request.event=1
                status=self.__call_srv(self.__ev_service,request).status
                if(status==1):
                    break
                elif(status==-1):
                    self.__loginfo("Somethigs wrong")
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def landing(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Event.Request()
                request.event=2
                status=self.__call_srv(self.__ev_service,request).status
                if(status==1):
                    break
                elif(status==-1):
                    self.__loginfo("Somethigs wrong")
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def engines_disarm(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Event.Request()
                request.event=3
                status=self.__call_srv(self.__ev_service,request).status
                if(status==1):
                    break
                elif(status==-1):
                    self.__loginfo("Somethigs wrong")
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def goToLocalPoint(self,x,y,z,time=0):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Pos.Request()
                request.x=float(x)
                request.y=float(y)
                request.z=float(z)
                request.time=time
                status=self.__call_srv(self.__ps_service,request).status
                if(status):
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def goToPoint(self,latitude,longitude,altitude):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=PosGPS.Request()
                request.latitude=float(latitude)
                request.longitude=float(longitude)
                request.altitude=float(altitude)
                status=self.__call_srv(self.__gps_service,request).status
                if(status):
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")

    def updateYaw(self,angle):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            while True:
                request=Yaw.Request()
                request.y=float(angle)
                status=self.__call_srv(self.__yw_service,request).status
                if(status):
                    break
        else:
            self.__loginfo("Wait, connecting to flight controller")