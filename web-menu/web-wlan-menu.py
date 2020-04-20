#!/usr/bin/python3

from rosnode import get_node_names
from rosservice import get_service_list
from rostopic import get_topic_list
import os
from time import sleep

from flask import Flask,send_file,render_template

app=Flask(__name__)

@app.route('/')
def index():
    return send_file('index.html')

@app.route('/node')
def get_nodes():
    try:
        nodes=get_node_names()
        return render_template('list.html',objects='Node',list=nodes)
    except:
        return send_file('ros_error.html')

@app.route('/service')
def get_services():
    try:
        services=get_service_list()
        return render_template('list.html',objects='Service',list=services)
    except:
        return send_file('ros_error.html')

@app.route('/topic')
def get_topic():
    try:
        topics=get_topic_list()
        t=[]
        for i in topics[0]:
            s=i[0]+" ( msg: "+i[1]+" )"
            t.append(s)
        return render_template('list.html',objects='Topic',list=t)
    except:
        return send_file('ros_error.html')

try:
    sleep(10)
    hostname=os.popen('ip addr show wlan0').read().split("inet ")[1].split("/")[0]
    app.run(host=hostname,port=9090)
except:
    pass