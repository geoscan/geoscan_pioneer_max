; Auto-generated. Do not edit!


(cl:in-package gs_vision-msg)


;//! \htmlinclude ArUco_array.msg.html

(cl:defclass <ArUco_array> (roslisp-msg-protocol:ros-message)
  ((arucos
    :reader arucos
    :initarg :arucos
    :type (cl:vector gs_vision-msg:ArUco)
   :initform (cl:make-array 0 :element-type 'gs_vision-msg:ArUco :initial-element (cl:make-instance 'gs_vision-msg:ArUco))))
)

(cl:defclass ArUco_array (<ArUco_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArUco_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArUco_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_vision-msg:<ArUco_array> is deprecated: use gs_vision-msg:ArUco_array instead.")))

(cl:ensure-generic-function 'arucos-val :lambda-list '(m))
(cl:defmethod arucos-val ((m <ArUco_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:arucos-val is deprecated.  Use gs_vision-msg:arucos instead.")
  (arucos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArUco_array>) ostream)
  "Serializes a message object of type '<ArUco_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arucos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arucos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArUco_array>) istream)
  "Deserializes a message object of type '<ArUco_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arucos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arucos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gs_vision-msg:ArUco))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArUco_array>)))
  "Returns string type for a message object of type '<ArUco_array>"
  "gs_vision/ArUco_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArUco_array)))
  "Returns string type for a message object of type 'ArUco_array"
  "gs_vision/ArUco_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArUco_array>)))
  "Returns md5sum for a message object of type '<ArUco_array>"
  "953ee5206a9a587ec30074fd93cdec00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArUco_array)))
  "Returns md5sum for a message object of type 'ArUco_array"
  "953ee5206a9a587ec30074fd93cdec00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArUco_array>)))
  "Returns full string definition for message of type '<ArUco_array>"
  (cl:format cl:nil "ArUco[] arucos~%================================================================================~%MSG: gs_vision/ArUco~%int32 id~%float32 x1~%float32 y1~%float32 x2~%float32 y2~%float32 x3~%float32 y3~%float32 x4~%float32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArUco_array)))
  "Returns full string definition for message of type 'ArUco_array"
  (cl:format cl:nil "ArUco[] arucos~%================================================================================~%MSG: gs_vision/ArUco~%int32 id~%float32 x1~%float32 y1~%float32 x2~%float32 y2~%float32 x3~%float32 y3~%float32 x4~%float32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArUco_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arucos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArUco_array>))
  "Converts a ROS message object to a list"
  (cl:list 'ArUco_array
    (cl:cons ':arucos (arucos msg))
))
