; Auto-generated. Do not edit!


(cl:in-package nubot_common-msg)


;//! \htmlinclude VelCmd.msg.html

(cl:defclass <VelCmd> (roslisp-msg-protocol:ros-message)
  ((stop_
    :reader stop_
    :initarg :stop_
    :type cl:boolean
    :initform cl:nil)
   (Vx
    :reader Vx
    :initarg :Vx
    :type cl:integer
    :initform 0)
   (Vy
    :reader Vy
    :initarg :Vy
    :type cl:integer
    :initform 0)
   (w
    :reader w
    :initarg :w
    :type cl:integer
    :initform 0))
)

(cl:defclass VelCmd (<VelCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-msg:<VelCmd> is deprecated: use nubot_common-msg:VelCmd instead.")))

(cl:ensure-generic-function 'stop_-val :lambda-list '(m))
(cl:defmethod stop_-val ((m <VelCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:stop_-val is deprecated.  Use nubot_common-msg:stop_ instead.")
  (stop_ m))

(cl:ensure-generic-function 'Vx-val :lambda-list '(m))
(cl:defmethod Vx-val ((m <VelCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:Vx-val is deprecated.  Use nubot_common-msg:Vx instead.")
  (Vx m))

(cl:ensure-generic-function 'Vy-val :lambda-list '(m))
(cl:defmethod Vy-val ((m <VelCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:Vy-val is deprecated.  Use nubot_common-msg:Vy instead.")
  (Vy m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <VelCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:w-val is deprecated.  Use nubot_common-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelCmd>) ostream)
  "Serializes a message object of type '<VelCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Vx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'w)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelCmd>) istream)
  "Deserializes a message object of type '<VelCmd>"
    (cl:setf (cl:slot-value msg 'stop_) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'w) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelCmd>)))
  "Returns string type for a message object of type '<VelCmd>"
  "nubot_common/VelCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelCmd)))
  "Returns string type for a message object of type 'VelCmd"
  "nubot_common/VelCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelCmd>)))
  "Returns md5sum for a message object of type '<VelCmd>"
  "604cf27849c8c52f0814ecda3ca7e153")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelCmd)))
  "Returns md5sum for a message object of type 'VelCmd"
  "604cf27849c8c52f0814ecda3ca7e153")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelCmd>)))
  "Returns full string definition for message of type '<VelCmd>"
  (cl:format cl:nil "bool stop_~%int32 Vx~%int32 Vy~%int32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelCmd)))
  "Returns full string definition for message of type 'VelCmd"
  (cl:format cl:nil "bool stop_~%int32 Vx~%int32 Vy~%int32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelCmd>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VelCmd
    (cl:cons ':stop_ (stop_ msg))
    (cl:cons ':Vx (Vx msg))
    (cl:cons ':Vy (Vy msg))
    (cl:cons ':w (w msg))
))
