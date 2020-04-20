;; Auto-generated. Do not edit!


(when (boundp 'gs_service::PosGPS)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'PosGPS (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::POSGPS")
  (make-package "GS_SERVICE::POSGPS"))
(unless (find-package "GS_SERVICE::POSGPSREQUEST")
  (make-package "GS_SERVICE::POSGPSREQUEST"))
(unless (find-package "GS_SERVICE::POSGPSRESPONSE")
  (make-package "GS_SERVICE::POSGPSRESPONSE"))

(in-package "ROS")





(defclass gs_service::PosGPSRequest
  :super ros::object
  :slots (_latitude _longitude _altitude ))

(defmethod gs_service::PosGPSRequest
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::PosGPSResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::PosGPSResponse
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

(defclass gs_service::PosGPS
  :super ros::object
  :slots ())

(setf (get gs_service::PosGPS :md5sum-) "116f4420ea0459e5fc977d3ea8f73c46")
(setf (get gs_service::PosGPS :datatype-) "gs_service/PosGPS")
(setf (get gs_service::PosGPS :request) gs_service::PosGPSRequest)
(setf (get gs_service::PosGPS :response) gs_service::PosGPSResponse)

(defmethod gs_service::PosGPSRequest
  (:response () (instance gs_service::PosGPSResponse :init)))

(setf (get gs_service::PosGPSRequest :md5sum-) "116f4420ea0459e5fc977d3ea8f73c46")
(setf (get gs_service::PosGPSRequest :datatype-) "gs_service/PosGPSRequest")
(setf (get gs_service::PosGPSRequest :definition-)
      "float32 latitude
float32 longitude
float32 altitude

---

bool status
")

(setf (get gs_service::PosGPSResponse :md5sum-) "116f4420ea0459e5fc977d3ea8f73c46")
(setf (get gs_service::PosGPSResponse :datatype-) "gs_service/PosGPSResponse")
(setf (get gs_service::PosGPSResponse :definition-)
      "float32 latitude
float32 longitude
float32 altitude

---

bool status
")



(provide :gs_service/PosGPS "116f4420ea0459e5fc977d3ea8f73c46")


