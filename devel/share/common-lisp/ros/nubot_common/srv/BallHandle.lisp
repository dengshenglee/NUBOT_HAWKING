; Auto-generated. Do not edit!


(cl:in-package nubot_common-srv)


;//! \htmlinclude BallHandle-request.msg.html

(cl:defclass <BallHandle-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:integer
    :initform 0))
)

(cl:defclass BallHandle-request (<BallHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-srv:<BallHandle-request> is deprecated: use nubot_common-srv:BallHandle-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <BallHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-srv:enable-val is deprecated.  Use nubot_common-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallHandle-request>) ostream)
  "Serializes a message object of type '<BallHandle-request>"
  (cl:let* ((signed (cl:slot-value msg 'enable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallHandle-request>) istream)
  "Deserializes a message object of type '<BallHandle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enable) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallHandle-request>)))
  "Returns string type for a service object of type '<BallHandle-request>"
  "nubot_common/BallHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallHandle-request)))
  "Returns string type for a service object of type 'BallHandle-request"
  "nubot_common/BallHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallHandle-request>)))
  "Returns md5sum for a message object of type '<BallHandle-request>"
  "24c08ec1d72612a66058c7d0c7308c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallHandle-request)))
  "Returns md5sum for a message object of type 'BallHandle-request"
  "24c08ec1d72612a66058c7d0c7308c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallHandle-request>)))
  "Returns full string definition for message of type '<BallHandle-request>"
  (cl:format cl:nil "int32 enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallHandle-request)))
  "Returns full string definition for message of type 'BallHandle-request"
  (cl:format cl:nil "int32 enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallHandle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BallHandle-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude BallHandle-response.msg.html

(cl:defclass <BallHandle-response> (roslisp-msg-protocol:ros-message)
  ((BallIsHolding
    :reader BallIsHolding
    :initarg :BallIsHolding
    :type cl:integer
    :initform 0))
)

(cl:defclass BallHandle-response (<BallHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nubot_common-srv:<BallHandle-response> is deprecated: use nubot_common-srv:BallHandle-response instead.")))

(cl:ensure-generic-function 'BallIsHolding-val :lambda-list '(m))
(cl:defmethod BallIsHolding-val ((m <BallHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nubot_common-srv:BallIsHolding-val is deprecated.  Use nubot_common-srv:BallIsHolding instead.")
  (BallIsHolding m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallHandle-response>) ostream)
  "Serializes a message object of type '<BallHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'BallIsHolding)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallHandle-response>) istream)
  "Deserializes a message object of type '<BallHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BallIsHolding) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallHandle-response>)))
  "Returns string type for a service object of type '<BallHandle-response>"
  "nubot_common/BallHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallHandle-response)))
  "Returns string type for a service object of type 'BallHandle-response"
  "nubot_common/BallHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallHandle-response>)))
  "Returns md5sum for a message object of type '<BallHandle-response>"
  "24c08ec1d72612a66058c7d0c7308c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallHandle-response)))
  "Returns md5sum for a message object of type 'BallHandle-response"
  "24c08ec1d72612a66058c7d0c7308c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallHandle-response>)))
  "Returns full string definition for message of type '<BallHandle-response>"
  (cl:format cl:nil "int32 BallIsHolding~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallHandle-response)))
  "Returns full string definition for message of type 'BallHandle-response"
  (cl:format cl:nil "int32 BallIsHolding~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BallHandle-response
    (cl:cons ':BallIsHolding (BallIsHolding msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BallHandle)))
  'BallHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BallHandle)))
  'BallHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallHandle)))
  "Returns string type for a service object of type '<BallHandle>"
  "nubot_common/BallHandle")