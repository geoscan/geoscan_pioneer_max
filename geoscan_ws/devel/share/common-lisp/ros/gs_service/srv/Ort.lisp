; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Ort-request.msg.html

(cl:defclass <Ort-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Ort-request (<Ort-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ort-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ort-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Ort-request> is deprecated: use gs_service-srv:Ort-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ort-request>) ostream)
  "Serializes a message object of type '<Ort-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ort-request>) istream)
  "Deserializes a message object of type '<Ort-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ort-request>)))
  "Returns string type for a service object of type '<Ort-request>"
  "gs_service/OrtRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ort-request)))
  "Returns string type for a service object of type 'Ort-request"
  "gs_service/OrtRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ort-request>)))
  "Returns md5sum for a message object of type '<Ort-request>"
  "9b3c60a4574eaeb417260f557d541c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ort-request)))
  "Returns md5sum for a message object of type 'Ort-request"
  "9b3c60a4574eaeb417260f557d541c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ort-request>)))
  "Returns full string definition for message of type '<Ort-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ort-request)))
  "Returns full string definition for message of type 'Ort-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ort-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ort-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Ort-request
))
;//! \htmlinclude Ort-response.msg.html

(cl:defclass <Ort-response> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ort-response (<Ort-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ort-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ort-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Ort-response> is deprecated: use gs_service-srv:Ort-response instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Ort-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:roll-val is deprecated.  Use gs_service-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Ort-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:pitch-val is deprecated.  Use gs_service-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <Ort-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:azimuth-val is deprecated.  Use gs_service-srv:azimuth instead.")
  (azimuth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ort-response>) ostream)
  "Serializes a message object of type '<Ort-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ort-response>) istream)
  "Deserializes a message object of type '<Ort-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ort-response>)))
  "Returns string type for a service object of type '<Ort-response>"
  "gs_service/OrtResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ort-response)))
  "Returns string type for a service object of type 'Ort-response"
  "gs_service/OrtResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ort-response>)))
  "Returns md5sum for a message object of type '<Ort-response>"
  "9b3c60a4574eaeb417260f557d541c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ort-response)))
  "Returns md5sum for a message object of type 'Ort-response"
  "9b3c60a4574eaeb417260f557d541c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ort-response>)))
  "Returns full string definition for message of type '<Ort-response>"
  (cl:format cl:nil "~%float32 roll~%float32 pitch~%float32 azimuth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ort-response)))
  "Returns full string definition for message of type 'Ort-response"
  (cl:format cl:nil "~%float32 roll~%float32 pitch~%float32 azimuth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ort-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ort-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Ort-response
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':azimuth (azimuth msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Ort)))
  'Ort-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Ort)))
  'Ort-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ort)))
  "Returns string type for a service object of type '<Ort>"
  "gs_service/Ort")