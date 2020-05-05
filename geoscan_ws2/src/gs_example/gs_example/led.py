import rclpy
from gs_interfaces.srv import Led
from gs_interfaces.msg import RGBgs
from time import sleep 

def call_srv(node,srv,request):
    future=srv.call_async(request)
    while rclpy.ok():
        rclpy.spin_once(node)
        if future.done():
            response=future.result()
            return response

def main(args=None):
    rclpy.init(args=args)
    node=rclpy.create_node("flight_node")
    leds=[]
    for _ in range(0,4):
            rgb=RGBgs()
            rgb.r=False
            rgb.b=False
            rgb.g=False
            leds.append(rgb)
    cl=node.create_client(Led,"geoscan/led/board/control_service")
    while not cl.wait_for_service(timeout_sec=1.0):
        pass
    rgb_c=RGBgs()
    rgb_c.r=False
    rgb_c.b=True
    rgb_c.g=False
    leds[1]=rgb_c
    request=Led.Request()
    request.leds=leds
    print(call_srv(node,cl,request).status)

    



