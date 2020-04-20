;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Gyro)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Gyro (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::GYRO")
  (make-package "GS_SERVICE::GYRO"))
(unless (find-package "GS_SERVICE::GYROREQUEST")
  (make-package "GS_SERVICE::GYROREQUEST"))
(unless (find-package "GS_SERVICE::GYRORESPONSE")
  (make-package "GS_SERVICE::GYRORESPONSE"))

(in-package "ROS")





(defclass gs_service::GyroRequest
  :super ros::object
  :slots ())

(defmethod gs_service::GyroRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gs_service::GyroResponse
  :super ros::object
  :slots (_gx _gy _gz ))

(defmethod gs_service::GyroResponse
  (:init
   (&key
    ((:gx __gx) 0.0)
    ((:gy __gy) 0.0)
    ((:gz __gz) 0.0)
    )
   (send-super :init)
   (setq _gx (float __gx))
   (setq _gy (float __gy))
   (setq _gz (float __gz))
   self)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:gz
   (&optional __gz)
   (if __gz (setq _gz __gz)) _gz)
  (:serialization-length
   ()
   (+
    ;; float32 _gx
    4
    ;; float32 _gy
    4
    ;; float32 _gz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gx
       (sys::poke _gx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gy
       (sys::poke _gy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gz
       (sys::poke _gz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gx
     (setq _gx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gy
     (setq _gy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gz
     (setq _gz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Gyro
  :super ros::object
  :slots ())

(setf (get gs_service::Gyro :md5sum-) "33b4fb692079f88afc254f2cb9ee8d63")
(setf (get gs_service::Gyro :datatype-) "gs_service/Gyro")
(setf (get gs_service::Gyro :request) gs_service::GyroRequest)
(setf (get gs_service::Gyro :response) gs_service::GyroResponse)

(defmethod gs_service::GyroRequest
  (:response () (instance gs_service::GyroResponse :init)))

(setf (get gs_service::GyroRequest :md5sum-) "33b4fb692079f88afc254f2cb9ee8d63")
(setf (get gs_service::GyroRequest :datatype-) "gs_service/GyroRequest")
(setf (get gs_service::GyroRequest :definition-)
      "
---

float32 gx
float32 gy
float32 gz
")

(setf (get gs_service::GyroResponse :md5sum-) "33b4fb692079f88afc254f2cb9ee8d63")
(setf (get gs_service::GyroResponse :datatype-) "gs_service/GyroResponse")
(setf (get gs_service::GyroResponse :definition-)
      "
---

float32 gx
float32 gy
float32 gz
")



(provide :gs_service/Gyro "33b4fb692079f88afc254f2cb9ee8d63")


