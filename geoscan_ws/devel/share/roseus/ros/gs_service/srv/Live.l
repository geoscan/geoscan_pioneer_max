;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Live)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Live (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::LIVE")
  (make-package "GS_SERVICE::LIVE"))
(unless (find-package "GS_SERVICE::LIVEREQUEST")
  (make-package "GS_SERVICE::LIVEREQUEST"))
(unless (find-package "GS_SERVICE::LIVERESPONSE")
  (make-package "GS_SERVICE::LIVERESPONSE"))

(in-package "ROS")





(defclass gs_service::LiveRequest
  :super ros::object
  :slots ())

(defmethod gs_service::LiveRequest
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

(defclass gs_service::LiveResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::LiveResponse
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

(defclass gs_service::Live
  :super ros::object
  :slots ())

(setf (get gs_service::Live :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get gs_service::Live :datatype-) "gs_service/Live")
(setf (get gs_service::Live :request) gs_service::LiveRequest)
(setf (get gs_service::Live :response) gs_service::LiveResponse)

(defmethod gs_service::LiveRequest
  (:response () (instance gs_service::LiveResponse :init)))

(setf (get gs_service::LiveRequest :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get gs_service::LiveRequest :datatype-) "gs_service/LiveRequest")
(setf (get gs_service::LiveRequest :definition-)
      "
---

bool status
")

(setf (get gs_service::LiveResponse :md5sum-) "3a1255d4d998bd4d6585c64639b5ee9a")
(setf (get gs_service::LiveResponse :datatype-) "gs_service/LiveResponse")
(setf (get gs_service::LiveResponse :definition-)
      "
---

bool status
")



(provide :gs_service/Live "3a1255d4d998bd4d6585c64639b5ee9a")


