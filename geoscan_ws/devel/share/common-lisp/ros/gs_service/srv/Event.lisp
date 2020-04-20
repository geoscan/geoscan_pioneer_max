; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Event-request.msg.html

(cl:defclass <Event-request> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:integer
    :initform 0))
)

(cl:defclass Event-request (<Event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Event-request> is deprecated: use gs_service-srv:Event-request instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <Event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:event-val is deprecated.  Use gs_service-srv:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event-request>) ostream)
  "Serializes a message object of type '<Event-request>"
  (cl:let* ((signed (cl:slot-value msg 'event)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event-request>) istream)
  "Deserializes a message object of type '<Event-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event-request>)))
  "Returns string type for a service object of type '<Event-request>"
  "gs_service/EventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event-request)))
  "Returns string type for a service object of type 'Event-request"
  "gs_service/EventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event-request>)))
  "Returns md5sum for a message object of type '<Event-request>"
  "5f4775d9a171b58017f1f8ca79caa3a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event-request)))
  "Returns md5sum for a message object of type 'Event-request"
  "5f4775d9a171b58017f1f8ca79caa3a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event-request>)))
  "Returns full string definition for message of type '<Event-request>"
  (cl:format cl:nil "int32 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event-request)))
  "Returns full string definition for message of type 'Event-request"
  (cl:format cl:nil "int32 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Event-request
    (cl:cons ':event (event msg))
))
;//! \htmlinclude Event-response.msg.html

(cl:defclass <Event-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass Event-response (<Event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Event-response> is deprecated: use gs_service-srv:Event-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event-response>) ostream)
  "Serializes a message object of type '<Event-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event-response>) istream)
  "Deserializes a message object of type '<Event-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event-response>)))
  "Returns string type for a service object of type '<Event-response>"
  "gs_service/EventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event-response)))
  "Returns string type for a service object of type 'Event-response"
  "gs_service/EventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event-response>)))
  "Returns md5sum for a message object of type '<Event-response>"
  "5f4775d9a171b58017f1f8ca79caa3a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event-response)))
  "Returns md5sum for a message object of type 'Event-response"
  "5f4775d9a171b58017f1f8ca79caa3a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event-response>)))
  "Returns full string definition for message of type '<Event-response>"
  (cl:format cl:nil "~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event-response)))
  "Returns full string definition for message of type 'Event-response"
  (cl:format cl:nil "~%int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Event-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Event)))
  'Event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Event)))
  'Event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event)))
  "Returns string type for a service object of type '<Event>"
  "gs_service/Event")