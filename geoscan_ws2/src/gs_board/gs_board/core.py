import rclpy
from gs_interfaces.srv import Time,Info,Live

class BoardManager():
    def __init__(self,node):
        self.__node=node
        self.error_number=0.
        self.__alive=self.__node.create_client(Live,"geoscan/alive")
        self.__wait_srv(self.__alive)
        self.__tm_service=self.__node.create_client(Time,"geoscan/board/time_service")
        self.__wait_srv(self.__tm_service)
        self.__dltm_service=self.__node.create_client(Time,"geoscan/board/delta_time_service")
        self.__wait_srv(self.__dltm_service)
        self.__lntm_service=self.__node.create_client(Time,"geoscan/board/launch_time_service")
        self.__wait_srv(self.__lntm_service)
        self.__info_service=self.__node.create_client(Info,"geoscan/board/info_service")
        self.__wait_srv(self.__info_service)

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

    def runStatus(self):
        live=Live.Request()
        return self.__call_srv(self.__alive,live).status

    def boardNumber(self):
        if(self.runStatus()):
            request=Info.Request()
            return self.__call_srv(self.__info_service,request).num
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return ""

    def time(self):
        if(self.runStatus()):
            request=Time.Request()
            return self.__call_srv(self.__tm_service,request).time
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number

    def deltaTime(self):
        if(self.runStatus()):
            request=Time.Request()
            return self.__call_srv(self.__dltm_service,request).time
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number

    def launchTime(self):
        if(self.runStatus()):
            request=Time.Request()
            return self.__call_srv(self.__lntm_service,request).time
        else:
            self.__loginfo("Wait, connecting to flight controller")
            return self.error_number