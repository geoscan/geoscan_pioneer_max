import rospy
from rospy import ServiceProxy
from gs_service.srv import Gyro
from time import time


rospy.init_node("stress_test_node")
srv=ServiceProxy("geoscan/sensors/gyro_service",Gyro)
n=0
st=time()
while not rospy.is_shutdown():
    srv()
    m=time()
    n+=1
    if(m-st>=1):
        print(n)
        n=0
        st=time()
