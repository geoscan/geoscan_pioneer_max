import rclpy
from gs_interfaces.srv import LpsPos,LpsVel,LpsYaw,Gyro,Acl,Ort,Live,Range,Alt


class SensorManager():
    def __init__(self,node):
        self.error_number=0.
        self.__node=node
        self.__alive=self.__node.create_client(Live,"geoscan/alive")
        self.__wait_srv(self.__alive)
        self.__lpspos_service=self.__node.create_client(LpsPos,"geoscan/sensors/lpspos_service")
        self.__wait_srv(self.__lpspos_service)
        self.__lpsvel_service=self.__node.create_client(LpsVel,"geoscan/sensors/lpsvel_service")
        self.__wait_srv(self.__lpsvel_service)
        self.__lpsyaw_service=self.__node.create_client(LpsYaw,"geoscan/sensors/lpsyaw_service")
        self.__wait_srv(self.__lpsyaw_service)
        self.__gyro_service=self.__node.create_client(Gyro,"geoscan/sensors/gyro_service")
        self.__wait_srv(self.__gyro_service)
        self.__accel_service=self.__node.create_client(Acl,"geoscan/sensors/accel_service")
        self.__wait_srv(self.__accel_service)
        self.__orientation_service=self.__node.create_client(Ort,"geoscan/sensors/orientation_service")
        self.__wait_srv(self.__orientation_service)
        self.__range_service=self.__node.create_client(Range,"geoscan/sensors/range_service")
        self.__wait_srv(self.__range_service)
        self.__altitude_service=self.__node.create_client(Alt,"geoscan/sensors/altitude_service")
        self.__wait_srv(self.__altitude_service)

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

    def lpsPosition(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=LpsPos.Request()
            otv=self.__call_srv(self.__lpspos_service,request)
            return otv.lps_x,otv.lps_y,otv.lps_z
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def lpsVelocity(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=LpsVel.Request()
            otv=self.__call_srv(self.__lpsvel_service,request)
            return otv.lps_vel_x,otv.lps_vel_y,otv.lps_vel_z
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def lpsYaw(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=LpsYaw.Request()
            return self.__call_srv(self.__lpsyaw_service,request).yaw
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number

    def gyro(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=Gyro.Request()
            otv=self.__call_srv(self.__gyro_service,request)
            return otv.gx,otv.gy,otv.gz
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def accel(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=Acl.Request()
            otv=self.__call_srv(self.__accel_service,request)
            return otv.ax,otv.ay,otv.az
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def orientation(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=Ort.Request()
            otv=self.__call_srv(self.__orientation_service,request)
            return otv.roll,otv.pitch,otv.azimuth
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number

    def altitude(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=Alt.Request()
            return self.__call_srv(self.__altitude_service,request).altitude
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number

    def range(self):
        live=Live.Request()
        if(self.__call_srv(self.__alive,live).status):
            request=Range.Request()
            otv=self.__call_srv(self.__range_service,request)
            return otv.distance1,otv.distance2,otv.distance3,otv.distance4,otv.distance5
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number,self.error_number,self.error_number,self.error_number,self.error_number