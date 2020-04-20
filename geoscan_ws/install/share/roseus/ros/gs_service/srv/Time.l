;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Time)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Time (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::TIME")
  (make-package "GS_SERVICE::TIME"))
(unless (find-package "GS_SERVICE::TIMEREQUEST")
  (make-package "GS_SERVICE::TIMEREQUEST"))
(unless (find-package "GS_SERVICE::TIMERESPONSE")
  (make-package "GS_SERVICE::TIMERESPONSE"))

(in-package "ROS")





(defclass gs_service::TimeRequest
  :super ros::object
  :slots ())

(defmethod gs_service::TimeRequest
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

(defclass gs_service::TimeResponse
  :super ros::object
  :slots (_time ))

(defmethod gs_service::TimeResponse
  (:init
   (&key
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Time
  :super ros::object
  :slots ())

(setf (get gs_service::Time :md5sum-) "595a4e99326479146b97bd6237a70ce2")
(setf (get gs_service::Time :datatype-) "gs_service/Time")
(setf (get gs_service::Time :request) gs_service::TimeRequest)
(setf (get gs_service::Time :response) gs_service::TimeResponse)

(defmethod gs_service::TimeRequest
  (:response () (instance gs_service::TimeResponse :init)))

(setf (get gs_service::TimeRequest :md5sum-) "595a4e99326479146b97bd6237a70ce2")
(setf (get gs_service::TimeRequest :datatype-) "gs_service/TimeRequest")
(setf (get gs_service::TimeRequest :definition-)
      "
---

float32 time
")

(setf (get gs_service::TimeResponse :md5sum-) "595a4e99326479146b97bd6237a70ce2")
(setf (get gs_service::TimeResponse :datatype-) "gs_service/TimeResponse")
(setf (get gs_service::TimeResponse :definition-)
      "
---

float32 time
")



(provide :gs_service/Time "595a4e99326479146b97bd6237a70ce2")


