; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Alt-request.msg.html

(cl:defclass <Alt-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Alt-request (<Alt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Alt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Alt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Alt-request> is deprecated: use gs_service-srv:Alt-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Alt-request>) ostream)
  "Serializes a message object of type '<Alt-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Alt-request>) istream)
  "Deserializes a message object of type '<Alt-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Alt-request>)))
  "Returns string type for a service object of type '<Alt-request>"
  "gs_service/AltRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Alt-request)))
  "Returns string type for a service object of type 'Alt-request"
  "gs_service/AltRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Alt-request>)))
  "Returns md5sum for a message object of type '<Alt-request>"
  "6e65a95f8aa933dff5e33d16e05a9392")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Alt-request)))
  "Returns md5sum for a message object of type 'Alt-request"
  "6e65a95f8aa933dff5e33d16e05a9392")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Alt-request>)))
  "Returns full string definition for message of type '<Alt-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Alt-request)))
  "Returns full string definition for message of type 'Alt-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Alt-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Alt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Alt-request
))
;//! \htmlinclude Alt-response.msg.html

(cl:defclass <Alt-response> (roslisp-msg-protocol:ros-message)
  ((altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass Alt-response (<Alt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Alt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Alt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Alt-response> is deprecated: use gs_service-srv:Alt-response instead.")))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Alt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:altitude-val is deprecated.  Use gs_service-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Alt-response>) ostream)
  "Serializes a message object of type '<Alt-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Alt-response>) istream)
  "Deserializes a message object of type '<Alt-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Alt-response>)))
  "Returns string type for a service object of type '<Alt-response>"
  "gs_service/AltResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Alt-response)))
  "Returns string type for a service object of type 'Alt-response"
  "gs_service/AltResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Alt-response>)))
  "Returns md5sum for a message object of type '<Alt-response>"
  "6e65a95f8aa933dff5e33d16e05a9392")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Alt-response)))
  "Returns md5sum for a message object of type 'Alt-response"
  "6e65a95f8aa933dff5e33d16e05a9392")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Alt-response>)))
  "Returns full string definition for message of type '<Alt-response>"
  (cl:format cl:nil "float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Alt-response)))
  "Returns full string definition for message of type 'Alt-response"
  (cl:format cl:nil "float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Alt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Alt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Alt-response
    (cl:cons ':altitude (altitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Alt)))
  'Alt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Alt)))
  'Alt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Alt)))
  "Returns string type for a service object of type '<Alt>"
  "gs_service/Alt")