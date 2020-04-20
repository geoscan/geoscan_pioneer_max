; Auto-generated. Do not edit!


(cl:in-package gs_service-msg)


;//! \htmlinclude RGBgs.msg.html

(cl:defclass <RGBgs> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:boolean
    :initform cl:nil)
   (g
    :reader g
    :initarg :g
    :type cl:boolean
    :initform cl:nil)
   (b
    :reader b
    :initarg :b
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RGBgs (<RGBgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_service-msg:<RGBgs> is deprecated: use gs_service-msg:RGBgs instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <RGBgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-msg:r-val is deprecated.  Use gs_service-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <RGBgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-msg:g-val is deprecated.  Use gs_service-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <RGBgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_service-msg:b-val is deprecated.  Use gs_service-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBgs>) ostream)
  "Serializes a message object of type '<RGBgs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'r) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'g) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'b) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBgs>) istream)
  "Deserializes a message object of type '<RGBgs>"
    (cl:setf (cl:slot-value msg 'r) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'g) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'b) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBgs>)))
  "Returns string type for a message object of type '<RGBgs>"
  "gs_service/RGBgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBgs)))
  "Returns string type for a message object of type 'RGBgs"
  "gs_service/RGBgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBgs>)))
  "Returns md5sum for a message object of type '<RGBgs>"
  "3d6da4aa340747776b1263dbf87c67c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBgs)))
  "Returns md5sum for a message object of type 'RGBgs"
  "3d6da4aa340747776b1263dbf87c67c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBgs>)))
  "Returns full string definition for message of type '<RGBgs>"
  (cl:format cl:nil "bool r~%bool g~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBgs)))
  "Returns full string definition for message of type 'RGBgs"
  (cl:format cl:nil "bool r~%bool g~%bool b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBgs>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBgs>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBgs
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
