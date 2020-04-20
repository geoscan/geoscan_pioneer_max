;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Alt)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Alt (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::ALT")
  (make-package "GS_SERVICE::ALT"))
(unless (find-package "GS_SERVICE::ALTREQUEST")
  (make-package "GS_SERVICE::ALTREQUEST"))
(unless (find-package "GS_SERVICE::ALTRESPONSE")
  (make-package "GS_SERVICE::ALTRESPONSE"))

(in-package "ROS")





(defclass gs_service::AltRequest
  :super ros::object
  :slots ())

(defmethod gs_service::AltRequest
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

(defclass gs_service::AltResponse
  :super ros::object
  :slots (_altitude ))

(defmethod gs_service::AltResponse
  (:init
   (&key
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _altitude (float __altitude))
   self)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float32 _altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Alt
  :super ros::object
  :slots ())

(setf (get gs_service::Alt :md5sum-) "6e65a95f8aa933dff5e33d16e05a9392")
(setf (get gs_service::Alt :datatype-) "gs_service/Alt")
(setf (get gs_service::Alt :request) gs_service::AltRequest)
(setf (get gs_service::Alt :response) gs_service::AltResponse)

(defmethod gs_service::AltRequest
  (:response () (instance gs_service::AltResponse :init)))

(setf (get gs_service::AltRequest :md5sum-) "6e65a95f8aa933dff5e33d16e05a9392")
(setf (get gs_service::AltRequest :datatype-) "gs_service/AltRequest")
(setf (get gs_service::AltRequest :definition-)
      "
---
float32 altitude
")

(setf (get gs_service::AltResponse :md5sum-) "6e65a95f8aa933dff5e33d16e05a9392")
(setf (get gs_service::AltResponse :datatype-) "gs_service/AltResponse")
(setf (get gs_service::AltResponse :definition-)
      "
---
float32 altitude
")



(provide :gs_service/Alt "6e65a95f8aa933dff5e33d16e05a9392")


