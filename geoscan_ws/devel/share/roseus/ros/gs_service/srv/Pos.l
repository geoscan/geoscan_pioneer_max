;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Pos)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Pos (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::POS")
  (make-package "GS_SERVICE::POS"))
(unless (find-package "GS_SERVICE::POSREQUEST")
  (make-package "GS_SERVICE::POSREQUEST"))
(unless (find-package "GS_SERVICE::POSRESPONSE")
  (make-package "GS_SERVICE::POSRESPONSE"))

(in-package "ROS")





(defclass gs_service::PosRequest
  :super ros::object
  :slots (_x _y _z _time ))

(defmethod gs_service::PosRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _time (float __time))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::PosResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::PosResponse
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

(defclass gs_service::Pos
  :super ros::object
  :slots ())

(setf (get gs_service::Pos :md5sum-) "0c725f9e77c9ba3d3e173571341a5f71")
(setf (get gs_service::Pos :datatype-) "gs_service/Pos")
(setf (get gs_service::Pos :request) gs_service::PosRequest)
(setf (get gs_service::Pos :response) gs_service::PosResponse)

(defmethod gs_service::PosRequest
  (:response () (instance gs_service::PosResponse :init)))

(setf (get gs_service::PosRequest :md5sum-) "0c725f9e77c9ba3d3e173571341a5f71")
(setf (get gs_service::PosRequest :datatype-) "gs_service/PosRequest")
(setf (get gs_service::PosRequest :definition-)
      "float32 x
float32 y
float32 z
float32 time

---

bool status
")

(setf (get gs_service::PosResponse :md5sum-) "0c725f9e77c9ba3d3e173571341a5f71")
(setf (get gs_service::PosResponse :datatype-) "gs_service/PosResponse")
(setf (get gs_service::PosResponse :definition-)
      "float32 x
float32 y
float32 z
float32 time

---

bool status
")



(provide :gs_service/Pos "0c725f9e77c9ba3d3e173571341a5f71")


