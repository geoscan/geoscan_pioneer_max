;; Auto-generated. Do not edit!


(when (boundp 'gs_service::RGBgs)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'RGBgs (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::RGBGS")
  (make-package "GS_SERVICE::RGBGS"))

(in-package "ROS")
;;//! \htmlinclude RGBgs.msg.html


(defclass gs_service::RGBgs
  :super ros::object
  :slots (_r _g _b ))

(defmethod gs_service::RGBgs
  (:init
   (&key
    ((:r __r) nil)
    ((:g __g) nil)
    ((:b __b) nil)
    )
   (send-super :init)
   (setq _r __r)
   (setq _g __g)
   (setq _b __b)
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; bool _r
    1
    ;; bool _g
    1
    ;; bool _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _r
       (if _r (write-byte -1 s) (write-byte 0 s))
     ;; bool _g
       (if _g (write-byte -1 s) (write-byte 0 s))
     ;; bool _b
       (if _b (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _r
     (setq _r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _g
     (setq _g (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _b
     (setq _b (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gs_service::RGBgs :md5sum-) "3d6da4aa340747776b1263dbf87c67c6")
(setf (get gs_service::RGBgs :datatype-) "gs_service/RGBgs")
(setf (get gs_service::RGBgs :definition-)
      "bool r
bool g
bool b
")



(provide :gs_service/RGBgs "3d6da4aa340747776b1263dbf87c67c6")


