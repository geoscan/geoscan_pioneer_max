;; Auto-generated. Do not edit!


(when (boundp 'gs_service::LpsPos)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'LpsPos (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LPSPOS")
  (make-package "GS_SERVICE::LPSPOS"))
(unless (find-package "GS_SERVICE::LPSPOSREQUEST")
  (make-package "GS_SERVICE::LPSPOSREQUEST"))
(unless (find-package "GS_SERVICE::LPSPOSRESPONSE")
  (make-package "GS_SERVICE::LPSPOSRESPONSE"))

(in-package "ROS")





(defclass gs_service::LpsPosRequest
  :super ros::object
  :slots ())

(defmethod gs_service::LpsPosRequest
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

(defclass gs_service::LpsPosResponse
  :super ros::object
  :slots (_lpsX _lpsY _lpsZ ))

(defmethod gs_service::LpsPosResponse
  (:init
   (&key
    ((:lpsX __lpsX) 0.0)
    ((:lpsY __lpsY) 0.0)
    ((:lpsZ __lpsZ) 0.0)
    )
   (send-super :init)
   (setq _lpsX (float __lpsX))
   (setq _lpsY (float __lpsY))
   (setq _lpsZ (float __lpsZ))
   self)
  (:lpsX
   (&optional __lpsX)
   (if __lpsX (setq _lpsX __lpsX)) _lpsX)
  (:lpsY
   (&optional __lpsY)
   (if __lpsY (setq _lpsY __lpsY)) _lpsY)
  (:lpsZ
   (&optional __lpsZ)
   (if __lpsZ (setq _lpsZ __lpsZ)) _lpsZ)
  (:serialization-length
   ()
   (+
    ;; float32 _lpsX
    4
    ;; float32 _lpsY
    4
    ;; float32 _lpsZ
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lpsX
       (sys::poke _lpsX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lpsY
       (sys::poke _lpsY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lpsZ
       (sys::poke _lpsZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lpsX
     (setq _lpsX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lpsY
     (setq _lpsY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lpsZ
     (setq _lpsZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::LpsPos
  :super ros::object
  :slots ())

(setf (get gs_service::LpsPos :md5sum-) "28576301d1e7ebfaeb880e74c20055fe")
(setf (get gs_service::LpsPos :datatype-) "gs_service/LpsPos")
(setf (get gs_service::LpsPos :request) gs_service::LpsPosRequest)
(setf (get gs_service::LpsPos :response) gs_service::LpsPosResponse)

(defmethod gs_service::LpsPosRequest
  (:response () (instance gs_service::LpsPosResponse :init)))

(setf (get gs_service::LpsPosRequest :md5sum-) "28576301d1e7ebfaeb880e74c20055fe")
(setf (get gs_service::LpsPosRequest :datatype-) "gs_service/LpsPosRequest")
(setf (get gs_service::LpsPosRequest :definition-)
      "
---

float32 lpsX
float32 lpsY
float32 lpsZ
")

(setf (get gs_service::LpsPosResponse :md5sum-) "28576301d1e7ebfaeb880e74c20055fe")
(setf (get gs_service::LpsPosResponse :datatype-) "gs_service/LpsPosResponse")
(setf (get gs_service::LpsPosResponse :definition-)
      "
---

float32 lpsX
float32 lpsY
float32 lpsZ
")



(provide :gs_service/LpsPos "28576301d1e7ebfaeb880e74c20055fe")


