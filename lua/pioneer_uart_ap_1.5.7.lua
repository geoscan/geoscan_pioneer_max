local boardNumber = 4
local firmwareVersion = "3.0/cfg"

local uartNum = 4
local baudRate = 9600 
local stopBits = 1
local parity = Uart.PARITY_NONE
local uart = Uart.new(uartNum, baudRate, parity, stopBits)

local leds=Ledbar.new(29) 

local sync = 0.001
local is_taking = false
local inp = ''
local data = ""

local lpsPosition = Sensors.lpsPosition
local lpsVelocity = Sensors.lpsVelocity
local lpsYaw = Sensors.lpsYaw
local gyro=Sensors.gyro
local orientation = Sensors.orientation
local opticalFlow = Sensors.range
local accel = Sensors.accel
local rc = Sensors.rc
local altitude = Sensors.altitude
local power = Sensors.power
local gnssInfo = Sensors.gnssInfo
local gnssPosition = Sensors.gnssPosition

local magnet = Gpio.new(Gpio.C, 3, Gpio.OUTPUT)

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
    ["prfl"]=function()
        ap.push(Ev.MCE_PREFLIGHT)
        write_msg(string.pack("> c4","prfl"))
    end,
    ["tkff"]=function()
        ap.push(Ev.MCE_TAKEOFF)
        write_msg(string.pack("> c4","tkff"))
    end,
    ["land"]=function()
        ap.push(Ev.MCE_LANDING)
        write_msg(string.pack("> c4","land"))
    end
}

local command={
    ["evnt"]=function(data)
       local x=data:sub(1,4)
       if ((x=="prfl") or (x=="tkff") or (x=="land")) then
           events[x]()
       else
           write_msg(string.pack("> c4","ever"))
       end
    end,
    ["gtlp"]=function(data)
        local x=0.0
        local y=0.0
        local z=0.0
        local t=0.0
        x,y,z,t=string.unpack("> f f f f",data)
        ap.goToLocalPoint(x,y,z,t)
        write_msg(string.pack("> c4","gtlp"))
    end,
    ["gtpg"]= function(data)
        local latitude= 0.0
        local longitude = 0.0
        local altitude = 0.0
        latitude,longitude,altitude=string.unpack("> f f f",data)
        ap.goToPoint(latitude,longitude.altitude)
        write_msg(string.pack("> c4","gtpg"))
    end,
    ["updy"]= function(data)
        local yaw=0.0
        yaw=string.unpack("> f",data)
        ap.updateYaw(yaw)
        write_msg(string.pack("> c4","updy"))
    end,
    ["bled"]=function(data)
        local n=0
        local r=0.0
        local g=0.0
        local b=0.0
        n,r,g,b=string.unpack("> I1 f f f",data)
        leds:set(n,r,g,b)
        write_msg(string.pack("> c4","bled"))
    end,
    ["aled"]=function(data)
        local r=0.0
        local g=0.0
        local b=0.0
        r,g,b=string.unpack("> f f f", data)
        color(r,g,b)
        write_msg(string.pack("> c4","aled"))
    end,
    ["mled"]=function(data)
        local n=0
        local r=0.0
        local g=0.0
        local b=0.0
        n,r,g,b=string.unpack("> I1 f f f",data)
        leds:set(n+4,r,g,b)
        write_msg(string.pack("> c4","mled"))
    end,
    ["lled"]=function(data)
        local r=0.0
        local g=0.0
        local b=0.0
        r,g,b=string.unpack("> f f f", data)
        lcolor(r,g,b)
        write_msg(string.pack("> c4","lled"))
    end,
    ["time"]=function(data)
        write_msg(string.pack("> c4 f","time",time()))
    end,
    ['dltm']=function(data)
        write_msg(string.pack("> c4 f","dltm",deltaTime()))
    end,
    ["lntm"]=function(data)
        write_msg(string.pack("> c4 f","lntm",launchTime()))
    end,
    ["bnum"]=function(data)
        write_msg(string.pack("> c4 I1","bnum",boardNumber))
    end,
    ["lpsp"]=function(data)
        local lpsX=0.0
        local lpsY=0.0
        local lpsZ=0.0
        lpsX, lpsY, lpsZ = lpsPosition()
        write_msg(string.pack("> c4 f f f","lpsp",convert(lpsX),convert(lpsY),convert(lpsZ)))
    end,
    ["lpsv"]=function(data)
        local lpsVelX=0.0
        local lpsVelY=0.0
        local lpsVelZ=0.0
        lpsVelX, lpsVelY, lpsVelZ = lpsVelocity()
        write_msg(string.pack("> c4 f f f","lpsv",convert(lpsVelX),convert(lpsVelY),convert(lpsVelZ)))
    end,
    ["lpsy"]=function(data)
        local lpsYaw=0.0
        lpsYaw=lpsYaw()
        write_msg(string.pack("> c4 f","lpsy",convert(lpsYaw)))
    end,
    ["ornt"]=function(data)
        local roll=0.0
        local pitch=0.0
        local azimuth =0.0
        roll, pitch, azimuth = orientation()
        write_msg(string.pack("> c4 f f f","ornt",roll,pitch,azimuth))
    end,
    ["accl"]=function(data)
        local ax=0.0
        local ay=0.0
        local az=0.0
        ax, ay, az = accel()
        write_msg(string.pack("> c4 f f f","accl",ax,ay,az))
    end,
    ["gyro"]=function(data)
        local gx=0.0
        local gy=0.0
        local gz=0.0
        gx, gy, gz = gyro()
        write_msg(string.pack("> c4 f f f","gyro",gx,gy,gz))
    end,
    ["optv"]=function(data)
        local optXVel=0.0
        local optYVel=0.0
        local optH=0.0
        local optStatus=0.0
        optH,optXVel,optYVel,optStatus=opticalFlow()
        write_msg(string.pack("> c4 f f f I1","optv",convert(optH),convert(optYVel),convert(optYVel),convert(optStatus)))
    end,
    ["altd"]=function(data)
        local h=0.0
        h=altitude()
        write_msg(string.pack("> c4 f","altd",h))
    end,
    ["strt"]=function(data)
        write_msg(string.pack("> c4 I1","nsys",getNavSystem()))
        color(0,0,0)
        lcolor(0,0,0)
        magnet:reset()
    end,
    ["stts"]=function(data)
        write_msg(string.pack("> c3","oks"))
    end,
    ["powr"]=function(data)
        local current = 0.0
        local charge = 0.0
        current,_,charge = power()
        write_msg(string.pack("> c4 f f","powr",convert(current),convert(charge)))
    end,
    ["gpsi"]=function(data)
       local info = 0.0
       info = gnssInfo()
       write_msg(string.pack("> c4 I1","gpsi",info))
    end,
    ["gpsp"]=function(data)
       local latitude = 0.0
       local longitude = 0.0
       local azimuth = 0.0
       latitude, longitude, azimuth = gnssPosition()
       write_msg(string.pack("> c4 f f f","gpsp",convert(latitude),convert(longitude),convert(azimuth)))
    end,
    ["crgo"]=function(data)
        local mag=0
        mag=string.unpack("> I1",data)
        if mag == 0 then
            magnet:reset()
        else
            magnet:set()
        end
        write_msg(string.pack("> c4","crgo"))
    end
}

local function takeFunc()
    inp = uart:read(1)
    if is_taking then 
        if inp == "&" then
            is_taking = false
            command[data:sub(1,4)](data:sub(5,#data))
            data = ""
        else
            data = data .. inp
        end
    elseif(inp == "#")then
        is_taking = true
    end
end

function callback(event)
    if(event == Ev.ENGINES_STARTED)then
        write_msg(string.pack("> c4","egst"))
    elseif(event == Ev.COPTER_LANDED)then
        write_msg(string.pack("> c4","crld"))
    elseif(event == Ev.TAKEOFF_COMPLETE)then
        write_msg(string.pack("> c4","ptrd"))
    elseif(event == Ev.POINT_REACHED)then
        write_msg(string.pack("> c4","ptrd"))
    end
end

t = Timer.new(sync, takeFunc)
-- write_msg(string.pack("> c3","okp"))
color(0,0,0)
lcolor(0,0,0)
magnet:reset()
t:start()
