#!/usr/bin/python3

import os
from time import sleep

sleep(10)
try:
	hostname=os.popen('ip addr show wlan0').read().split("inet ")[1].split("/")[0]
	os.system("sudo -u ubuntu code-server --host "+hostname+" --port 9999 --auth none")
except:
	pass
