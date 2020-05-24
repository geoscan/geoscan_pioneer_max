import serial
from time import sleep

ser=serial.Serial("/dev/ttyS0",9600)
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
        s=ser.read()
        while(s!=b'#'):
            out_msg+=str(s,encoding='utf-8')
            s=ser.read()
    isWrite=False
    return out_msg

# блок синхронизации
print("wait connection ...")
tmp=""
while (tmp!="ok"):
    send("start-")
    tmp=read()
    if(tmp=="okp"):
        read()
        break
sleep(1)
print("board connect")
send("dbg-1")
print(read())
while True:
    print(read())
    




