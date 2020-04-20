;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Ort)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Ort (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::ORT")
  (make-package "GS_SERVICE::ORT"))
(unless (find-package "GS_SERVICE::ORTREQUEST")
  (make-package "GS_SERVICE::ORTREQUEST"))
(unless (find-package "GS_SERVICE::ORTRESPONSE")
  (make-package "GS_SERVICE::ORTRESPONSE"))

(in-package "ROS")





(defclass gs_service::OrtRequest
  :super ros::object
  :slots ())

(defmethod gs_service::OrtRequest
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

(defclass gs_service::OrtResponse
  :super ros::object
  :slots (_roll _pitch _azimuth ))

(defmethod gs_service::OrtResponse
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:azimuth __azimuth) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _azimuth (float __azimuth))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:serialization-length
   ()
   (+
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _azimuth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Ort
  :super ros::object
  :slots ())

(setf (get gs_service::Ort :md5sum-) "9b3c60a4574eaeb417260f557d541c25")
(setf (get gs_service::Ort :datatype-) "gs_service/Ort")
(setf (get gs_service::Ort :request) gs_service::OrtRequest)
(setf (get gs_service::Ort :response) gs_service::OrtResponse)

(defmethod gs_service::OrtRequest
  (:response () (instance gs_service::OrtResponse :init)))

(setf (get gs_service::OrtRequest :md5sum-) "9b3c60a4574eaeb417260f557d541c25")
(setf (get gs_service::OrtRequest :datatype-) "gs_service/OrtRequest")
(setf (get gs_service::OrtRequest :definition-)
      "
---

float32 roll
float32 pitch
float32 azimuth
")

(setf (get gs_service::OrtResponse :md5sum-) "9b3c60a4574eaeb417260f557d541c25")
(setf (get gs_service::OrtResponse :datatype-) "gs_service/OrtResponse")
(setf (get gs_service::OrtResponse :definition-)
      "
---

float32 roll
float32 pitch
float32 azimuth
")



(provide :gs_service/Ort "9b3c60a4574eaeb417260f557d541c25")


