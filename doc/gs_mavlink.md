# Описание пакета gs_mavlink

## Описание:
Данный пакет необходим для связи GCS по протаколу MAVLink

## Состав пакета:
1. Ноды:
    * mavlink_node
2. Файлы запуска:
    * mavlink_pioneer.launch - заупск системы вместе с MAVLink сервером

## Описание нод:
### 1. mavlink_node
Нода MAVLink UDP сервера

## Необходимые пакеты:
1. Python:
    * pymavlink
2. ROS:
    * gs_nodes
    * gs_board
    * gs_flight
    * gs_module
    * gs_sensors
    * gs_logger

## Примечание:
Для работы всех нод в данном пакете необходима запущенная нода ros_serial_node.py из пакета gs_nodes