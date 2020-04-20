;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Event)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Event (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::EVENT")
  (make-package "GS_SERVICE::EVENT"))
(unless (find-package "GS_SERVICE::EVENTREQUEST")
  (make-package "GS_SERVICE::EVENTREQUEST"))
(unless (find-package "GS_SERVICE::EVENTRESPONSE")
  (make-package "GS_SERVICE::EVENTRESPONSE"))

(in-package "ROS")





(defclass gs_service::EventRequest
  :super ros::object
  :slots (_event ))

(defmethod gs_service::EventRequest
  (:init
   (&key
    ((:event __event) 0)
    )
   (send-super :init)
   (setq _event (round __event))
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; int32 _event
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _event
       (write-long _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _event
     (setq _event (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::EventResponse
  :super ros::object
  :slots (_status ))

(defmethod gs_service::EventResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Event
  :super ros::object
  :slots ())

(setf (get gs_service::Event :md5sum-) "5f4775d9a171b58017f1f8ca79caa3a2")
(setf (get gs_service::Event :datatype-) "gs_service/Event")
(setf (get gs_service::Event :request) gs_service::EventRequest)
(setf (get gs_service::Event :response) gs_service::EventResponse)

(defmethod gs_service::EventRequest
  (:response () (instance gs_service::EventResponse :init)))

(setf (get gs_service::EventRequest :md5sum-) "5f4775d9a171b58017f1f8ca79caa3a2")
(setf (get gs_service::EventRequest :datatype-) "gs_service/EventRequest")
(setf (get gs_service::EventRequest :definition-)
      "int32 event

---

int32 status
")

(setf (get gs_service::EventResponse :md5sum-) "5f4775d9a171b58017f1f8ca79caa3a2")
(setf (get gs_service::EventResponse :datatype-) "gs_service/EventResponse")
(setf (get gs_service::EventResponse :definition-)
      "int32 event

---

int32 status
")



(provide :gs_service/Event "5f4775d9a171b58017f1f8ca79caa3a2")


