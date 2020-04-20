;; Auto-generated. Do not edit!


(when (boundp 'gs_vision::Apriltag)
  (if (not (find-package "GS_VISION"))
    (make-package "GS_VISION"))
  (shadow 'Apriltag (find-package "GS_VISION")))
(unless (find-package "GS_VISION::APRILTAG")
  (make-package "GS_VISION::APRILTAG"))

(in-package "ROS")
;;//! \htmlinclude Apriltag.msg.html


(defclass gs_vision::Apriltag
  :super ros::object
  :slots (_tag_family _tag_id _hamming _goodness _decision_margin _center_x _center_y _x1 _y1 _x2 _y2 _x3 _y3 _x4 _y4 ))

(defmethod gs_vision::Apriltag
  (:init
   (&key
    ((:tag_family __tag_family) "")
    ((:tag_id __tag_id) 0)
    ((:hamming __hamming) 0)
    ((:goodness __goodness) 0.0)
    ((:decision_margin __decision_margin) 0.0)
    ((:center_x __center_x) 0.0)
    ((:center_y __center_y) 0.0)
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
   (setq _tag_family (string __tag_family))
   (setq _tag_id (round __tag_id))
   (setq _hamming (round __hamming))
   (setq _goodness (float __goodness))
   (setq _decision_margin (float __decision_margin))
   (setq _center_x (float __center_x))
   (setq _center_y (float __center_y))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _x4 (float __x4))
   (setq _y4 (float __y4))
   self)
  (:tag_family
   (&optional __tag_family)
   (if __tag_family (setq _tag_family __tag_family)) _tag_family)
  (:tag_id
   (&optional __tag_id)
   (if __tag_id (setq _tag_id __tag_id)) _tag_id)
  (:hamming
   (&optional __hamming)
   (if __hamming (setq _hamming __hamming)) _hamming)
  (:goodness
   (&optional __goodness)
   (if __goodness (setq _goodness __goodness)) _goodness)
  (:decision_margin
   (&optional __decision_margin)
   (if __decision_margin (setq _decision_margin __decision_margin)) _decision_margin)
  (:center_x
   (&optional __center_x)
   (if __center_x (setq _center_x __center_x)) _center_x)
  (:center_y
   (&optional __center_y)
   (if __center_y (setq _center_y __center_y)) _center_y)
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
    ;; string _tag_family
    4 (length _tag_family)
    ;; int32 _tag_id
    4
    ;; int32 _hamming
    4
    ;; float32 _goodness
    4
    ;; float32 _decision_margin
    4
    ;; float32 _center_x
    4
    ;; float32 _center_y
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
     ;; string _tag_family
       (write-long (length _tag_family) s) (princ _tag_family s)
     ;; int32 _tag_id
       (write-long _tag_id s)
     ;; int32 _hamming
       (write-long _hamming s)
     ;; float32 _goodness
       (sys::poke _goodness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _decision_margin
       (sys::poke _decision_margin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _center_x
       (sys::poke _center_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _center_y
       (sys::poke _center_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; string _tag_family
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_family (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _tag_id
     (setq _tag_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hamming
     (setq _hamming (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _goodness
     (setq _goodness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _decision_margin
     (setq _decision_margin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _center_x
     (setq _center_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _center_y
     (setq _center_y (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get gs_vision::Apriltag :md5sum-) "1e422dacce6e2d78bb582e8091769fc8")
(setf (get gs_vision::Apriltag :datatype-) "gs_vision/Apriltag")
(setf (get gs_vision::Apriltag :definition-)
      "string tag_family
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



(provide :gs_vision/Apriltag "1e422dacce6e2d78bb582e8091769fc8")


