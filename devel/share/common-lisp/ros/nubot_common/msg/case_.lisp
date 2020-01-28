; Auto-generated. Do not edit!


(cl:in-package nubot_common-msg)


;//! \htmlinclude case_.msg.html

(cl:defclass <case_> (roslisp-msg-protocol:ros-message)
  ((case_1
    :reader case_1
    :initarg :case_1
    :type cl:integer
    :initform 0)
   (case_2
    :reader case_2
    :initarg :case_2
    :type cl:integer
    :initform 0)
   (case_3
    :reader case_3
    :initarg :case_3
    :type cl:integer
    :initform 0)
   (case_4
    :reader case_4
    :initarg :case_4
    :type cl:integer
    :initform 0)
   (case_5
    :reader case_5
    :initarg :case_5
    :type cl:integer
    :initform 0))
)

(cl:defclass case_ (<case_>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <case_>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'case_)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-msg:<case_> is deprecated: use nubot_common-msg:case_ instead.")))

(cl:ensure-generic-function 'case_1-val :lambda-list '(m))
(cl:defmethod case_1-val ((m <case_>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:case_1-val is deprecated.  Use nubot_common-msg:case_1 instead.")
  (case_1 m))

(cl:ensure-generic-function 'case_2-val :lambda-list '(m))
(cl:defmethod case_2-val ((m <case_>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:case_2-val is deprecated.  Use nubot_common-msg:case_2 instead.")
  (case_2 m))

(cl:ensure-generic-function 'case_3-val :lambda-list '(m))
(cl:defmethod case_3-val ((m <case_>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:case_3-val is deprecated.  Use nubot_common-msg:case_3 instead.")
  (case_3 m))

(cl:ensure-generic-function 'case_4-val :lambda-list '(m))
(cl:defmethod case_4-val ((m <case_>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:case_4-val is deprecated.  Use nubot_common-msg:case_4 instead.")
  (case_4 m))

(cl:ensure-generic-function 'case_5-val :lambda-list '(m))
(cl:defmethod case_5-val ((m <case_>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-msg:case_5-val is deprecated.  Use nubot_common-msg:case_5 instead.")
  (case_5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <case_>) ostream)
  "Serializes a message object of type '<case_>"
  (cl:let* ((signed (cl:slot-value msg 'case_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'case_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'case_3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'case_4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'case_5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <case_>) istream)
  "Deserializes a message object of type '<case_>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'case_1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'case_2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'case_3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'case_4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'case_5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<case_>)))
  "Returns string type for a message object of type '<case_>"
  "nubot_common/case_")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'case_)))
  "Returns string type for a message object of type 'case_"
  "nubot_common/case_")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<case_>)))
  "Returns md5sum for a message object of type '<case_>"
  "a32cca2312e0e5b356b7165321a7c171")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'case_)))
  "Returns md5sum for a message object of type 'case_"
  "a32cca2312e0e5b356b7165321a7c171")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<case_>)))
  "Returns full string definition for message of type '<case_>"
  (cl:format cl:nil "int32 case_1~%int32 case_2~%int32 case_3~%int32 case_4~%int32 case_5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'case_)))
  "Returns full string definition for message of type 'case_"
  (cl:format cl:nil "int32 case_1~%int32 case_2~%int32 case_3~%int32 case_4~%int32 case_5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <case_>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <case_>))
  "Converts a ROS message object to a list"
  (cl:list 'case_
    (cl:cons ':case_1 (case_1 msg))
    (cl:cons ':case_2 (case_2 msg))
    (cl:cons ':case_3 (case_3 msg))
    (cl:cons ':case_4 (case_4 msg))
    (cl:cons ':case_5 (case_5 msg))
))
