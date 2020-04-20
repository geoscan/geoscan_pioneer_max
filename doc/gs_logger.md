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
* __log_service - rospy.ServiceProxy: gs_service.srv.Log
* __log_sub - rospy.Subscriber: std_msgs.msg.String
* __msgs -  str

#### Методы:
* lastMsgs - возвращает последнее сообщение лога
* allMsgs - возвращает весь лог
* __callback - обработка топика

#### Используемые сервисы:
* geoscan/log_service (gs_service/Log)

#### Подписки:
* geoscan/log_topic (std_msgs/String)

## Необходимые пакеты:
ROS:
* gs_service
* gs_nodes

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes