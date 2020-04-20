;; Auto-generated. Do not edit!


(when (boundp 'gs_service::LpsYaw)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'LpsYaw (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LPSYAW")
  (make-package "GS_SERVICE::LPSYAW"))
(unless (find-package "GS_SERVICE::LPSYAWREQUEST")
  (make-package "GS_SERVICE::LPSYAWREQUEST"))
(unless (find-package "GS_SERVICE::LPSYAWRESPONSE")
  (make-package "GS_SERVICE::LPSYAWRESPONSE"))

(in-package "ROS")





(defclass gs_service::LpsYawRequest
  :super ros::object
  :slots ())

(defmethod gs_service::LpsYawRequest
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

(defclass gs_service::LpsYawResponse
  :super ros::object
  :slots (_yaw ))

(defmethod gs_service::LpsYawResponse
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::LpsYaw
  :super ros::object
  :slots ())

(setf (get gs_service::LpsYaw :md5sum-) "2160bf7632f25ad6dc7c5aab561198d4")
(setf (get gs_service::LpsYaw :datatype-) "gs_service/LpsYaw")
(setf (get gs_service::LpsYaw :request) gs_service::LpsYawRequest)
(setf (get gs_service::LpsYaw :response) gs_service::LpsYawResponse)

(defmethod gs_service::LpsYawRequest
  (:response () (instance gs_service::LpsYawResponse :init)))

(setf (get gs_service::LpsYawRequest :md5sum-) "2160bf7632f25ad6dc7c5aab561198d4")
(setf (get gs_service::LpsYawRequest :datatype-) "gs_service/LpsYawRequest")
(setf (get gs_service::LpsYawRequest :definition-)
      "
---

float32 yaw
")

(setf (get gs_service::LpsYawResponse :md5sum-) "2160bf7632f25ad6dc7c5aab561198d4")
(setf (get gs_service::LpsYawResponse :datatype-) "gs_service/LpsYawResponse")
(setf (get gs_service::LpsYawResponse :definition-)
      "
---

float32 yaw
")



(provide :gs_service/LpsYaw "2160bf7632f25ad6dc7c5aab561198d4")


