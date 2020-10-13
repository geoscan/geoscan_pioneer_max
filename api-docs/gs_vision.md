# Описание пакета gs_vision

## Описание
Данный пакет предоставляет готовые инструменты распознавания различных меток

## Состав пакета
1. Ноды:
    * apriltag_node.py
    * aruco_node.py
    * qrcode_node.py
2. Файлы запуска:
    * apriltag_test.launch - пример запуска apriltag_node
    * aruco_test.launch - пример запуска aruco_node
    * qrcode_test.launch - пример запуска qrcode_node
3. Типы сообщений:
    * QR.msg
    * ArUco.msg
    * Apriltag.msg
    * QR_array.msg
    * ArUco_array.msg
    * Apriltag_array.msg

## Необходимые пакеты:
1. Python:
    * OpenCV
    * apriltag
    * pyzbar
2. ROS:
    * cv_bridge
    * cv_camera
    * sensors_msg

## Описание нод:

### 1. apriltag_node
Нода распознавания AprilTag

#### Параметры:
* image - топик потока с камеры (тип топика: sensor_msgs/Image)

#### Публикации:
* geoscan/vision/apriltag (gs_vision/Apriltag_array)

### 2. aruco_node
Нода распознавания ArUco маркеров

#### Параметры:
* image - топик потока с камеры (тип топика: sensor_msgs/Image)

#### Публикации:
* geoscan/vision/aruco (gs_vision/ArUco_array)

### 3. qrcode_node
Нода распознавания QR кодов

#### Параметры:
* image - топик потока с камеры (тип топика: sensor_msgs/Image)

#### Публикации:
* geoscan/vision/qr (gs_vision/QR_array)

### 4. picamera_node
Нода предаставляющая поток с Pi Camera

#### Параметры:
* resolution - разрешение камеры (пример "x, y") 

#### Публикации:
* geoscan/vision/picamera_capture (sensor_msgs/Image)
