;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Range)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Range (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::RANGE")
  (make-package "GS_SERVICE::RANGE"))
(unless (find-package "GS_SERVICE::RANGEREQUEST")
  (make-package "GS_SERVICE::RANGEREQUEST"))
(unless (find-package "GS_SERVICE::RANGERESPONSE")
  (make-package "GS_SERVICE::RANGERESPONSE"))

(in-package "ROS")





(defclass gs_service::RangeRequest
  :super ros::object
  :slots ())

(defmethod gs_service::RangeRequest
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

(defclass gs_service::RangeResponse
  :super ros::object
  :slots (_distance1 _distance2 _distance3 _distance4 _distance5 ))

(defmethod gs_service::RangeResponse
  (:init
   (&key
    ((:distance1 __distance1) 0.0)
    ((:distance2 __distance2) 0.0)
    ((:distance3 __distance3) 0.0)
    ((:distance4 __distance4) 0.0)
    ((:distance5 __distance5) 0.0)
    )
   (send-super :init)
   (setq _distance1 (float __distance1))
   (setq _distance2 (float __distance2))
   (setq _distance3 (float __distance3))
   (setq _distance4 (float __distance4))
   (setq _distance5 (float __distance5))
   self)
  (:distance1
   (&optional __distance1)
   (if __distance1 (setq _distance1 __distance1)) _distance1)
  (:distance2
   (&optional __distance2)
   (if __distance2 (setq _distance2 __distance2)) _distance2)
  (:distance3
   (&optional __distance3)
   (if __distance3 (setq _distance3 __distance3)) _distance3)
  (:distance4
   (&optional __distance4)
   (if __distance4 (setq _distance4 __distance4)) _distance4)
  (:distance5
   (&optional __distance5)
   (if __distance5 (setq _distance5 __distance5)) _distance5)
  (:serialization-length
   ()
   (+
    ;; float32 _distance1
    4
    ;; float32 _distance2
    4
    ;; float32 _distance3
    4
    ;; float32 _distance4
    4
    ;; float32 _distance5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance1
       (sys::poke _distance1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance2
       (sys::poke _distance2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance3
       (sys::poke _distance3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance4
       (sys::poke _distance4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance5
       (sys::poke _distance5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance1
     (setq _distance1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance2
     (setq _distance2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance3
     (setq _distance3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance4
     (setq _distance4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance5
     (setq _distance5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Range
  :super ros::object
  :slots ())

(setf (get gs_service::Range :md5sum-) "22fa633ab47d5522f6597a4b0a3bd94d")
(setf (get gs_service::Range :datatype-) "gs_service/Range")
(setf (get gs_service::Range :request) gs_service::RangeRequest)
(setf (get gs_service::Range :response) gs_service::RangeResponse)

(defmethod gs_service::RangeRequest
  (:response () (instance gs_service::RangeResponse :init)))

(setf (get gs_service::RangeRequest :md5sum-) "22fa633ab47d5522f6597a4b0a3bd94d")
(setf (get gs_service::RangeRequest :datatype-) "gs_service/RangeRequest")
(setf (get gs_service::RangeRequest :definition-)
      "
---

float32 distance1
float32 distance2
float32 distance3
float32 distance4
float32 distance5
")

(setf (get gs_service::RangeResponse :md5sum-) "22fa633ab47d5522f6597a4b0a3bd94d")
(setf (get gs_service::RangeResponse :datatype-) "gs_service/RangeResponse")
(setf (get gs_service::RangeResponse :definition-)
      "
---

float32 distance1
float32 distance2
float32 distance3
float32 distance4
float32 distance5
")



(provide :gs_service/Range "22fa633ab47d5522f6597a4b0a3bd94d")


