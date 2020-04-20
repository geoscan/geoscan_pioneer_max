; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Gyro-request.msg.html

(cl:defclass <Gyro-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Gyro-request (<Gyro-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gyro-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gyro-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Gyro-request> is deprecated: use gs_service-srv:Gyro-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gyro-request>) ostream)
  "Serializes a message object of type '<Gyro-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gyro-request>) istream)
  "Deserializes a message object of type '<Gyro-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gyro-request>)))
  "Returns string type for a service object of type '<Gyro-request>"
  "gs_service/GyroRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gyro-request)))
  "Returns string type for a service object of type 'Gyro-request"
  "gs_service/GyroRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gyro-request>)))
  "Returns md5sum for a message object of type '<Gyro-request>"
  "33b4fb692079f88afc254f2cb9ee8d63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gyro-request)))
  "Returns md5sum for a message object of type 'Gyro-request"
  "33b4fb692079f88afc254f2cb9ee8d63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gyro-request>)))
  "Returns full string definition for message of type '<Gyro-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gyro-request)))
  "Returns full string definition for message of type 'Gyro-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gyro-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gyro-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gyro-request
))
;//! \htmlinclude Gyro-response.msg.html

(cl:defclass <Gyro-response> (roslisp-msg-protocol:ros-message)
  ((gx
    :reader gx
    :initarg :gx
    :type cl:float
    :initform 0.0)
   (gy
    :reader gy
    :initarg :gy
    :type cl:float
    :initform 0.0)
   (gz
    :reader gz
    :initarg :gz
    :type cl:float
    :initform 0.0))
)

(cl:defclass Gyro-response (<Gyro-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gyro-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gyro-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Gyro-response> is deprecated: use gs_service-srv:Gyro-response instead.")))

(cl:ensure-generic-function 'gx-val :lambda-list '(m))
(cl:defmethod gx-val ((m <Gyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:gx-val is deprecated.  Use gs_service-srv:gx instead.")
  (gx m))

(cl:ensure-generic-function 'gy-val :lambda-list '(m))
(cl:defmethod gy-val ((m <Gyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:gy-val is deprecated.  Use gs_service-srv:gy instead.")
  (gy m))

(cl:ensure-generic-function 'gz-val :lambda-list '(m))
(cl:defmethod gz-val ((m <Gyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:gz-val is deprecated.  Use gs_service-srv:gz instead.")
  (gz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gyro-response>) ostream)
  "Serializes a message object of type '<Gyro-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gyro-response>) istream)
  "Deserializes a message object of type '<Gyro-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gyro-response>)))
  "Returns string type for a service object of type '<Gyro-response>"
  "gs_service/GyroResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gyro-response)))
  "Returns string type for a service object of type 'Gyro-response"
  "gs_service/GyroResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gyro-response>)))
  "Returns md5sum for a message object of type '<Gyro-response>"
  "33b4fb692079f88afc254f2cb9ee8d63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gyro-response)))
  "Returns md5sum for a message object of type 'Gyro-response"
  "33b4fb692079f88afc254f2cb9ee8d63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gyro-response>)))
  "Returns full string definition for message of type '<Gyro-response>"
  (cl:format cl:nil "~%float32 gx~%float32 gy~%float32 gz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gyro-response)))
  "Returns full string definition for message of type 'Gyro-response"
  (cl:format cl:nil "~%float32 gx~%float32 gy~%float32 gz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gyro-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gyro-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gyro-response
    (cl:cons ':gx (gx msg))
    (cl:cons ':gy (gy msg))
    (cl:cons ':gz (gz msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gyro)))
  'Gyro-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gyro)))
  'Gyro-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gyro)))
  "Returns string type for a service object of type '<Gyro>"
  "gs_service/Gyro")