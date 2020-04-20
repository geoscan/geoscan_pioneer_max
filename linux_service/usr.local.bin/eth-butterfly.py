#!/usr/bin/python3

from time import sleep
import os

sleep(10)

try:
        hostname=os.popen('ip addr show eth0').read().split("inet ")[1].split("/")[0]
        os.system("python3 /usr/local/bin/butterfly.server.py --unsecure --host="+hostname+" --port=8090 --login")
except:
        pass
