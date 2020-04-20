;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Yaw)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Yaw (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::YAW")
  (make-package "GS_SERVICE::YAW"))
(unless (find-package "GS_SERVICE::YAWREQUEST")
  (make-package "GS_SERVICE::YAWREQUEST"))
(unless (find-package "GS_SERVICE::YAWRESPONSE")
  (make-package "GS_SERVICE::YAWRESPONSE"))

(in-package "ROS")





(defclass gs_service::YawRequest
  :super ros::object
  :slots (_y ))

(defmethod gs_service::YawRequest
  (:init
   (&key
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _y (float __y))
   self)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::YawResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::YawResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gs_service::Yaw
  :super ros::object
  :slots ())

(setf (get gs_service::Yaw :md5sum-) "d9f1e2fc8e87220228024457fb6ab7f5")
(setf (get gs_service::Yaw :datatype-) "gs_service/Yaw")
(setf (get gs_service::Yaw :request) gs_service::YawRequest)
(setf (get gs_service::Yaw :response) gs_service::YawResponse)

(defmethod gs_service::YawRequest
  (:response () (instance gs_service::YawResponse :init)))

(setf (get gs_service::YawRequest :md5sum-) "d9f1e2fc8e87220228024457fb6ab7f5")
(setf (get gs_service::YawRequest :datatype-) "gs_service/YawRequest")
(setf (get gs_service::YawRequest :definition-)
      "float32 y

---

bool status
")

(setf (get gs_service::YawResponse :md5sum-) "d9f1e2fc8e87220228024457fb6ab7f5")
(setf (get gs_service::YawResponse :datatype-) "gs_service/YawResponse")
(setf (get gs_service::YawResponse :definition-)
      "float32 y

---

bool status
")



(provide :gs_service/Yaw "d9f1e2fc8e87220228024457fb6ab7f5")


