# Описание пакета gs_board

# Описание:
В данном пакете представлены инструменты для получение бортовой информации

## Состав пакета:
Классы:
* BoardManager

## Описание классов:

### 1. BoardManager
Класс менеджера бортовой информации

#### Инициализация:
Без параметров

#### Поля:
* error_mumber - код ошибки
* __alive - rospy.ServiceProxy: gs_service.srv.Live
* __tm_service - rospy.ServiceProxy: gs_service.srv.Time
* __dltm_service - rospy.ServiceProxy: gs_service.srv.Time
* __lntm_service - rospy.ServiceProxy: gs_service.srv.Time
* __info_service - rospy.ServiceProxy: gs_service.srv.Info

#### Методы:
* runStatus - возвращает статус подключения RPi к Pioneer
* boardNumber - возвращает имя/номер платы
* time - возвращает время с момента включения коптера
* deltaTime - возвращает разницу в секундах между временем включения коптера и глобальным временем системы навигации
* launchTime - возвращает время запуска для системы навигации

#### Используемые сервисы:
* geoscan/board/info_service (gs_service/Info)
* geoscan/board/time_service (gs_service/Time)
* geoscan/board/delta_time_service (gs_service/Time)
* geoscan/board/launch_time_service (gs_service/Time)

## Необходимые пакеты:
ROS:
* gs_service
* gs_nodes

## Примечание:
Все классы в данном пакете могут быть использованы только при запущеной ноде ros_serial_node.py из пакета gs_nodes