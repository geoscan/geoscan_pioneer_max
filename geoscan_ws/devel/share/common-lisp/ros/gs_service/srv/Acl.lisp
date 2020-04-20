; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Acl-request.msg.html

(cl:defclass <Acl-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Acl-request (<Acl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Acl-request> is deprecated: use gs_service-srv:Acl-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acl-request>) ostream)
  "Serializes a message object of type '<Acl-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acl-request>) istream)
  "Deserializes a message object of type '<Acl-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acl-request>)))
  "Returns string type for a service object of type '<Acl-request>"
  "gs_service/AclRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acl-request)))
  "Returns string type for a service object of type 'Acl-request"
  "gs_service/AclRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acl-request>)))
  "Returns md5sum for a message object of type '<Acl-request>"
  "4db697ac4c812d3e6d71960ec5bffe0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acl-request)))
  "Returns md5sum for a message object of type 'Acl-request"
  "4db697ac4c812d3e6d71960ec5bffe0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acl-request>)))
  "Returns full string definition for message of type '<Acl-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acl-request)))
  "Returns full string definition for message of type 'Acl-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acl-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Acl-request
))
;//! \htmlinclude Acl-response.msg.html

(cl:defclass <Acl-response> (roslisp-msg-protocol:ros-message)
  ((ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0))
)

(cl:defclass Acl-response (<Acl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Acl-response> is deprecated: use gs_service-srv:Acl-response instead.")))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <Acl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:ax-val is deprecated.  Use gs_service-srv:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <Acl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:ay-val is deprecated.  Use gs_service-srv:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <Acl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:az-val is deprecated.  Use gs_service-srv:az instead.")
  (az m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acl-response>) ostream)
  "Serializes a message object of type '<Acl-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acl-response>) istream)
  "Deserializes a message object of type '<Acl-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acl-response>)))
  "Returns string type for a service object of type '<Acl-response>"
  "gs_service/AclResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acl-response)))
  "Returns string type for a service object of type 'Acl-response"
  "gs_service/AclResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acl-response>)))
  "Returns md5sum for a message object of type '<Acl-response>"
  "4db697ac4c812d3e6d71960ec5bffe0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acl-response)))
  "Returns md5sum for a message object of type 'Acl-response"
  "4db697ac4c812d3e6d71960ec5bffe0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acl-response>)))
  "Returns full string definition for message of type '<Acl-response>"
  (cl:format cl:nil "~%float32 ax~%float32 ay~%float32 az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acl-response)))
  "Returns full string definition for message of type 'Acl-response"
  (cl:format cl:nil "~%float32 ax~%float32 ay~%float32 az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acl-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Acl-response
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Acl)))
  'Acl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Acl)))
  'Acl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acl)))
  "Returns string type for a service object of type '<Acl>"
  "gs_service/Acl")