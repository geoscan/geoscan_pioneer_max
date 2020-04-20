; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Pos-request.msg.html

(cl:defclass <Pos-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pos-request (<Pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Pos-request> is deprecated: use gs_service-srv:Pos-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:x-val is deprecated.  Use gs_service-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:y-val is deprecated.  Use gs_service-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:z-val is deprecated.  Use gs_service-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:time-val is deprecated.  Use gs_service-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pos-request>) ostream)
  "Serializes a message object of type '<Pos-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pos-request>) istream)
  "Deserializes a message object of type '<Pos-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pos-request>)))
  "Returns string type for a service object of type '<Pos-request>"
  "gs_service/PosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pos-request)))
  "Returns string type for a service object of type 'Pos-request"
  "gs_service/PosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pos-request>)))
  "Returns md5sum for a message object of type '<Pos-request>"
  "0c725f9e77c9ba3d3e173571341a5f71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pos-request)))
  "Returns md5sum for a message object of type 'Pos-request"
  "0c725f9e77c9ba3d3e173571341a5f71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pos-request>)))
  "Returns full string definition for message of type '<Pos-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pos-request)))
  "Returns full string definition for message of type 'Pos-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pos-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pos-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude Pos-response.msg.html

(cl:defclass <Pos-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Pos-response (<Pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Pos-response> is deprecated: use gs_service-srv:Pos-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pos-response>) ostream)
  "Serializes a message object of type '<Pos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pos-response>) istream)
  "Deserializes a message object of type '<Pos-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pos-response>)))
  "Returns string type for a service object of type '<Pos-response>"
  "gs_service/PosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pos-response)))
  "Returns string type for a service object of type 'Pos-response"
  "gs_service/PosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pos-response>)))
  "Returns md5sum for a message object of type '<Pos-response>"
  "0c725f9e77c9ba3d3e173571341a5f71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pos-response)))
  "Returns md5sum for a message object of type 'Pos-response"
  "0c725f9e77c9ba3d3e173571341a5f71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pos-response>)))
  "Returns full string definition for message of type '<Pos-response>"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pos-response)))
  "Returns full string definition for message of type 'Pos-response"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pos-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pos)))
  'Pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pos)))
  'Pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pos)))
  "Returns string type for a service object of type '<Pos>"
  "gs_service/Pos")