;; Auto-generated. Do not edit!


(when (boundp 'nubot_common::OdoInfo)
  (if (not (find-package "NUBOT_COMMON"))
    (make-package "NUBOT_COMMON"))
  (shadow 'OdoInfo (find-package "NUBOT_COMMON")))
(unless (find-package "NUBOT_COMMON::ODOINFO")
  (make-package "NUBOT_COMMON::ODOINFO"))

(in-package "ROS")
;;//! \htmlinclude OdoInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nubot_common::OdoInfo
  :super ros::object
  :slots (_header _Vx _Vy _w _angle _BallIsHolding _RobotStuck _PowerState ))

(defmethod nubot_common::OdoInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Vx __Vx) 0.0)
    ((:Vy __Vy) 0.0)
    ((:w __w) 0.0)
    ((:angle __angle) 0.0)
    ((:BallIsHolding __BallIsHolding) nil)
    ((:RobotStuck __RobotStuck) nil)
    ((:PowerState __PowerState) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Vx (float __Vx))
   (setq _Vy (float __Vy))
   (setq _w (float __w))
   (setq _angle (float __angle))
   (setq _BallIsHolding __BallIsHolding)
   (setq _RobotStuck __RobotStuck)
   (setq _PowerState __PowerState)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:BallIsHolding
   (&optional __BallIsHolding)
   (if __BallIsHolding (setq _BallIsHolding __BallIsHolding)) _BallIsHolding)
  (:RobotStuck
   (&optional __RobotStuck)
   (if __RobotStuck (setq _RobotStuck __RobotStuck)) _RobotStuck)
  (:PowerState
   (&optional __PowerState)
   (if __PowerState (setq _PowerState __PowerState)) _PowerState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _Vx
    4
    ;; float32 _Vy
    4
    ;; float32 _w
    4
    ;; float32 _angle
    4
    ;; bool _BallIsHolding
    1
    ;; bool _RobotStuck
    1
    ;; bool _PowerState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vy
       (sys::poke _Vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _BallIsHolding
       (if _BallIsHolding (write-byte -1 s) (write-byte 0 s))
     ;; bool _RobotStuck
       (if _RobotStuck (write-byte -1 s) (write-byte 0 s))
     ;; bool _PowerState
       (if _PowerState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _Vx
     (setq _Vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vy
     (setq _Vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _BallIsHolding
     (setq _BallIsHolding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RobotStuck
     (setq _RobotStuck (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PowerState
     (setq _PowerState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nubot_common::OdoInfo :md5sum-) "8582fa9c5471801c91b381b70caabb2f")
(setf (get nubot_common::OdoInfo :datatype-) "nubot_common/OdoInfo")
(setf (get nubot_common::OdoInfo :definition-)
      "Header  header
float32 Vx
float32 Vy
float32 w
float32 angle
bool    BallIsHolding
bool    RobotStuck
bool    PowerState


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :nubot_common/OdoInfo "8582fa9c5471801c91b381b70caabb2f")


