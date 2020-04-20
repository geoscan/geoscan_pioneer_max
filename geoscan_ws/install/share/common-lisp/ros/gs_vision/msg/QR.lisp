; Auto-generated. Do not edit!


(cl:in-package gs_vision-msg)


;//! \htmlinclude QR.msg.html

(cl:defclass <QR> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (left
    :reader left
    :initarg :left
    :type cl:integer
    :initform 0)
   (top
    :reader top
    :initarg :top
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:integer
    :initform 0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:integer
    :initform 0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:integer
    :initform 0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:integer
    :initform 0)
   (x3
    :reader x3
    :initarg :x3
    :type cl:integer
    :initform 0)
   (y3
    :reader y3
    :initarg :y3
    :type cl:integer
    :initform 0)
   (x4
    :reader x4
    :initarg :x4
    :type cl:integer
    :initform 0)
   (y4
    :reader y4
    :initarg :y4
    :type cl:integer
    :initform 0))
)

(cl:defclass QR (<QR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gs_vision-msg:<QR> is deprecated: use gs_vision-msg:QR instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:data-val is deprecated.  Use gs_vision-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:left-val is deprecated.  Use gs_vision-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:top-val is deprecated.  Use gs_vision-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:width-val is deprecated.  Use gs_vision-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:height-val is deprecated.  Use gs_vision-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:x1-val is deprecated.  Use gs_vision-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:y1-val is deprecated.  Use gs_vision-msg:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:x2-val is deprecated.  Use gs_vision-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:y2-val is deprecated.  Use gs_vision-msg:y2 instead.")
  (y2 m))

(cl:ensure-generic-function 'x3-val :lambda-list '(m))
(cl:defmethod x3-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:x3-val is deprecated.  Use gs_vision-msg:x3 instead.")
  (x3 m))

(cl:ensure-generic-function 'y3-val :lambda-list '(m))
(cl:defmethod y3-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:y3-val is deprecated.  Use gs_vision-msg:y3 instead.")
  (y3 m))

(cl:ensure-generic-function 'x4-val :lambda-list '(m))
(cl:defmethod x4-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:x4-val is deprecated.  Use gs_vision-msg:x4 instead.")
  (x4 m))

(cl:ensure-generic-function 'y4-val :lambda-list '(m))
(cl:defmethod y4-val ((m <QR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gs_vision-msg:y4-val is deprecated.  Use gs_vision-msg:y4 instead.")
  (y4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QR>) ostream)
  "Serializes a message object of type '<QR>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'top)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QR>) istream)
  "Deserializes a message object of type '<QR>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QR>)))
  "Returns string type for a message object of type '<QR>"
  "gs_vision/QR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QR)))
  "Returns string type for a message object of type 'QR"
  "gs_vision/QR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QR>)))
  "Returns md5sum for a message object of type '<QR>"
  "5ccd7767be668dc7e18c0eabb4d47340")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QR)))
  "Returns md5sum for a message object of type 'QR"
  "5ccd7767be668dc7e18c0eabb4d47340")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QR>)))
  "Returns full string definition for message of type '<QR>"
  (cl:format cl:nil "string data~%int32 left~%int32 top~%int32 width~%int32 height~%int32 x1~%int32 y1~%int32 x2~%int32 y2~%int32 x3~%int32 y3~%int32 x4~%int32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QR)))
  "Returns full string definition for message of type 'QR"
  (cl:format cl:nil "string data~%int32 left~%int32 top~%int32 width~%int32 height~%int32 x1~%int32 y1~%int32 x2~%int32 y2~%int32 x3~%int32 y3~%int32 x4~%int32 y4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QR>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QR>))
  "Converts a ROS message object to a list"
  (cl:list 'QR
    (cl:cons ':data (data msg))
    (cl:cons ':left (left msg))
    (cl:cons ':top (top msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y2 (y2 msg))
    (cl:cons ':x3 (x3 msg))
    (cl:cons ':y3 (y3 msg))
    (cl:cons ':x4 (x4 msg))
    (cl:cons ':y4 (y4 msg))
))
