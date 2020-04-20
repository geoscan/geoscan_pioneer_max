; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude PosGPS-request.msg.html

(cl:defclass <PosGPS-request> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosGPS-request (<PosGPS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosGPS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosGPS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<PosGPS-request> is deprecated: use gs_service-srv:PosGPS-request instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <PosGPS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:latitude-val is deprecated.  Use gs_service-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <PosGPS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:longitude-val is deprecated.  Use gs_service-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <PosGPS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:altitude-val is deprecated.  Use gs_service-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosGPS-request>) ostream)
  "Serializes a message object of type '<PosGPS-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosGPS-request>) istream)
  "Deserializes a message object of type '<PosGPS-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosGPS-request>)))
  "Returns string type for a service object of type '<PosGPS-request>"
  "gs_service/PosGPSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosGPS-request)))
  "Returns string type for a service object of type 'PosGPS-request"
  "gs_service/PosGPSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosGPS-request>)))
  "Returns md5sum for a message object of type '<PosGPS-request>"
  "116f4420ea0459e5fc977d3ea8f73c46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosGPS-request)))
  "Returns md5sum for a message object of type 'PosGPS-request"
  "116f4420ea0459e5fc977d3ea8f73c46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosGPS-request>)))
  "Returns full string definition for message of type '<PosGPS-request>"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%float32 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosGPS-request)))
  "Returns full string definition for message of type 'PosGPS-request"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%float32 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosGPS-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosGPS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PosGPS-request
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
;//! \htmlinclude PosGPS-response.msg.html

(cl:defclass <PosGPS-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PosGPS-response (<PosGPS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosGPS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosGPS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<PosGPS-response> is deprecated: use gs_service-srv:PosGPS-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PosGPS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosGPS-response>) ostream)
  "Serializes a message object of type '<PosGPS-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosGPS-response>) istream)
  "Deserializes a message object of type '<PosGPS-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosGPS-response>)))
  "Returns string type for a service object of type '<PosGPS-response>"
  "gs_service/PosGPSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosGPS-response)))
  "Returns string type for a service object of type 'PosGPS-response"
  "gs_service/PosGPSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosGPS-response>)))
  "Returns md5sum for a message object of type '<PosGPS-response>"
  "116f4420ea0459e5fc977d3ea8f73c46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosGPS-response)))
  "Returns md5sum for a message object of type 'PosGPS-response"
  "116f4420ea0459e5fc977d3ea8f73c46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosGPS-response>)))
  "Returns full string definition for message of type '<PosGPS-response>"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosGPS-response)))
  "Returns full string definition for message of type 'PosGPS-response"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosGPS-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosGPS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PosGPS-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PosGPS)))
  'PosGPS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PosGPS)))
  'PosGPS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosGPS)))
  "Returns string type for a service object of type '<PosGPS>"
  "gs_service/PosGPS")