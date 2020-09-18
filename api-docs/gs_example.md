# Описание пакета gs_example

## Описание:
В данном пакете находятся базовые примеры

## Состав пакета:
1. Ноды:
    * board_test.py - пример получения бортовой информации
    * flight_test.py - пример управления автопилотом
    * led_test.py - пример управления светодиодами
    * logger_test.py - пример взаимодействия с логами
    * sensors_test.py - пример взаимодействия с бортовыми сенсорами

2. Файлы запуска:
    * test_board.launch - пример запуска board_test
    * test_flight.launch - пример запуска flight_test
    * test_led.launch - пример запуска led_test
    * test_sensors.launch - пример запуска sensors_test

## Необходимые пакеты:
1. Python:
    * gs_board
    * gs_flight
    * gs_module
    * gs_logger
    * gs_sensors
2. ROS:
    * gs_nodes
    * gs_service

## Примечание:
Для работы всех нод в данном примере необходима запушенная нода ros_serial_node.py из пакета gs_nodes