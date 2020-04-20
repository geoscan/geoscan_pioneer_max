; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Yaw-request.msg.html

(cl:defclass <Yaw-request> (roslisp-msg-protocol:ros-message)
  ((y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Yaw-request (<Yaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Yaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Yaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Yaw-request> is deprecated: use gs_service-srv:Yaw-request instead.")))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Yaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:y-val is deprecated.  Use gs_service-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Yaw-request>) ostream)
  "Serializes a message object of type '<Yaw-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Yaw-request>) istream)
  "Deserializes a message object of type '<Yaw-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Yaw-request>)))
  "Returns string type for a service object of type '<Yaw-request>"
  "gs_service/YawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Yaw-request)))
  "Returns string type for a service object of type 'Yaw-request"
  "gs_service/YawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Yaw-request>)))
  "Returns md5sum for a message object of type '<Yaw-request>"
  "d9f1e2fc8e87220228024457fb6ab7f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Yaw-request)))
  "Returns md5sum for a message object of type 'Yaw-request"
  "d9f1e2fc8e87220228024457fb6ab7f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Yaw-request>)))
  "Returns full string definition for message of type '<Yaw-request>"
  (cl:format cl:nil "float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Yaw-request)))
  "Returns full string definition for message of type 'Yaw-request"
  (cl:format cl:nil "float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Yaw-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Yaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Yaw-request
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Yaw-response.msg.html

(cl:defclass <Yaw-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Yaw-response (<Yaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Yaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Yaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Yaw-response> is deprecated: use gs_service-srv:Yaw-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Yaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Yaw-response>) ostream)
  "Serializes a message object of type '<Yaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Yaw-response>) istream)
  "Deserializes a message object of type '<Yaw-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Yaw-response>)))
  "Returns string type for a service object of type '<Yaw-response>"
  "gs_service/YawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Yaw-response)))
  "Returns string type for a service object of type 'Yaw-response"
  "gs_service/YawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Yaw-response>)))
  "Returns md5sum for a message object of type '<Yaw-response>"
  "d9f1e2fc8e87220228024457fb6ab7f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Yaw-response)))
  "Returns md5sum for a message object of type 'Yaw-response"
  "d9f1e2fc8e87220228024457fb6ab7f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Yaw-response>)))
  "Returns full string definition for message of type '<Yaw-response>"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Yaw-response)))
  "Returns full string definition for message of type 'Yaw-response"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Yaw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Yaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Yaw-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Yaw)))
  'Yaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Yaw)))
  'Yaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Yaw)))
  "Returns string type for a service object of type '<Yaw>"
  "gs_service/Yaw")