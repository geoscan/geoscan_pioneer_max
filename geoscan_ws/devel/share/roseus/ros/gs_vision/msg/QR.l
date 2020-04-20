;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::QR)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'QR (find-package "GS_VISION")))
(unless (find-package "GS_VISION::QR")
  (make-package "GS_VISION::QR"))

(in-package "ROS")
;;//! \htmlinclude QR.msg.html


(defclass gs_vision::QR
  :super ros::object
  :slots (_data _left _top _width _height _x1 _y1 _x2 _y2 _x3 _y3 _x4 _y4 ))

(defmethod gs_vision::QR
  (:init
   (&key
    ((:data __data) "")
    ((:left __left) 0)
    ((:top __top) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:x1 __x1) 0)
    ((:y1 __y1) 0)
    ((:x2 __x2) 0)
    ((:y2 __y2) 0)
    ((:x3 __x3) 0)
    ((:y3 __y3) 0)
    ((:x4 __x4) 0)
    ((:y4 __y4) 0)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _left (round __left))
   (setq _top (round __top))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _x1 (round __x1))
   (setq _y1 (round __y1))
   (setq _x2 (round __x2))
   (setq _y2 (round __y2))
   (setq _x3 (round __x3))
   (setq _y3 (round __y3))
   (setq _x4 (round __x4))
   (setq _y4 (round __y4))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
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
    ;; string _data
    4 (length _data)
    ;; int32 _left
    4
    ;; int32 _top
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _x1
    4
    ;; int32 _y1
    4
    ;; int32 _x2
    4
    ;; int32 _y2
    4
    ;; int32 _x3
    4
    ;; int32 _y3
    4
    ;; int32 _x4
    4
    ;; int32 _y4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; int32 _left
       (write-long _left s)
     ;; int32 _top
       (write-long _top s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _x1
       (write-long _x1 s)
     ;; int32 _y1
       (write-long _y1 s)
     ;; int32 _x2
       (write-long _x2 s)
     ;; int32 _y2
       (write-long _y2 s)
     ;; int32 _x3
       (write-long _x3 s)
     ;; int32 _y3
       (write-long _y3 s)
     ;; int32 _x4
       (write-long _x4 s)
     ;; int32 _y4
       (write-long _y4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _top
     (setq _top (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x1
     (setq _x1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y1
     (setq _y1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x2
     (setq _x2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y2
     (setq _y2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x3
     (setq _x3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y3
     (setq _y3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x4
     (setq _x4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y4
     (setq _y4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gs_vision::QR :md5sum-) "5ccd7767be668dc7e18c0eabb4d47340")
(setf (get gs_vision::QR :datatype-) "gs_vision/QR")
(setf (get gs_vision::QR :definition-)
      "string data
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



(provide :gs_vision/QR "5ccd7767be668dc7e18c0eabb4d47340")


