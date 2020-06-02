import serial
from time import sleep

ser=serial.Serial("/dev/ttyS0",9600,timeout=1)
isWrite=False

def send(l_msg):
    global ser
    global isWrite
    while (isWrite):
        pass
    isWrite=True
    msg="#"+l_msg+"&"
    ser.write(bytes(msg,'utf-8'))

def read():
    global ser
    global isWrite
    out_msg=""
    if(ser.read()==b'&'):
        out_msg+=str(ser.read_until(expected=b'#'),encoding='utf-8')
    isWrite=False
    return out_msg

send("bnum-")
print(read())