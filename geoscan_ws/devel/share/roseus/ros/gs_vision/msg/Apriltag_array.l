;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::Apriltag_array)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'Apriltag_array (find-package "GS_VISION")))
(unless (find-package "GS_VISION::APRILTAG_ARRAY")
  (make-package "GS_VISION::APRILTAG_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude Apriltag_array.msg.html


(defclass gs_vision::Apriltag_array
  :super ros::object
  :slots (_apriltags ))

(defmethod gs_vision::Apriltag_array
  (:init
   (&key
    ((:apriltags __apriltags) (let (r) (dotimes (i 0) (push (instance gs_vision::Apriltag :init) r)) r))
    )
   (send-super :init)
   (setq _apriltags __apriltags)
   self)
  (:apriltags
   (&rest __apriltags)
   (if (keywordp (car __apriltags))
       (send* _apriltags __apriltags)
     (progn
       (if __apriltags (setq _apriltags (car __apriltags)))
       _apriltags)))
  (:serialization-length
   ()
   (+
    ;; gs_vision/Apriltag[] _apriltags
    (apply #'+ (send-all _apriltags :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gs_vision/Apriltag[] _apriltags
     (write-long (length _apriltags) s)
     (dolist (elem _apriltags)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gs_vision/Apriltag[] _apriltags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _apriltags (let (r) (dotimes (i n) (push (instance gs_vision::Apriltag :init) r)) r))
     (dolist (elem- _apriltags)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gs_vision::Apriltag_array :md5sum-) "f777b1339459d8299ae58a3a829f16d7")
(setf (get gs_vision::Apriltag_array :datatype-) "gs_vision/Apriltag_array")
(setf (get gs_vision::Apriltag_array :definition-)
      "Apriltag[] apriltags
================================================================================
MSG: gs_vision/Apriltag
string tag_family
int32 tag_id
int32 hamming
float32 goodness
float32 decision_margin
float32 center_x
float32 center_y
float32 x1
float32 y1
float32 x2
float32 y2
float32 x3
float32 y3
float32 x4
float32 y4
")



(provide :gs_vision/Apriltag_array "f777b1339459d8299ae58a3a829f16d7")


