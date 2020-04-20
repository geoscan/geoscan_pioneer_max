;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::ArUco_array)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'ArUco_array (find-package "GS_VISION")))
(unless (find-package "GS_VISION::ARUCO_ARRAY")
  (make-package "GS_VISION::ARUCO_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude ArUco_array.msg.html


(defclass gs_vision::ArUco_array
  :super ros::object
  :slots (_arucos ))

(defmethod gs_vision::ArUco_array
  (:init
   (&key
    ((:arucos __arucos) (let (r) (dotimes (i 0) (push (instance gs_vision::ArUco :init) r)) r))
    )
   (send-super :init)
   (setq _arucos __arucos)
   self)
  (:arucos
   (&rest __arucos)
   (if (keywordp (car __arucos))
       (send* _arucos __arucos)
     (progn
       (if __arucos (setq _arucos (car __arucos)))
       _arucos)))
  (:serialization-length
   ()
   (+
    ;; gs_vision/ArUco[] _arucos
    (apply #'+ (send-all _arucos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gs_vision/ArUco[] _arucos
     (write-long (length _arucos) s)
     (dolist (elem _arucos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gs_vision/ArUco[] _arucos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arucos (let (r) (dotimes (i n) (push (instance gs_vision::ArUco :init) r)) r))
     (dolist (elem- _arucos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gs_vision::ArUco_array :md5sum-) "953ee5206a9a587ec30074fd93cdec00")
(setf (get gs_vision::ArUco_array :datatype-) "gs_vision/ArUco_array")
(setf (get gs_vision::ArUco_array :definition-)
      "ArUco[] arucos
================================================================================
MSG: gs_vision/ArUco
int32 id
float32 x1
float32 y1
float32 x2
float32 y2
float32 x3
float32 y3
float32 x4
float32 y4
")



(provide :gs_vision/ArUco_array "953ee5206a9a587ec30074fd93cdec00")


