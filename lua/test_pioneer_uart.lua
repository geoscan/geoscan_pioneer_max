local boardNumber = "1"
local firmwareVersion = "3.0/cfg"

local uartNum = 1
local baudRate = 9600 
local stopBits = 1
local parity = Uart.PARITY_NONE
local uart = Uart.new(uartNum, baudRate, parity, stopBits)

local leds=Ledbar.new(29) 

local sync = 0.001
local is_taking = false
local inp = ''
local j = 0
local toWrite = ""
local packet = {}

local lpsPosition = Sensors.lpsPosition
local lpsVelocity = Sensors.lpsVelocity
local lpsYaw = Sensors.lpsYaw
local gyro=Sensors.gyro
local orientation = Sensors.orientation
local range = Sensors.range
local accel = Sensors.accel
local rc = Sensors.rc
local altitude = Sensors.altitude

local function color(r,g,b) 
    for i=0,3,1 do
        leds:set(i,r,g,b)
    end
end

local function lcolor(r,g,b) 
    for i=4,28,1 do
        leds:set(i,r,g,b)
    end
end

local function write_msg(msg)
    msg="&" .. msg .. "#"
    uart:write(msg,#msg)
end

local function convert(num)
    if(num==nil) then 
        return 0.0
    else
        return num
    end
end

local events={
    ["0"]=function()
        ap.push(Ev.MCE_PREFLIGHT)
        write_msg("prfl")
    end,
    ["1"]=function()
        ap.push(Ev.MCE_TAKEOFF)
        write_msg("tkff")
    end,
    ["2"]=function()
        ap.push(Ev.MCE_LANDING)
        write_msg("land")
    end
}

local command={
    ["evnt"]=function(data)
       local x=data:sub(1,1)
       events[x]()
    end,
    ["gtlp"]=function(data)
        local x=0.0
        local y=0.0
        local z=0.0
        local t=0.0
        x,y,z,t=string.unpack("> f f f f",data)
        ap.goToLocalPoint(x,y,z,t)
        write_msg("gtlp")
    end,
    ["gtpg"]= function(data)
        local latitude= 0.0
        local longitude = 0.0
        local altitude = 0.0
        latitude,longitude,altitude=string.unpack("> f f f",data)
        ap.goToPoint(latitude,longitude.altitude)
        write_msg("gtpg")
    end,
    ["updy"]= function(data)
        local yaw=0.0
        yaw=string.unpack("> f",data)
        ap.updateYaw(yaw)
        write_msg("updy")
    end,
    ["bled"]=function(data)
        local n=0
        local r=0.0
        local g=0.0
        local b=0.0
        n,r,g,b=string.unpack("> I1 f f f",data)
        leds:set(n,r,g,b)
        write_msg("bled")
    end,
    ["aled"]=function(data)
        local r=0.0
        local g=0.0
        local b=0.0
        color(r,g,b)
        write_msg("aled")
    end,
    ["mled"]=function(data)
        local n=0
        local r=0.0
        local g=0.0
        local b=0.0
        n,r,g,b=string.unpack("> I1 f f f")
        leds:set(n,r,g,b)
        write_msg("mled")
    end,
    ["lled"]=function(data)
        local r=0.0
        local g=0.0
        local b=0.0
        lcolor(r,g,b)
        write_msg("lled")
    end,
    ["time"]=function(data)
        write_msg(string.pack("> s4 f","time",time()))
    end,
    ['dltm']=function(data)
        write_msg(string.pack("> s4 f","dltm",deltaTime()))
    end,
    ["lntm"]=function(data)
        write_msg(string.pack("> s4 f","lntm",launchTime()))
    end,
    ["bnum"]=function(data)
        write_msg(string.pack("> s4 s","bnum",boardNumber))
    end,
    ["lpsp"]=function(data)
        local lpsX=0.0
        local lpsY=0.0
        local lpsZ=0.0
        lpsX, lpsY, lpsZ = lpsPosition()
        write_msg(string.pack("> s4 f f f","lpsp",convert(lpsX),convert(lpsY),convert(lpsZ)))
    end,
    ["lpsv"]=function(data)
        local lpsVelX=0.0
        local lpsVelY=0.0
        local lpsVelZ=0.0
        lpsVelX, lpsVelY, lpsVelZ = lpsVelocity()
        write_msg(string.pack("> s4 f f f","lpsv",convert(lpsVelX),convert(lpsVelY),convert(lpsVelZ)))
    end,
    ["lpsy"]=function(data)
        local lpsYaw=0.0
        lpsYaw=lpsYaw()
        write_msg(string.pack("> s4 f","lpsy",convert(lpsYaw)))
    end,
    ["ornt"]=function(data)
        local roll=0.0
        local pitch=0.0
        local azimuth =0.0
        roll, pitch, azimuth = orientation()
        write_msg(string.pack("> s4 f f f","ornt",roll,pitch,azimuth))
    end,
    ["accl"]=function(data)
        local ax=0.0
        local ay=0.0
        local az=0.0
        ax, ay, az = accel()
        write_msg(string.pack("> s4 f f f","accl",ax,ay,az))
    end,
    ["gyro"]=function(data)
        local gx=0.0
        local gy=0.0
        local gz=0.0
        gx, gy, gz = gyro()
        write_msg(string.pack("> s4 f f f","gyro",gx,gy,gz))
    end,
    ["rnge"]=function(data)
        local r1=0.0
        local r2=0.0
        local r3=0.0
        local r4=0.0
        local r5=0.0
        d1,d2,d3,d4,d5=range()
        write_msg(string.pack("> s4 f f f f f","rnge",convert(r1),convert(r2),convert(r3),convert(r4),convert(r5)))
    end,
    ["altd"]=function(data)
        local h=0.0
        h=altitude()
        write_msg(string.pack("> s4 f","altd",h))
    end,
    ["strt"]=function(data)
        write_msg("ok")
        color(0,0,0)
        lcolor(0,0,0)
    end
}

local function logic(data)
    code=data:sub(1,4)
    command[code](data:sub(5,#data))
end

local function takeFunc()
    inp = uart:read(1)
    if is_taking then 
        if inp == "&" then
            for n = 0, #packet, 1 do 
                toWrite = toWrite .. packet[n]
            end
            is_taking = false
            logic(toWrite)
            toWrite = ""
            packet={}
            j = 0
            
        else
            packet[j] = inp 
            j=j+1
        end
    elseif(inp == "#")then
        is_taking = true
    end
end


function callback(event)
    if(event == Ev.ENGINES_STARTED)then
        write_msg("egst")
    elseif(event == Ev.COPTER_LANDED)then
        write_msg("crld")
    elseif(event == Ev.TAKEOFF_COMPLETE)then
        write_msg("ptrd")
    elseif(event == Ev.POINT_REACHED)then
        write_msg("ptrd")
    end
end

t = Timer.new(sync, takeFunc)
write_msg("okp")
color(0,0,0)
lcolor(0,0,0)
t:start()
