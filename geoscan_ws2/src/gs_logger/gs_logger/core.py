import rclpy
from gs_interfaces.srv import Log
from std_msgs.msg import String

class Logger():
    def __callback(self,data):
        self.__msg=data.data

    def __init__(self,node):
        self.__msg=""
        self.__node=node
        self.__log_service=self.__node.create_client(Log,"geoscan/log_service")
        self.__wait_srv(self.__log_service)
        self.__log_sub=self.__node.create_subscription(String,"geoscan/log_topic",self.__callback,10)

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

    def lastMsgs(self):
        return self.__msg

    def allMsgs(self):
        request=Log.Request()
        return self.__call_srv(self.__log_service,request).msgs