# Описание пакета gs_nodes

## Описание:
В данном пакете находятся необходимые основные ноды для корректной работы Geoscan Pioneer Max

## Состав пакета:
1. Ноды:
* ros_serial_node
2. Файлы запуска:
* pioneer.launch - запуск системы

## Описание нод:
### 1. ros_serial_node
Нода связи по протоколу UART между полетным контроллером Geoscan Pioneer и микрокомпьютером

#### Параметры:
* port(string) - имя UART порта (пример: /dev/ttyS0), обязательный параметр 

#### Сервисы:
* geoscan/alive (gs_service/Live) - возвращает статус соединения
* geoscan/log_service (gs_service/Log) - возвращает лог
* geoscan/flight/event_service (gs_service/Event) - приказывает автопилоту выполнить Event
* geoscan/flight/yaw (gs_service/Yaw) -приказывает автоплоту выполнить рысканье
* geoscan/flight/local_position_service (gs_service/Pos) - приказывает автопилоту выполнить перемещение в локальных координатах
* geoscan/flight/gps_position_service (gs_service/PosGPS) - риказывает автопилоту выполнить перемещение в GPS координатах
* geoscan/led/board/control_service (gs_service/Led) - управление светодиодами на плате Geoscan Pioneer
* geoscan/led/module/control_service (gs_service/Led) - управление светодиодами на LED модуле
* geoscan/board/info_service (gs_service/Info) - возвращает бортовой номер
* geoscan/board/time_service (gs_service/Time) - возвращает время с момента включения коптера
* geoscan/board/delta_time_service (gs_service/Time) - возвращает разницу в секундах между временем включения коптера и глобальным временем системы навигации
* geoscan/board/launch_time_service (gs_service/Time) - возвращает время запуска для системы навигации
* geoscan/sensors/lpspos_service (gs_service/LpsPos) - возвращает позицию в LPS координатах
* geoscan/sensors/lpsvel_service (gs_service/LpsVel) - возвращает скорость коптера возвращаемую LPS
* geoscan/sensors/lpsyaw_service (gs_service/LpsYaw) - возвращает угол поворота в системе LPS
* geoscan/sensors/gyro_service (gs_service/Gyro) - возвращает данные c гироскопа
* geoscan/sensors/accel_service (gs_service/Acl) - возвращает данные c акселерометра
* geoscan/sensors/orientation_service (gs_service/Ort) - возвращает данные положения
* geoscan/sensors/range_service (gs_service/Range) - возвращает данные c датчиков расстояния
* geoscan/sensors/altitude_service (gs_service/Alt) - возвращает данные высоты по барометр

## Необходимые пакеты:
1. Python:
    * PySerial
2. ROS:
    * gs_service
    * geometry_msgs
    * std_msgs

## Использование:

 ```rosparam set ros_serial_node/port /dev/ttyS0```
 
 ```rosrun gs_nodes ros_serial_node.py ```