; Auto-generated. Do not edit!


(cl:in-package nubot_common-srv)


;//! \htmlinclude Shoot-request.msg.html

(cl:defclass <Shoot-request> (roslisp-msg-protocol:ros-message)
  ((strength
    :reader strength
    :initarg :strength
    :type cl:integer
    :initform 0)
   (ShootPos
    :reader ShootPos
    :initarg :ShootPos
    :type cl:integer
    :initform 0))
)

(cl:defclass Shoot-request (<Shoot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shoot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shoot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-srv:<Shoot-request> is deprecated: use nubot_common-srv:Shoot-request instead.")))

(cl:ensure-generic-function 'strength-val :lambda-list '(m))
(cl:defmethod strength-val ((m <Shoot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-srv:strength-val is deprecated.  Use nubot_common-srv:strength instead.")
  (strength m))

(cl:ensure-generic-function 'ShootPos-val :lambda-list '(m))
(cl:defmethod ShootPos-val ((m <Shoot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-srv:ShootPos-val is deprecated.  Use nubot_common-srv:ShootPos instead.")
  (ShootPos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shoot-request>) ostream)
  "Serializes a message object of type '<Shoot-request>"
  (cl:let* ((signed (cl:slot-value msg 'strength)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ShootPos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shoot-request>) istream)
  "Deserializes a message object of type '<Shoot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strength) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ShootPos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shoot-request>)))
  "Returns string type for a service object of type '<Shoot-request>"
  "nubot_common/ShootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot-request)))
  "Returns string type for a service object of type 'Shoot-request"
  "nubot_common/ShootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shoot-request>)))
  "Returns md5sum for a message object of type '<Shoot-request>"
  "34d8cb4a569c45a32032cbd579e425c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shoot-request)))
  "Returns md5sum for a message object of type 'Shoot-request"
  "34d8cb4a569c45a32032cbd579e425c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shoot-request>)))
  "Returns full string definition for message of type '<Shoot-request>"
  (cl:format cl:nil "int32 strength~%int32 ShootPos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shoot-request)))
  "Returns full string definition for message of type 'Shoot-request"
  (cl:format cl:nil "int32 strength~%int32 ShootPos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shoot-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shoot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Shoot-request
    (cl:cons ':strength (strength msg))
    (cl:cons ':ShootPos (ShootPos msg))
))
;//! \htmlinclude Shoot-response.msg.html

(cl:defclass <Shoot-response> (roslisp-msg-protocol:ros-message)
  ((ShootIsDone
    :reader ShootIsDone
    :initarg :ShootIsDone
    :type cl:integer
    :initform 0))
)

(cl:defclass Shoot-response (<Shoot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shoot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shoot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-srv:<Shoot-response> is deprecated: use nubot_common-srv:Shoot-response instead.")))

(cl:ensure-generic-function 'ShootIsDone-val :lambda-list '(m))
(cl:defmethod ShootIsDone-val ((m <Shoot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-srv:ShootIsDone-val is deprecated.  Use nubot_common-srv:ShootIsDone instead.")
  (ShootIsDone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shoot-response>) ostream)
  "Serializes a message object of type '<Shoot-response>"
  (cl:let* ((signed (cl:slot-value msg 'ShootIsDone)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shoot-response>) istream)
  "Deserializes a message object of type '<Shoot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ShootIsDone) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shoot-response>)))
  "Returns string type for a service object of type '<Shoot-response>"
  "nubot_common/ShootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot-response)))
  "Returns string type for a service object of type 'Shoot-response"
  "nubot_common/ShootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shoot-response>)))
  "Returns md5sum for a message object of type '<Shoot-response>"
  "34d8cb4a569c45a32032cbd579e425c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shoot-response)))
  "Returns md5sum for a message object of type 'Shoot-response"
  "34d8cb4a569c45a32032cbd579e425c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shoot-response>)))
  "Returns full string definition for message of type '<Shoot-response>"
  (cl:format cl:nil "int32 ShootIsDone~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shoot-response)))
  "Returns full string definition for message of type 'Shoot-response"
  (cl:format cl:nil "int32 ShootIsDone~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shoot-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shoot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Shoot-response
    (cl:cons ':ShootIsDone (ShootIsDone msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Shoot)))
  'Shoot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Shoot)))
  'Shoot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shoot)))
  "Returns string type for a service object of type '<Shoot>"
  "nubot_common/Shoot")