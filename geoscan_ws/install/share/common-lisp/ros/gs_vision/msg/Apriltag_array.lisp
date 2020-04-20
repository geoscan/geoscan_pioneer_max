; Auto-generated. Do not edit!


(cl:in-package gs_vision-msg)


;//! \htmlinclude Apriltag_array.msg.html

(cl:defclass <Apriltag_array> (roslisp-msg-protocol:ros-message)
  ((apriltags
    :reader apriltags
    :initarg :apriltags
    :type (cl:vector gs_vision-msg:Apriltag)
   :initform (cl:make-array 0 :element-type 'gs_vision-msg:Apriltag :initial-element (cl:make-instance 'gs_vision-msg:Apriltag))))
)

(cl:defclass Apriltag_array (<Apriltag_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Apriltag_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Apriltag_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_vision-msg:<Apriltag_array> is deprecated: use gs_vision-msg:Apriltag_array instead.")))

(cl:ensure-generic-function 'apriltags-val :lambda-list '(m))
(cl:defmethod apriltags-val ((m <Apriltag_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:apriltags-val is deprecated.  Use gs_vision-msg:apriltags instead.")
  (apriltags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Apriltag_array>) ostream)
  "Serializes a message object of type '<Apriltag_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'apriltags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'apriltags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Apriltag_array>) istream)
  "Deserializes a message object of type '<Apriltag_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'apriltags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'apriltags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gs_vision-msg:Apriltag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Apriltag_array>)))
  "Returns string type for a message object of type '<Apriltag_array>"
  "gs_vision/Apriltag_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Apriltag_array)))
  "Returns string type for a message object of type 'Apriltag_array"
  "gs_vision/Apriltag_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Apriltag_array>)))
  "Returns md5sum for a message object of type '<Apriltag_array>"
  "f777b1339459d8299ae58a3a829f16d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Apriltag_array)))
  "Returns md5sum for a message object of type 'Apriltag_array"
  "f777b1339459d8299ae58a3a829f16d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Apriltag_array>)))
  "Returns full string definition for message of type '<Apriltag_array>"
  (cl:format cl:nil "Apriltag[] apriltags~%================================================================================~%MSG: gs_vision/Apriltag~%string tag_family~%int32 tag_id~%int32 hamming~%float32 goodness~%float32 decision_margin~%float32 center_x~%float32 center_y~%float32 x1~%float32 y1~%float32 x2~%float32 y2~%float32 x3~%float32 y3~%float32 x4~%float32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Apriltag_array)))
  "Returns full string definition for message of type 'Apriltag_array"
  (cl:format cl:nil "Apriltag[] apriltags~%================================================================================~%MSG: gs_vision/Apriltag~%string tag_family~%int32 tag_id~%int32 hamming~%float32 goodness~%float32 decision_margin~%float32 center_x~%float32 center_y~%float32 x1~%float32 y1~%float32 x2~%float32 y2~%float32 x3~%float32 y3~%float32 x4~%float32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Apriltag_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'apriltags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Apriltag_array>))
  "Converts a ROS message object to a list"
  (cl:list 'Apriltag_array
    (cl:cons ':apriltags (apriltags msg))
))
