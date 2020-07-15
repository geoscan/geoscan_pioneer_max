  local boardNumber = "1"
local firmwareVersion = "2.0/cfg"

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

local function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end

local events={
    ["1"]=function()
        
    end,
    ["2"]=function()
    end,
    ["3"]=function()
    end
}

local command={
    ["evnt"]=function(data)
        local x=string.unpack("> I",data)
        if(x==1) then
            color(1,1,1)
            local msg=string.pack("> I",#data)
            uart:write(msg,#msg)
        end
    end
}

local function logic(data)
    st={}
    st=split(data,"-")
    color(0,0,1)
    if(#st~=0) then
        local code=st[1]
        color(1,0,0)
        command[code](st[2])
    end
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
end

color(0,0,0)

t = Timer.new(sync, takeFunc)
color(0,0,0)
t:start()
