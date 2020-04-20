;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Info)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Info (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::INFO")
  (make-package "GS_SERVICE::INFO"))
(unless (find-package "GS_SERVICE::INFOREQUEST")
  (make-package "GS_SERVICE::INFOREQUEST"))
(unless (find-package "GS_SERVICE::INFORESPONSE")
  (make-package "GS_SERVICE::INFORESPONSE"))

(in-package "ROS")





(defclass gs_service::InfoRequest
  :super ros::object
  :slots ())

(defmethod gs_service::InfoRequest
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

(defclass gs_service::InfoResponse
  :super ros::object
  :slots (_num ))

(defmethod gs_service::InfoResponse
  (:init
   (&key
    ((:num __num) "")
    )
   (send-super :init)
   (setq _num (string __num))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:serialization-length
   ()
   (+
    ;; string _num
    4 (length _num)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _num
       (write-long (length _num) s) (princ _num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _num
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _num (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gs_service::Info
  :super ros::object
  :slots ())

(setf (get gs_service::Info :md5sum-) "c8470232561560e383557c02344b87f7")
(setf (get gs_service::Info :datatype-) "gs_service/Info")
(setf (get gs_service::Info :request) gs_service::InfoRequest)
(setf (get gs_service::Info :response) gs_service::InfoResponse)

(defmethod gs_service::InfoRequest
  (:response () (instance gs_service::InfoResponse :init)))

(setf (get gs_service::InfoRequest :md5sum-) "c8470232561560e383557c02344b87f7")
(setf (get gs_service::InfoRequest :datatype-) "gs_service/InfoRequest")
(setf (get gs_service::InfoRequest :definition-)
      "
---

string num
")

(setf (get gs_service::InfoResponse :md5sum-) "c8470232561560e383557c02344b87f7")
(setf (get gs_service::InfoResponse :datatype-) "gs_service/InfoResponse")
(setf (get gs_service::InfoResponse :definition-)
      "
---

string num
")



(provide :gs_service/Info "c8470232561560e383557c02344b87f7")


