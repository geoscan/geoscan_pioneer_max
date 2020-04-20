; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Info-request.msg.html

(cl:defclass <Info-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Info-request (<Info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Info-request> is deprecated: use gs_service-srv:Info-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Info-request>) ostream)
  "Serializes a message object of type '<Info-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Info-request>) istream)
  "Deserializes a message object of type '<Info-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Info-request>)))
  "Returns string type for a service object of type '<Info-request>"
  "gs_service/InfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Info-request)))
  "Returns string type for a service object of type 'Info-request"
  "gs_service/InfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Info-request>)))
  "Returns md5sum for a message object of type '<Info-request>"
  "c8470232561560e383557c02344b87f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Info-request)))
  "Returns md5sum for a message object of type 'Info-request"
  "c8470232561560e383557c02344b87f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Info-request>)))
  "Returns full string definition for message of type '<Info-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Info-request)))
  "Returns full string definition for message of type 'Info-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Info-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Info-request
))
;//! \htmlinclude Info-response.msg.html

(cl:defclass <Info-response> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:string
    :initform ""))
)

(cl:defclass Info-response (<Info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Info-response> is deprecated: use gs_service-srv:Info-response instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:num-val is deprecated.  Use gs_service-srv:num instead.")
  (num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Info-response>) ostream)
  "Serializes a message object of type '<Info-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'num))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Info-response>) istream)
  "Deserializes a message object of type '<Info-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'num) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Info-response>)))
  "Returns string type for a service object of type '<Info-response>"
  "gs_service/InfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Info-response)))
  "Returns string type for a service object of type 'Info-response"
  "gs_service/InfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Info-response>)))
  "Returns md5sum for a message object of type '<Info-response>"
  "c8470232561560e383557c02344b87f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Info-response)))
  "Returns md5sum for a message object of type 'Info-response"
  "c8470232561560e383557c02344b87f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Info-response>)))
  "Returns full string definition for message of type '<Info-response>"
  (cl:format cl:nil "~%string num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Info-response)))
  "Returns full string definition for message of type 'Info-response"
  (cl:format cl:nil "~%string num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Info-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'num))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Info-response
    (cl:cons ':num (num msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Info)))
  'Info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Info)))
  'Info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Info)))
  "Returns string type for a service object of type '<Info>"
  "gs_service/Info")