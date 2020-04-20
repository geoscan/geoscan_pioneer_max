; Auto-generated. Do not edit!


(cl:in-package gs_service-srv)


;//! \htmlinclude Log-request.msg.html

(cl:defclass <Log-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Log-request (<Log-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Log-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Log-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Log-request> is deprecated: use gs_service-srv:Log-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Log-request>) ostream)
  "Serializes a message object of type '<Log-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Log-request>) istream)
  "Deserializes a message object of type '<Log-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Log-request>)))
  "Returns string type for a service object of type '<Log-request>"
  "gs_service/LogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log-request)))
  "Returns string type for a service object of type 'Log-request"
  "gs_service/LogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Log-request>)))
  "Returns md5sum for a message object of type '<Log-request>"
  "52d4db86eb00b72e64733ff4ed17355d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Log-request)))
  "Returns md5sum for a message object of type 'Log-request"
  "52d4db86eb00b72e64733ff4ed17355d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Log-request>)))
  "Returns full string definition for message of type '<Log-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Log-request)))
  "Returns full string definition for message of type 'Log-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Log-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Log-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Log-request
))
;//! \htmlinclude Log-response.msg.html

(cl:defclass <Log-response> (roslisp-msg-protocol:ros-message)
  ((msgs
    :reader msgs
    :initarg :msgs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Log-response (<Log-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Log-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Log-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-srv:<Log-response> is deprecated: use gs_service-srv:Log-response instead.")))

(cl:ensure-generic-function 'msgs-val :lambda-list '(m))
(cl:defmethod msgs-val ((m <Log-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-srv:msgs-val is deprecated.  Use gs_service-srv:msgs instead.")
  (msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Log-response>) ostream)
  "Serializes a message object of type '<Log-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Log-response>) istream)
  "Deserializes a message object of type '<Log-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'msgs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'msgs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Log-response>)))
  "Returns string type for a service object of type '<Log-response>"
  "gs_service/LogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log-response)))
  "Returns string type for a service object of type 'Log-response"
  "gs_service/LogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Log-response>)))
  "Returns md5sum for a message object of type '<Log-response>"
  "52d4db86eb00b72e64733ff4ed17355d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Log-response)))
  "Returns md5sum for a message object of type 'Log-response"
  "52d4db86eb00b72e64733ff4ed17355d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Log-response>)))
  "Returns full string definition for message of type '<Log-response>"
  (cl:format cl:nil "~%string[] msgs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Log-response)))
  "Returns full string definition for message of type 'Log-response"
  (cl:format cl:nil "~%string[] msgs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Log-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'msgs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Log-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Log-response
    (cl:cons ':msgs (msgs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Log)))
  'Log-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Log)))
  'Log-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Log)))
  "Returns string type for a service object of type '<Log>"
  "gs_service/Log")