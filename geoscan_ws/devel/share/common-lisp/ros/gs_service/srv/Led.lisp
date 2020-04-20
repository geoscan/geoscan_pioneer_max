; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Led-request.msg.html

(cl:defclass <Led-request> (roslisp-msg-protocol:ros-message)
  ((leds
    :reader leds
    :initarg :leds
    :type (cl:vector gs_service-msg:RGBgs)
   :initform (cl:make-array 0 :element-type 'gs_service-msg:RGBgs :initial-element (cl:make-instance 'gs_service-msg:RGBgs))))
)

(cl:defclass Led-request (<Led-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Led-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Led-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Led-request> is deprecated: use gs_service-srv:Led-request instead.")))

(cl:ensure-generic-function 'leds-val :lambda-list '(m))
(cl:defmethod leds-val ((m <Led-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:leds-val is deprecated.  Use gs_service-srv:leds instead.")
  (leds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Led-request>) ostream)
  "Serializes a message object of type '<Led-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'leds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'leds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Led-request>) istream)
  "Deserializes a message object of type '<Led-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'leds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'leds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gs_service-msg:RGBgs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Led-request>)))
  "Returns string type for a service object of type '<Led-request>"
  "gs_service/LedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Led-request)))
  "Returns string type for a service object of type 'Led-request"
  "gs_service/LedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Led-request>)))
  "Returns md5sum for a message object of type '<Led-request>"
  "61be35dc5f864469393369c906dab4cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Led-request)))
  "Returns md5sum for a message object of type 'Led-request"
  "61be35dc5f864469393369c906dab4cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Led-request>)))
  "Returns full string definition for message of type '<Led-request>"
  (cl:format cl:nil "RGBgs[] leds~%~%~%================================================================================~%MSG: gs_service/RGBgs~%bool r~%bool g~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Led-request)))
  "Returns full string definition for message of type 'Led-request"
  (cl:format cl:nil "RGBgs[] leds~%~%~%================================================================================~%MSG: gs_service/RGBgs~%bool r~%bool g~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Led-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'leds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Led-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Led-request
    (cl:cons ':leds (leds msg))
))
;//! \htmlinclude Led-response.msg.html

(cl:defclass <Led-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Led-response (<Led-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Led-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Led-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Led-response> is deprecated: use gs_service-srv:Led-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Led-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:status-val is deprecated.  Use gs_service-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Led-response>) ostream)
  "Serializes a message object of type '<Led-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Led-response>) istream)
  "Deserializes a message object of type '<Led-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Led-response>)))
  "Returns string type for a service object of type '<Led-response>"
  "gs_service/LedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Led-response)))
  "Returns string type for a service object of type 'Led-response"
  "gs_service/LedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Led-response>)))
  "Returns md5sum for a message object of type '<Led-response>"
  "61be35dc5f864469393369c906dab4cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Led-response)))
  "Returns md5sum for a message object of type 'Led-response"
  "61be35dc5f864469393369c906dab4cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Led-response>)))
  "Returns full string definition for message of type '<Led-response>"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Led-response)))
  "Returns full string definition for message of type 'Led-response"
  (cl:format cl:nil "~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Led-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Led-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Led-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Led)))
  'Led-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Led)))
  'Led-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Led)))
  "Returns string type for a service object of type '<Led>"
  "gs_service/Led")