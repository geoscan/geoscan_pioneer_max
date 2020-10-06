# Описание пакета gs_flight

## Описание:
Данный пакет предоставляет инструменты для взаимодействия с автопилотом

## Состав пакета:
Классы:
* FlightController

## Описание классов:

### 1. FlightController
Класс взаимодействия с автопилотом

#### Инициализация:
Без параметров

#### Поля:
* __alive - rospy.ServiceProxy: gs_interfaces.srv.Live
* __ev_service - rospy.ServiceProxy: gs_interfaces.srv.Event
* __yw_service - rospy.ServiceProxy: gs_interfaces.srv.Yaw
* __ps_service - rospy.ServiceProxy: gs_interfaces.srv.Position
* __gps_service - rospy.ServiceProxy: gs_interfaces.srv.PositionGPS

#### Методы:
* goToLocalPoint(x,y,z,time) - приказывает автопилоту лететь в локальные координаты, x - координата точки по оси x, в метрах , y - координата точки по оси y, в метрах, z- координата точки по оси z, в метрах, time - время, за которое коптер перейдет в следующую точку, в секундах. Если значение не указано, коптер стремится к точке с максимальной скоростью
* goToPoint(latitude,longitude,altitude) - приказывает автопилоту лететь в GPS координаты, latitude – задается широта в градусах, умноженных на 10^(-7), longitude – задается долгота в градусах, умноженных на 10^(−7), altitude – задается высота в метрах
* updateYaw(angle) - установливает рыскание, angle - угол в радианах
* preflight - приказывает сделать преполетную подготовку
* takeoff - приказывает выполнить взлет
* landing - приказывает выполнить посадку/заглушить двигатели

#### Используемые сервисы:
* geoscan/alive (gs_interfaces/Live)
* geoscan/flight/event_service (gs_interfaces/Event)
* geoscan/flight/yaw (gs_interfaces/Yaw)
* geoscan/flight/local_position_service (gs_interfaces/Position)
* geoscan/flight/gps_position_service (gs_interfaces/PositionGPS)

## Необходимые пакеты:
ROS:
* gs_interfaces
* gs_nodes

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes
