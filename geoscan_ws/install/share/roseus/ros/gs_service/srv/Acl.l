;; Auto-generated. Do not edit!


(when (boundp 'gs_service::Acl)
  (if (not (find-package "GS_SERVICE"))
    (make-package "GS_SERVICE"))
  (shadow 'Acl (find-package "GS_SERVICE")))
(unless (find-package "GS_SERVICE::ACL")
  (make-package "GS_SERVICE::ACL"))
(unless (find-package "GS_SERVICE::ACLREQUEST")
  (make-package "GS_SERVICE::ACLREQUEST"))
(unless (find-package "GS_SERVICE::ACLRESPONSE")
  (make-package "GS_SERVICE::ACLRESPONSE"))

(in-package "ROS")





(defclass gs_service::AclRequest
  :super ros::object
  :slots ())

(defmethod gs_service::AclRequest
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

(defclass gs_service::AclResponse
  :super ros::object
  :slots (_ax _ay _az ))

(defmethod gs_service::AclResponse
  (:init
   (&key
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    )
   (send-super :init)
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   self)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:serialization-length
   ()
   (+
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gs_service::Acl
  :super ros::object
  :slots ())

(setf (get gs_service::Acl :md5sum-) "4db697ac4c812d3e6d71960ec5bffe0c")
(setf (get gs_service::Acl :datatype-) "gs_service/Acl")
(setf (get gs_service::Acl :request) gs_service::AclRequest)
(setf (get gs_service::Acl :response) gs_service::AclResponse)

(defmethod gs_service::AclRequest
  (:response () (instance gs_service::AclResponse :init)))

(setf (get gs_service::AclRequest :md5sum-) "4db697ac4c812d3e6d71960ec5bffe0c")
(setf (get gs_service::AclRequest :datatype-) "gs_service/AclRequest")
(setf (get gs_service::AclRequest :definition-)
      "
---

float32 ax
float32 ay
float32 az
")

(setf (get gs_service::AclResponse :md5sum-) "4db697ac4c812d3e6d71960ec5bffe0c")
(setf (get gs_service::AclResponse :datatype-) "gs_service/AclResponse")
(setf (get gs_service::AclResponse :definition-)
      "
---

float32 ax
float32 ay
float32 az
")



(provide :gs_service/Acl "4db697ac4c812d3e6d71960ec5bffe0c")


