; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude LpsYaw-request.msg.html

(cl:defclass <LpsYaw-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LpsYaw-request (<LpsYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsYaw-request> is deprecated: use gs_service-srv:LpsYaw-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsYaw-request>) ostream)
  "Serializes a message object of type '<LpsYaw-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsYaw-request>) istream)
  "Deserializes a message object of type '<LpsYaw-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsYaw-request>)))
  "Returns string type for a service object of type '<LpsYaw-request>"
  "gs_service/LpsYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsYaw-request)))
  "Returns string type for a service object of type 'LpsYaw-request"
  "gs_service/LpsYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsYaw-request>)))
  "Returns md5sum for a message object of type '<LpsYaw-request>"
  "2160bf7632f25ad6dc7c5aab561198d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsYaw-request)))
  "Returns md5sum for a message object of type 'LpsYaw-request"
  "2160bf7632f25ad6dc7c5aab561198d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsYaw-request>)))
  "Returns full string definition for message of type '<LpsYaw-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsYaw-request)))
  "Returns full string definition for message of type 'LpsYaw-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsYaw-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsYaw-request
))
;//! \htmlinclude LpsYaw-response.msg.html

(cl:defclass <LpsYaw-response> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass LpsYaw-response (<LpsYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsYaw-response> is deprecated: use gs_service-srv:LpsYaw-response instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <LpsYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:yaw-val is deprecated.  Use gs_service-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsYaw-response>) ostream)
  "Serializes a message object of type '<LpsYaw-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsYaw-response>) istream)
  "Deserializes a message object of type '<LpsYaw-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsYaw-response>)))
  "Returns string type for a service object of type '<LpsYaw-response>"
  "gs_service/LpsYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsYaw-response)))
  "Returns string type for a service object of type 'LpsYaw-response"
  "gs_service/LpsYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsYaw-response>)))
  "Returns md5sum for a message object of type '<LpsYaw-response>"
  "2160bf7632f25ad6dc7c5aab561198d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsYaw-response)))
  "Returns md5sum for a message object of type 'LpsYaw-response"
  "2160bf7632f25ad6dc7c5aab561198d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsYaw-response>)))
  "Returns full string definition for message of type '<LpsYaw-response>"
  (cl:format cl:nil "~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsYaw-response)))
  "Returns full string definition for message of type 'LpsYaw-response"
  (cl:format cl:nil "~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsYaw-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsYaw-response
    (cl:cons ':yaw (yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LpsYaw)))
  'LpsYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LpsYaw)))
  'LpsYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsYaw)))
  "Returns string type for a service object of type '<LpsYaw>"
  "gs_service/LpsYaw")