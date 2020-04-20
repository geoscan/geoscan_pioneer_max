;; Auto-generated. Do not edit!


(when (boundp 'gs_service::LpsVel)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'LpsVel (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LPSVEL")
  (make-package "GS_SERVICE::LPSVEL"))
(unless (find-package "GS_SERVICE::LPSVELREQUEST")
  (make-package "GS_SERVICE::LPSVELREQUEST"))
(unless (find-package "GS_SERVICE::LPSVELRESPONSE")
  (make-package "GS_SERVICE::LPSVELRESPONSE"))

(in-package "ROS")





(defclass gs_service::LpsVelRequest
  :super ros::object
  :slots ())

(defmethod gs_service::LpsVelRequest
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

(defclass gs_service::LpsVelResponse
  :super ros::object
  :slots (_lpsVelX _lpsVelY _lpsVelZ ))

(defmethod gs_service::LpsVelResponse
  (:init
   (&key
    ((:lpsVelX __lpsVelX) 0.0)
    ((:lpsVelY __lpsVelY) 0.0)
    ((:lpsVelZ __lpsVelZ) 0.0)
    )
   (send-super :init)
   (setq _lpsVelX (float __lpsVelX))
   (setq _lpsVelY (float __lpsVelY))
   (setq _lpsVelZ (float __lpsVelZ))
   self)
  (:lpsVelX
   (&optional __lpsVelX)
   (if __lpsVelX (setq _lpsVelX __lpsVelX)) _lpsVelX)
  (:lpsVelY
   (&optional __lpsVelY)
   (if __lpsVelY (setq _lpsVelY __lpsVelY)) _lpsVelY)
  (:lpsVelZ
   (&optional __lpsVelZ)
   (if __lpsVelZ (setq _lpsVelZ __lpsVelZ)) _lpsVelZ)
  (:serialization-length
   ()
   (+
    ;; float32 _lpsVelX
    4
    ;; float32 _lpsVelY
    4
    ;; float32 _lpsVelZ
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lpsVelX
       (sys::poke _lpsVelX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lpsVelY
       (sys::poke _lpsVelY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lpsVelZ
       (sys::poke _lpsVelZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lpsVelX
     (setq _lpsVelX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lpsVelY
     (setq _lpsVelY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lpsVelZ
     (setq _lpsVelZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::LpsVel
  :super ros::object
  :slots ())

(setf (get gs_service::LpsVel :md5sum-) "81c82ec0d0933ca8027062009ab83047")
(setf (get gs_service::LpsVel :datatype-) "gs_service/LpsVel")
(setf (get gs_service::LpsVel :request) gs_service::LpsVelRequest)
(setf (get gs_service::LpsVel :response) gs_service::LpsVelResponse)

(defmethod gs_service::LpsVelRequest
  (:response () (instance gs_service::LpsVelResponse :init)))

(setf (get gs_service::LpsVelRequest :md5sum-) "81c82ec0d0933ca8027062009ab83047")
(setf (get gs_service::LpsVelRequest :datatype-) "gs_service/LpsVelRequest")
(setf (get gs_service::LpsVelRequest :definition-)
      "
---

float32 lpsVelX
float32 lpsVelY
float32 lpsVelZ
")

(setf (get gs_service::LpsVelResponse :md5sum-) "81c82ec0d0933ca8027062009ab83047")
(setf (get gs_service::LpsVelResponse :datatype-) "gs_service/LpsVelResponse")
(setf (get gs_service::LpsVelResponse :definition-)
      "
---

float32 lpsVelX
float32 lpsVelY
float32 lpsVelZ
")



(provide :gs_service/LpsVel "81c82ec0d0933ca8027062009ab83047")


