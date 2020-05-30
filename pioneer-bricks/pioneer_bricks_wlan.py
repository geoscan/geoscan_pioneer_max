#!/usr/bin/python3
from flask import Flask, request, render_template, flash, redirect, url_for,jsonify
import os
import rospy
from gs_board import *
from gs_flight import *
from gs_module import *
from gs_sensors import *
from gs_logger import *
from time import sleep

app = Flask(__name__)
app.secret_key="pioneer"

workspace=""
msgs=[]

def my_print(data):
    global msgs
    msgs.append(data)


def code_run(code):
    rospy.init_node("pioneer_bricks_node")
    board = BoardManager()
    flight=FlightController()
    led_b=BoardLedController()
    led_m=ModuleLedController()
    sensors=SensorManager()
    log=Logger()
    led_b.changeAllColor(0,0,0)
    led_m.changeAllColor(0,0,0)
    print = my_print
    msgs.append("Начало программы")
    exec(code)
    msgs.append("Конец программы")

def transform_code(code):
    return "#!/usr/bin/python3\n"+"import rospy\n"+"from gs_board import *\n"+"from gs_flight import *\n"+"from gs_module import *\n"+"from gs_sensors import *\n"+"from gs_logger import *\n"+"rospy.init_node(\"pioneer_bricks_node\")\n"+"board = BoardManager()\n"+"flight=FlightController()\n"+"led_b=BoardLedController()\n"+"led_m=ModuleLedController()\n"+"sensors=SensorManager()\n"+"log=Logger()\n"+"led_b.changeAllColor(0,0,0)\n"+"led_m.changeAllColor(0,0,0)\n"+code

@app.route('/')
def block():
    global workspace
    return render_template("index.html",xml_text=workspace,hostn=hostname)

@app.route('/run', methods=['POST'])
def run():
    global workspace
    workspace=request.form['xml_text']
    code_run(request.form['code'])
    return "ok"

@app.route('/save',methods=['POST'])
def save():
    global workspace
    workspace=request.form['xml_text']
    name=request.form['name']
    code=request.form['code']
    if(name!="#@#"):
        path = os.path.join("/home/ubuntu/pioneer-bricks/static/save/", name)
        os.mkdir(path)
        with open(path+"/"+name+".xml","w") as f:
            f.write(workspace)
        with open(path+"/"+name+".py","w") as f:
            f.write(transform_code(code))
        return jsonify(status=0)
    else:
        return jsonify(status=1)

@app.route('/new',methods=['POST'])
def new():
    global workspace
    workspace=""
    return "ok"

@app.route('/open',methods=['POST'])
def o():
    global workspace
    name=request.form['name']
    try:
        with open("/home/ubuntu/pioneer-bricks/static/save/"+name+"/"+name+".xml","r") as f:
            workspace=f.readline()
    except:
        workspace=request.form['xml_text']
        return jsonify(error=1)
    return jsonify(error=0)

@app.route("/files")
def files():
    dirs=os.listdir("/home/ubuntu/pioneer-bricks/static/save/.")
    data=""
    for i in dirs:
        if(i!='.save_directory'):
            data=data+i+","
    if(len(data[0:len(data)-1])==0):
        return jsonify(name="#@#")
    else:
        return jsonify(name=data[0:len(data)-1])

@app.route("/print")
def pr():
    global msgs
    try:
        msg=msgs[0]
        msgs.pop(0)
        return jsonify(msg=msg)
    except:
        return jsonify(msg="none")

try:
    sleep(10)
    hostname=os.popen('ip addr show wlan0').read().split("inet ")[1].split("/")[0]
    app.run(host=hostname,port=2020)
except:
    pass
