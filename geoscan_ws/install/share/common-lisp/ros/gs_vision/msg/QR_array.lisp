; Auto-generated. Do not edit!


(cl:in-package gs_vision-msg)


;//! \htmlinclude QR_array.msg.html

(cl:defclass <QR_array> (roslisp-msg-protocol:ros-message)
  ((qrs
    :reader qrs
    :initarg :qrs
    :type (cl:vector gs_vision-msg:QR)
   :initform (cl:make-array 0 :element-type 'gs_vision-msg:QR :initial-element (cl:make-instance 'gs_vision-msg:QR))))
)

(cl:defclass QR_array (<QR_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QR_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QR_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_vision-msg:<QR_array> is deprecated: use gs_vision-msg:QR_array instead.")))

(cl:ensure-generic-function 'qrs-val :lambda-list '(m))
(cl:defmethod qrs-val ((m <QR_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:qrs-val is deprecated.  Use gs_vision-msg:qrs instead.")
  (qrs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QR_array>) ostream)
  "Serializes a message object of type '<QR_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'qrs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'qrs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QR_array>) istream)
  "Deserializes a message object of type '<QR_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'qrs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'qrs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gs_vision-msg:QR))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QR_array>)))
  "Returns string type for a message object of type '<QR_array>"
  "gs_vision/QR_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QR_array)))
  "Returns string type for a message object of type 'QR_array"
  "gs_vision/QR_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QR_array>)))
  "Returns md5sum for a message object of type '<QR_array>"
  "c2cc8666bc7a2bbd9d5b119ac5932231")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QR_array)))
  "Returns md5sum for a message object of type 'QR_array"
  "c2cc8666bc7a2bbd9d5b119ac5932231")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QR_array>)))
  "Returns full string definition for message of type '<QR_array>"
  (cl:format cl:nil "QR[] qrs~%================================================================================~%MSG: gs_vision/QR~%string data~%int32 left~%int32 top~%int32 width~%int32 height~%int32 x1~%int32 y1~%int32 x2~%int32 y2~%int32 x3~%int32 y3~%int32 x4~%int32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QR_array)))
  "Returns full string definition for message of type 'QR_array"
  (cl:format cl:nil "QR[] qrs~%================================================================================~%MSG: gs_vision/QR~%string data~%int32 left~%int32 top~%int32 width~%int32 height~%int32 x1~%int32 y1~%int32 x2~%int32 y2~%int32 x3~%int32 y3~%int32 x4~%int32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QR_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'qrs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QR_array>))
  "Converts a ROS message object to a list"
  (cl:list 'QR_array
    (cl:cons ':qrs (qrs msg))
))
