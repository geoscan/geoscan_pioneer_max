# Описание пакета gs_sensors

## Описание:
В данном пакете представлены инструменты для получение данных с сенсоров

## Состав пакета:
Классы:
* SensorManager

Ноды:
* ultrasonic_node.py

## Описание классов:

### 1. SensorManager
Класс менеджера сенсоров

#### Инициализация:
Без параметров

#### Поля:
* __alive - rospy.ServiceProxy: gs_interfaces.srv.Live
* __lpspos_service - rospy.ServiceProxy: gs_interfaces.srv.LpsPos
* __lpsvel_service - rospy.ServiceProxy: gs_interfaces.srv.LpsVel
* __lpsyaw_service - rospy.ServiceProxy: gs_interfaces.srv.LpsYaw
* __gyro_service - rospy.ServiceProxy: gs_interfaces.srv.Gyro
* __accel_service - rospy.ServiceProxy: gs_interfaces.srv.Accel
* __orientation_service - rospy.ServiceProxy: gs_interfaces.srv.Orientation
* __range_service - rospy.ServiceProxy: gs_interfaces.srv.Range
* __altitude_service - rospy.ServiceProxy: gs_interfaces.srv.Altitude

#### Методы:
* lpsPosition - возвращает позицию в LPS координатах (x,y,z)
* lpsVelocity - возвращает скорость коптера возвращаемую LPS (vx,vy,vz)
* lpsYaw - возвращает угол поворота в системе LPS
* gyro - возвращает данные c гироскопа (gx,gy,gz)
* accel -  возвращает данные c акселерометра (ax,ay,az)
* orientation - возвращает данные положения (roll,pitch,azimuth)
* range - возвращает данные c датчиков расстояния
* altitude - возвращает данные высоты по барометру

#### Используемые сервисы:
* geoscan/sensors/lpspos_service (gs_interfaces/LpsPos)
* geoscan/sensors/lpsvel_service (gs_interfaces/LpsVel)
* geoscan/sensors/lpsyaw_service (gs_interfaces/LpsYaw)
* geoscan/sensors/gyro_service (gs_interfaces/Gyro)
* geoscan/sensors/accel_service (gs_interfaces/Accel)
* geoscan/sensors/orientation_service (gs_interfaces/Orientation)
* geoscan/sensors/range_service (gs_interfaces/Range)
* geoscan/sensors/altitude_service (gs_interfaces/Altitude)

## Описание нод:

### 1. ultrasonic_node
Нода ультрозвукового датчика HC-SR04

#### Параметры:
* trig - номер GPIO порта, соответствующий TRIG
* echo - номер GPIO порта, соответствующий ECHO

#### Топики
* ultrasonic_sensor/trig_<номер TRIG порта>_echo\_<номер ECHO порта> (std_msgs/Float32)

## Необходимые пакеты:
ROS:
* gs_interfaces
* gs_nodes
* std_msgs
* geometry_msgs

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes