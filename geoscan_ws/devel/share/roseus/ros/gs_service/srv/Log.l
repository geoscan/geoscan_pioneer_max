;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Log)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Log (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LOG")
  (make-package "GS_SERVICE::LOG"))
(unless (find-package "GS_SERVICE::LOGREQUEST")
  (make-package "GS_SERVICE::LOGREQUEST"))
(unless (find-package "GS_SERVICE::LOGRESPONSE")
  (make-package "GS_SERVICE::LOGRESPONSE"))

(in-package "ROS")





(defclass gs_service::LogRequest
  :super ros::object
  :slots ())

(defmethod gs_service::LogRequest
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

(defclass gs_service::LogResponse
  :super ros::object
  :slots (_msgs ))

(defmethod gs_service::LogResponse
  (:init
   (&key
    ((:msgs __msgs) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _msgs __msgs)
   self)
  (:msgs
   (&optional __msgs)
   (if __msgs (setq _msgs __msgs)) _msgs)
  (:serialization-length
   ()
   (+
    ;; string[] _msgs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _msgs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _msgs
     (write-long (length _msgs) s)
     (dolist (elem _msgs)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _msgs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _msgs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _msgs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass gs_service::Log
  :super ros::object
  :slots ())

(setf (get gs_service::Log :md5sum-) "52d4db86eb00b72e64733ff4ed17355d")
(setf (get gs_service::Log :datatype-) "gs_service/Log")
(setf (get gs_service::Log :request) gs_service::LogRequest)
(setf (get gs_service::Log :response) gs_service::LogResponse)

(defmethod gs_service::LogRequest
  (:response () (instance gs_service::LogResponse :init)))

(setf (get gs_service::LogRequest :md5sum-) "52d4db86eb00b72e64733ff4ed17355d")
(setf (get gs_service::LogRequest :datatype-) "gs_service/LogRequest")
(setf (get gs_service::LogRequest :definition-)
      "
---

string[] msgs
")

(setf (get gs_service::LogResponse :md5sum-) "52d4db86eb00b72e64733ff4ed17355d")
(setf (get gs_service::LogResponse :datatype-) "gs_service/LogResponse")
(setf (get gs_service::LogResponse :definition-)
      "
---

string[] msgs
")



(provide :gs_service/Log "52d4db86eb00b72e64733ff4ed17355d")


