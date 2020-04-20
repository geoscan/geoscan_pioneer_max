;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::QR_array)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'QR_array (find-package "GS_VISION")))
(unless (find-package "GS_VISION::QR_ARRAY")
  (make-package "GS_VISION::QR_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude QR_array.msg.html


(defclass gs_vision::QR_array
  :super ros::object
  :slots (_qrs ))

(defmethod gs_vision::QR_array
  (:init
   (&key
    ((:qrs __qrs) (let (r) (dotimes (i 0) (push (instance gs_vision::QR :init) r)) r))
    )
   (send-super :init)
   (setq _qrs __qrs)
   self)
  (:qrs
   (&rest __qrs)
   (if (keywordp (car __qrs))
       (send* _qrs __qrs)
     (progn
       (if __qrs (setq _qrs (car __qrs)))
       _qrs)))
  (:serialization-length
   ()
   (+
    ;; gs_vision/QR[] _qrs
    (apply #'+ (send-all _qrs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gs_vision/QR[] _qrs
     (write-long (length _qrs) s)
     (dolist (elem _qrs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gs_vision/QR[] _qrs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qrs (let (r) (dotimes (i n) (push (instance gs_vision::QR :init) r)) r))
     (dolist (elem- _qrs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gs_vision::QR_array :md5sum-) "c2cc8666bc7a2bbd9d5b119ac5932231")
(setf (get gs_vision::QR_array :datatype-) "gs_vision/QR_array")
(setf (get gs_vision::QR_array :definition-)
      "QR[] qrs
================================================================================
MSG: gs_vision/QR
string data
int32 left
int32 top
int32 width
int32 height
int32 x1
int32 y1
int32 x2
int32 y2
int32 x3
int32 y3
int32 x4
int32 y4
")



(provide :gs_vision/QR_array "c2cc8666bc7a2bbd9d5b119ac5932231")


