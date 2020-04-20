; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Live-request.msg.html

(cl:defclass <Live-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Live-request (<Live-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Live-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Live-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Live-request> is deprecated: use gs_service-srv:Live-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Live-request>) ostream)
  "Serializes a message object of type '<Live-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Live-request>) istream)
  "Deserializes a message object of type '<Live-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Live-request>)))
  "Returns string type for a service object of type '<Live-request>"
  "gs_service/LiveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Live-request)))
  "Returns string type for a service object of type 'Live-request"
  "gs_service/LiveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Live-request>)))
  "Returns md5sum for a message object of type '<Live-request>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Live-request)))
  "Returns md5sum for a message object of type 'Live-request"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Live-request>)))
  "Returns full string definition for message of type '<Live-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Live-request)))
  "Returns full string definition for message of type 'Live-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Live-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Live-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Live-request
))
;//! \htmlinclude Live-response.msg.html

(cl:defclass <Live-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Live-response (<Live-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Live-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Live-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Live-response> is deprecated: use gs_service-srv:Live-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Live-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Live-response>) ostream)
  "Serializes a message object of type '<Live-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Live-response>) istream)
  "Deserializes a message object of type '<Live-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Live-response>)))
  "Returns string type for a service object of type '<Live-response>"
  "gs_service/LiveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Live-response)))
  "Returns string type for a service object of type 'Live-response"
  "gs_service/LiveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Live-response>)))
  "Returns md5sum for a message object of type '<Live-response>"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Live-response)))
  "Returns md5sum for a message object of type 'Live-response"
  "3a1255d4d998bd4d6585c64639b5ee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Live-response>)))
  "Returns full string definition for message of type '<Live-response>"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Live-response)))
  "Returns full string definition for message of type 'Live-response"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Live-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Live-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Live-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Live)))
  'Live-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Live)))
  'Live-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Live)))
  "Returns string type for a service object of type '<Live>"
  "gs_service/Live")