; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Range-request.msg.html

(cl:defclass <Range-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Range-request (<Range-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Range-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Range-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Range-request> is deprecated: use gs_service-srv:Range-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Range-request>) ostream)
  "Serializes a message object of type '<Range-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Range-request>) istream)
  "Deserializes a message object of type '<Range-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Range-request>)))
  "Returns string type for a service object of type '<Range-request>"
  "gs_service/RangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range-request)))
  "Returns string type for a service object of type 'Range-request"
  "gs_service/RangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Range-request>)))
  "Returns md5sum for a message object of type '<Range-request>"
  "22fa633ab47d5522f6597a4b0a3bd94d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Range-request)))
  "Returns md5sum for a message object of type 'Range-request"
  "22fa633ab47d5522f6597a4b0a3bd94d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Range-request>)))
  "Returns full string definition for message of type '<Range-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Range-request)))
  "Returns full string definition for message of type 'Range-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Range-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Range-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Range-request
))
;//! \htmlinclude Range-response.msg.html

(cl:defclass <Range-response> (roslisp-msg-protocol:ros-message)
  ((distance1
    :reader distance1
    :initarg :distance1
    :type cl:float
    :initform 0.0)
   (distance2
    :reader distance2
    :initarg :distance2
    :type cl:float
    :initform 0.0)
   (distance3
    :reader distance3
    :initarg :distance3
    :type cl:float
    :initform 0.0)
   (distance4
    :reader distance4
    :initarg :distance4
    :type cl:float
    :initform 0.0)
   (distance5
    :reader distance5
    :initarg :distance5
    :type cl:float
    :initform 0.0))
)

(cl:defclass Range-response (<Range-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Range-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Range-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Range-response> is deprecated: use gs_service-srv:Range-response instead.")))

(cl:ensure-generic-function 'distance1-val :lambda-list '(m))
(cl:defmethod distance1-val ((m <Range-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:distance1-val is deprecated.  Use gs_service-srv:distance1 instead.")
  (distance1 m))

(cl:ensure-generic-function 'distance2-val :lambda-list '(m))
(cl:defmethod distance2-val ((m <Range-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:distance2-val is deprecated.  Use gs_service-srv:distance2 instead.")
  (distance2 m))

(cl:ensure-generic-function 'distance3-val :lambda-list '(m))
(cl:defmethod distance3-val ((m <Range-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:distance3-val is deprecated.  Use gs_service-srv:distance3 instead.")
  (distance3 m))

(cl:ensure-generic-function 'distance4-val :lambda-list '(m))
(cl:defmethod distance4-val ((m <Range-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:distance4-val is deprecated.  Use gs_service-srv:distance4 instead.")
  (distance4 m))

(cl:ensure-generic-function 'distance5-val :lambda-list '(m))
(cl:defmethod distance5-val ((m <Range-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:distance5-val is deprecated.  Use gs_service-srv:distance5 instead.")
  (distance5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Range-response>) ostream)
  "Serializes a message object of type '<Range-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Range-response>) istream)
  "Deserializes a message object of type '<Range-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance5) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Range-response>)))
  "Returns string type for a service object of type '<Range-response>"
  "gs_service/RangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range-response)))
  "Returns string type for a service object of type 'Range-response"
  "gs_service/RangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Range-response>)))
  "Returns md5sum for a message object of type '<Range-response>"
  "22fa633ab47d5522f6597a4b0a3bd94d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Range-response)))
  "Returns md5sum for a message object of type 'Range-response"
  "22fa633ab47d5522f6597a4b0a3bd94d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Range-response>)))
  "Returns full string definition for message of type '<Range-response>"
  (cl:format cl:nil "~%float32 distance1~%float32 distance2~%float32 distance3~%float32 distance4~%float32 distance5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Range-response)))
  "Returns full string definition for message of type 'Range-response"
  (cl:format cl:nil "~%float32 distance1~%float32 distance2~%float32 distance3~%float32 distance4~%float32 distance5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Range-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Range-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Range-response
    (cl:cons ':distance1 (distance1 msg))
    (cl:cons ':distance2 (distance2 msg))
    (cl:cons ':distance3 (distance3 msg))
    (cl:cons ':distance4 (distance4 msg))
    (cl:cons ':distance5 (distance5 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Range)))
  'Range-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Range)))
  'Range-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range)))
  "Returns string type for a service object of type '<Range>"
  "gs_service/Range")