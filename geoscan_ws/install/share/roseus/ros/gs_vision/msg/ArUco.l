;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::ArUco)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'ArUco (find-package "GS_VISION")))
(unless (find-package "GS_VISION::ARUCO")
  (make-package "GS_VISION::ARUCO"))

(in-package "ROS")
;;//! \htmlinclude ArUco.msg.html


(defclass gs_vision::ArUco
  :super ros::object
  :slots (_id _x1 _y1 _x2 _y2 _x3 _y3 _x4 _y4 ))

(defmethod gs_vision::ArUco
  (:init
   (&key
    ((:id __id) 0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:x4 __x4) 0.0)
    ((:y4 __y4) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _x4 (float __x4))
   (setq _y4 (float __y4))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:x4
   (&optional __x4)
   (if __x4 (setq _x4 __x4)) _x4)
  (:y4
   (&optional __y4)
   (if __y4 (setq _y4 __y4)) _y4)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _x3
    4
    ;; float32 _y3
    4
    ;; float32 _x4
    4
    ;; float32 _y4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x4
       (sys::poke _x4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y4
       (sys::poke _y4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x3
     (setq _x3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y3
     (setq _y3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x4
     (setq _x4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y4
     (setq _y4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gs_vision::ArUco :md5sum-) "ff71f5d1a26d3c62e05bc20979c78be2")
(setf (get gs_vision::ArUco :datatype-) "gs_vision/ArUco")
(setf (get gs_vision::ArUco :definition-)
      "int32 id
float32 x1
float32 y1
float32 x2
float32 y2
float32 x3
float32 y3
float32 x4
float32 y4
")



(provide :gs_vision/ArUco "ff71f5d1a26d3c62e05bc20979c78be2")


