; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude LpsPos-request.msg.html

(cl:defclass <LpsPos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LpsPos-request (<LpsPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsPos-request> is deprecated: use gs_service-srv:LpsPos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsPos-request>) ostream)
  "Serializes a message object of type '<LpsPos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsPos-request>) istream)
  "Deserializes a message object of type '<LpsPos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsPos-request>)))
  "Returns string type for a service object of type '<LpsPos-request>"
  "gs_service/LpsPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsPos-request)))
  "Returns string type for a service object of type 'LpsPos-request"
  "gs_service/LpsPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsPos-request>)))
  "Returns md5sum for a message object of type '<LpsPos-request>"
  "28576301d1e7ebfaeb880e74c20055fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsPos-request)))
  "Returns md5sum for a message object of type 'LpsPos-request"
  "28576301d1e7ebfaeb880e74c20055fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsPos-request>)))
  "Returns full string definition for message of type '<LpsPos-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsPos-request)))
  "Returns full string definition for message of type 'LpsPos-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsPos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsPos-request
))
;//! \htmlinclude LpsPos-response.msg.html

(cl:defclass <LpsPos-response> (roslisp-msg-protocol:ros-message)
  ((lpsX
    :reader lpsX
    :initarg :lpsX
    :type cl:float
    :initform 0.0)
   (lpsY
    :reader lpsY
    :initarg :lpsY
    :type cl:float
    :initform 0.0)
   (lpsZ
    :reader lpsZ
    :initarg :lpsZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass LpsPos-response (<LpsPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LpsPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LpsPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<LpsPos-response> is deprecated: use gs_service-srv:LpsPos-response instead.")))

(cl:ensure-generic-function 'lpsX-val :lambda-list '(m))
(cl:defmethod lpsX-val ((m <LpsPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsX-val is deprecated.  Use gs_service-srv:lpsX instead.")
  (lpsX m))

(cl:ensure-generic-function 'lpsY-val :lambda-list '(m))
(cl:defmethod lpsY-val ((m <LpsPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsY-val is deprecated.  Use gs_service-srv:lpsY instead.")
  (lpsY m))

(cl:ensure-generic-function 'lpsZ-val :lambda-list '(m))
(cl:defmethod lpsZ-val ((m <LpsPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:lpsZ-val is deprecated.  Use gs_service-srv:lpsZ instead.")
  (lpsZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LpsPos-response>) ostream)
  "Serializes a message object of type '<LpsPos-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lpsZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LpsPos-response>) istream)
  "Deserializes a message object of type '<LpsPos-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lpsZ) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LpsPos-response>)))
  "Returns string type for a service object of type '<LpsPos-response>"
  "gs_service/LpsPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsPos-response)))
  "Returns string type for a service object of type 'LpsPos-response"
  "gs_service/LpsPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LpsPos-response>)))
  "Returns md5sum for a message object of type '<LpsPos-response>"
  "28576301d1e7ebfaeb880e74c20055fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LpsPos-response)))
  "Returns md5sum for a message object of type 'LpsPos-response"
  "28576301d1e7ebfaeb880e74c20055fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LpsPos-response>)))
  "Returns full string definition for message of type '<LpsPos-response>"
  (cl:format cl:nil "~%float32 lpsX~%float32 lpsY~%float32 lpsZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LpsPos-response)))
  "Returns full string definition for message of type 'LpsPos-response"
  (cl:format cl:nil "~%float32 lpsX~%float32 lpsY~%float32 lpsZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LpsPos-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LpsPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LpsPos-response
    (cl:cons ':lpsX (lpsX msg))
    (cl:cons ':lpsY (lpsY msg))
    (cl:cons ':lpsZ (lpsZ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LpsPos)))
  'LpsPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LpsPos)))
  'LpsPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LpsPos)))
  "Returns string type for a service object of type '<LpsPos>"
  "gs_service/LpsPos")