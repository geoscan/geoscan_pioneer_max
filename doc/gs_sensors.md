# Описание пакета gs_sensors

## Описание:
В данном пакете представлены инструменты для получение данных с сенсоров

## Состав пакета:
Классы:
* SensorManager

## Описание классов:

### 1. SensorManager
Класс менеджера сенсоров

#### Инициализация:
Без параметров

#### Поля:
* __alive - rospy.ServiceProxy: gs_service.srv.Live
* __lpspos_service - rospy.ServiceProxy: gs_service.srv.LpsPos
* __lpsvel_service - rospy.ServiceProxy: gs_service.srv.LpsVel
* __lpsyaw_service - rospy.ServiceProxy: gs_service.srv.LpsYaw
* __gyro_service - rospy.ServiceProxy: gs_service.srv.Gyro
* __accel_service - rospy.ServiceProxy: gs_service.srv.Acl
* __orientation_service - rospy.ServiceProxy: gs_service.srv.Ort
* __range_service - rospy.ServiceProxy: gs_service.srv.Range
* __altitude_service - rospy.ServiceProxy: gs_service.srv.Alt

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
* geoscan/sensors/lpspos_service (gs_service/LpsPos)
* geoscan/sensors/lpsvel_service (gs_service/LpsVel)
* geoscan/sensors/lpsyaw_service (gs_service/LpsYaw)
* geoscan/sensors/gyro_service (gs_service/Gyro)
* geoscan/sensors/accel_service (gs_service/Acl)
* geoscan/sensors/orientation_service (gs_service/Ort)
* geoscan/sensors/range_service (gs_service/Range)
* geoscan/sensors/altitude_service (gs_service/Alt)

## Необходимые пакеты:
ROS:
* gs_service
* gs_nodes

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes