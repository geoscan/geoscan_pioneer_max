; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude LpsVel-request.msg.html

(cl:defclass <LpsVel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LpsVel-request (<LpsVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsVel-request> is deprecated: use gs_service-srv:LpsVel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsVel-request>) ostream)
  "Serializes a message object of type '<LpsVel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsVel-request>) istream)
  "Deserializes a message object of type '<LpsVel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsVel-request>)))
  "Returns string type for a service object of type '<LpsVel-request>"
  "gs_service/LpsVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsVel-request)))
  "Returns string type for a service object of type 'LpsVel-request"
  "gs_service/LpsVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsVel-request>)))
  "Returns md5sum for a message object of type '<LpsVel-request>"
  "81c82ec0d0933ca8027062009ab83047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsVel-request)))
  "Returns md5sum for a message object of type 'LpsVel-request"
  "81c82ec0d0933ca8027062009ab83047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsVel-request>)))
  "Returns full string definition for message of type '<LpsVel-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsVel-request)))
  "Returns full string definition for message of type 'LpsVel-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsVel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsVel-request
))
;//! \htmlinclude LpsVel-response.msg.html

(cl:defclass <LpsVel-response> (roslisp-msg-protocol:ros-message)
  ((lpsVelX
    :reader lpsVelX
    :initarg :lpsVelX
    :type cl:float
    :initform 0.0)
   (lpsVelY
    :reader lpsVelY
    :initarg :lpsVelY
    :type cl:float
    :initform 0.0)
   (lpsVelZ
    :reader lpsVelZ
    :initarg :lpsVelZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass LpsVel-response (<LpsVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsVel-response> is deprecated: use gs_service-srv:LpsVel-response instead.")))

(cl:ensure-generic-function 'lpsVelX-val :lambda-list '(m))
(cl:defmethod lpsVelX-val ((m <LpsVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsVelX-val is deprecated.  Use gs_service-srv:lpsVelX instead.")
  (lpsVelX m))

(cl:ensure-generic-function 'lpsVelY-val :lambda-list '(m))
(cl:defmethod lpsVelY-val ((m <LpsVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsVelY-val is deprecated.  Use gs_service-srv:lpsVelY instead.")
  (lpsVelY m))

(cl:ensure-generic-function 'lpsVelZ-val :lambda-list '(m))
(cl:defmethod lpsVelZ-val ((m <LpsVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsVelZ-val is deprecated.  Use gs_service-srv:lpsVelZ instead.")
  (lpsVelZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsVel-response>) ostream)
  "Serializes a message object of type '<LpsVel-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsVelX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsVelY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsVelZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsVel-response>) istream)
  "Deserializes a message object of type '<LpsVel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsVelX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsVelY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsVelZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsVel-response>)))
  "Returns string type for a service object of type '<LpsVel-response>"
  "gs_service/LpsVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsVel-response)))
  "Returns string type for a service object of type 'LpsVel-response"
  "gs_service/LpsVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsVel-response>)))
  "Returns md5sum for a message object of type '<LpsVel-response>"
  "81c82ec0d0933ca8027062009ab83047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsVel-response)))
  "Returns md5sum for a message object of type 'LpsVel-response"
  "81c82ec0d0933ca8027062009ab83047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsVel-response>)))
  "Returns full string definition for message of type '<LpsVel-response>"
  (cl:format cl:nil "~%float32 lpsVelX~%float32 lpsVelY~%float32 lpsVelZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsVel-response)))
  "Returns full string definition for message of type 'LpsVel-response"
  (cl:format cl:nil "~%float32 lpsVelX~%float32 lpsVelY~%float32 lpsVelZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsVel-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsVel-response
    (cl:cons ':lpsVelX (lpsVelX msg))
    (cl:cons ':lpsVelY (lpsVelY msg))
    (cl:cons ':lpsVelZ (lpsVelZ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LpsVel)))
  'LpsVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LpsVel)))
  'LpsVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsVel)))
  "Returns string type for a service object of type '<LpsVel>"
  "gs_service/LpsVel")