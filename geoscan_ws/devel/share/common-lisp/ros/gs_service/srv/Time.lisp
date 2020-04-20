; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Time-request.msg.html

(cl:defclass <Time-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Time-request (<Time-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Time-request> is deprecated: use gs_service-srv:Time-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time-request>) ostream)
  "Serializes a message object of type '<Time-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time-request>) istream)
  "Deserializes a message object of type '<Time-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time-request>)))
  "Returns string type for a service object of type '<Time-request>"
  "gs_service/TimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time-request)))
  "Returns string type for a service object of type 'Time-request"
  "gs_service/TimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time-request>)))
  "Returns md5sum for a message object of type '<Time-request>"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time-request)))
  "Returns md5sum for a message object of type 'Time-request"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time-request>)))
  "Returns full string definition for message of type '<Time-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time-request)))
  "Returns full string definition for message of type 'Time-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Time-request
))
;//! \htmlinclude Time-response.msg.html

(cl:defclass <Time-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Time-response (<Time-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Time-response> is deprecated: use gs_service-srv:Time-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Time-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:time-val is deprecated.  Use gs_service-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time-response>) ostream)
  "Serializes a message object of type '<Time-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time-response>) istream)
  "Deserializes a message object of type '<Time-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time-response>)))
  "Returns string type for a service object of type '<Time-response>"
  "gs_service/TimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time-response)))
  "Returns string type for a service object of type 'Time-response"
  "gs_service/TimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time-response>)))
  "Returns md5sum for a message object of type '<Time-response>"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time-response)))
  "Returns md5sum for a message object of type 'Time-response"
  "595a4e99326479146b97bd6237a70ce2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time-response>)))
  "Returns full string definition for message of type '<Time-response>"
  (cl:format cl:nil "~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time-response)))
  "Returns full string definition for message of type 'Time-response"
  (cl:format cl:nil "~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Time-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Time)))
  'Time-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Time)))
  'Time-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time)))
  "Returns string type for a service object of type '<Time>"
  "gs_service/Time")