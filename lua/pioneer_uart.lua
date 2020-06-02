local boardNumber = "1"
local firmwareVersion = "1.1/cfg"

local uartNum = 1
local baudRate = 9600 
local stopBits = 1
local parity = Uart.PARITY_NONE
local uart = Uart.new(uartNum, baudRate, parity, stopBits) 

local event_debug = false

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

local function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

local function convert(dt)
    dts=tostring(dt)
    if (dts=="nil")then
        return "0.0"
    else
        l=false
        o=0
        msg=""
        for i = 1,#dts,1 do
            c=dts:sub(i,i)
            msg=msg .. c
            if(c==".") then
                l=true
            end
            if(l==true) then
                o=o+1
            end
            if(o==4) then
                break
            end
        end
        return msg
    end
end

local function write_msg(msg)
    msg="&" .. msg .. "#"
    uart:write(msg,#msg)
end

local function write_event(e)
    e="%" .. e .. "#"
    uart:write(e,#e)
end

local function logic(data)
    st={}
    st=split(data,"-")
    if(#st~=0) then
        local code = st[1]
        if(code=="start") then
            write_msg("ok")
            color(0,0,0)
            lcolor(0,0,0)
        elseif(code=="led") then
            leds:set(st[2],tonumber(st[3]),tonumber(st[4]),tonumber(st[5]))
            write_msg("led")
        elseif(code=="aled") then
            color(tonumber(st[2]),tonumber(st[3]),tonumber(st[4]))
            write_msg("aled")
        elseif(code=="lled") then
            leds:set(st[2]+4,tonumber(st[3]),tonumber(st[4]),tonumber(st[5]))
            write_msg("lled")
        elseif(code=="laled") then
            lcolor(tonumber(st[2]),tonumber(st[3]),tonumber(st[4]))
            write_msg("laled")
        elseif(code=="time")then
            write_msg(convert(time()))
        elseif(code=="dltm")then
            write_msg(convert(deltaTime()))
        elseif(code=="lntm")then
            write_msg(convert(launchTime()))
        elseif(code=="bnum")then
            write_msg(tostring(boardNumber))
        elseif(code=="eve")then
            local evente = st[2]
            if(evente == "0")then
                ap.push(Ev.MCE_PREFLIGHT)
                write_msg("pre")
            elseif(evente == "1")then
                ap.push(Ev.MCE_TAKEOFF)
                write_msg("tkff")
            elseif(evente == "2")then
                ap.push(Ev.MCE_LANDING)
                write_msg("land")
            elseif(evente == "3")then
                ap.push(Ev.ENGINES_DISARM)
                write_msg("darm")
            else
                write_msg("event_err")
            end
        elseif(code=="gtlp")then
            local x = tonumber(st[2])
            local y = tonumber(st[3])
            local z = tonumber(st[4])
            local times = tonumber(st[5])
            if(times==0)then
                ap.goToLocalPoint(x,y,z)
                write_msg("gtlp")
            else
                ap.goToLocalPoint(x,y,z,times)
                write_msg("gtlp")
            end
        elseif(code=="gtp")then
            local latitude=tonumber(st[2])
            local longitude=tonumber(st[3])
            local altitude=tonumber(st[4])
            ap.goToPoint(latitude,longitude,altitude)
            write_msg("gtp")
        elseif(code=="updy")then
            local yaw = tonumber(st[2])
            ap.updateYaw(yaw)
            write_msg("updy")
        elseif(code=="lpspos")then
            lpsX, lpsY, lpsZ = lpsPosition()
            write_msg("lpspos:" .. convert(lpsX) .. ":" .. convert(lpsY) .. ":" .. convert(lpsZ))
        elseif(code=="lpsvel")then
            lpsVelX, lpsVelY, lpsVelZ = lpsVelocity()
            write_msg("lpsvel:" .. convert(lpsVelX) .. ":" .. convert(lpsVelY) .. ":" .. convert(lpsVelZ))
        elseif(code=="lpsyaw")then
            yaw = lpsYaw()
            write_msg("lpsyaw:" .. convert(yaw))
        elseif(code=="ort")then
            roll, pitch, azimuth = orientation()
            write_msg("ort:" .. convert(roll) .. ":" .. convert(pitch) .. ":" .. convert(azimuth))
        elseif(code=="acl")then
            ax, ay, az = accel()
            write_msg("acl:" .. convert(ax) .. ":" .. convert(ay) .. ":" .. convert(az))
        elseif(code=="gyro")then
            gx, gy, gz = gyro()
            write_msg("gyro:" .. convert(gx) .. ":" .. convert(gy) .. ":" .. convert(gz))
        elseif(code=="range")then
            d1,d2,d3,d4,d5=range()
            write_msg("range:" .. convert(d1)..":" .. convert(d2).. ":" .. convert(d3).. ":" .. convert(d4).. ":" .. convert(d5))
        elseif(code=="alt")then
            h=altitude()
            write_msg("alt:" .. convert(h))
        elseif(code=="dbg") then
            if(tonumber(st[2]) == 1)then
                event_debug = true
                write_msg("debug-true")
            else
                event_debug = false
                write_msg("debug-false")
            end
        end
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
    if(event_debug)then
        if(event == Ev.ENGINES_STARTED)then
            write_msg("dbg-engst")
        elseif(event == Ev.COPTER_LANDED)then
            write_msg("dbg-cprlnd")
        elseif(event == Ev.TAKEOFF_COMPLETE)then
            write_msg("dbg-tkfcmplt")
        elseif(event == Ev.POINT_REACHED)then
            write_msg("dbg-pntrchd")
        -- elseif(event == Ev.LOW_VOLTAGE2)then
        --     write_msg("dbg-lowvolt2")
        -- elseif(event == Ev.SHOCK)then
        --     write_msg("dbg-shock")
        -- elseif(event == Ev.CONTROL_FAIL)then
        --     write_msg("dbg-cfail")
        -- elseif(event == Ev.ENGINE_FAIL)then
        --     write_msg("dbg-efail")
        end
    end
end

t = Timer.new(sync, takeFunc)
write_msg("okp")
color(0,0,0)
lcolor(0,0,0) 
t:start()
