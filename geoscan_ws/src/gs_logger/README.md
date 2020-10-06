# Описание пакета gs_logger

## Описание:
Данный пакет предоставляет инструменты для взаимодействия с логом сообщений между RPi и Pioneer

## Состав пакета:
Классы:
* Logger

## Описание классов:

### 1. Logger

#### Инициализация:
Без параметров

#### Поля:
* __log_service - rospy.ServiceProxy: gs_interfaces.srv.Log
* __msgs - list: str

#### Методы:
* lastMsgs - возвращает последнее сообщение лога
* allMsgs - возвращает весь лог

#### Используемые сервисы:
* geoscan/log_service (gs_interfaces/Log)

## Необходимые пакеты:
ROS:
* gs_interfaces
* gs_nodes

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes