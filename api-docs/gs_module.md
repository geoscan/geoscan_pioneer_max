# Описание пакета gs_module

## Описание:
В этом пакете находятся классы для управления светодиодами

## Состав пакета:
Классы:
* BoardLedController
* ModuleLedController

## Описание классов:

### 1. BoardLedController
Класс для управления светодидами на борту

#### Инициализация:
Без параметров

#### Поля:
* __leds - list: std_msgs.msg.ColorRGBA
* __alive - rospy.ServiceProxy: gs_service.srv.Live
* __led_service - rospy.ServiceProxy: gs_service.srv.Led

#### Методы:
* changeColor(i,r,g,b) - зажигает конкретный светодиод, i - номер светодиода, r - красный цвет 0 или 1, g - зеленый цвет 0 или 1, b - синий цвет 0 или 1
* changeAllColor(r,g,b) - зажигает все светодиоды,  r - красный цвет 0 или 1, g - зеленый цвет 0 или 1, b - синий цвет 0 или 1

#### Используемые сервисы:
* geoscan/alive (gs_service/Live)
* geoscan/led/board/control_service (gs_service/Led)

### 2. ModuleLedController
Класс для управления LED модулем

#### Инициализация:
Без параметров

#### Поля:
* __leds - list: std_msgs.msg.ColorRGBA
* __alive - rospy.ServiceProxy: gs_service.srv.Live
* __led_service - rospy.ServiceProxy: gs_service.srv.Led

#### Методы:
* changeColor(i,r,g,b) - зажигает конкретный светодиод, i - номер светодиода, r - красный цвет 0 или 1, g - зеленый цвет 0 или 1, b - синий цвет 0 или 1
* changeAllColor(r,g,b) - зажигает все светодиоды,  r - красный цвет 0 или 1, g - зеленый цвет 0 или 1, b - синий цвет 0 или 1

#### Используемые сервисы:
* geoscan/alive (gs_service/Live)
* geoscan/led/module/control_service (gs_service/Led)

## Необходимые пакеты:
ROS:
* gs_service
* gs_nodes
* std_msgs

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes