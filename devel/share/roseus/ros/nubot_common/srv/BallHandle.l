;; Auto-generated. Do not edit!


(when (boundp 'nubot_common::BallHandle)
  (if (not (find-package "NUBOT_COMMON"))
    (make-package "NUBOT_COMMON"))
  (shadow 'BallHandle (find-package "NUBOT_COMMON")))
(unless (find-package "NUBOT_COMMON::BALLHANDLE")
  (make-package "NUBOT_COMMON::BALLHANDLE"))
(unless (find-package "NUBOT_COMMON::BALLHANDLEREQUEST")
  (make-package "NUBOT_COMMON::BALLHANDLEREQUEST"))
(unless (find-package "NUBOT_COMMON::BALLHANDLERESPONSE")
  (make-package "NUBOT_COMMON::BALLHANDLERESPONSE"))

(in-package "ROS")





(defclass nubot_common::BallHandleRequest
  :super ros::object
  :slots (_enable ))

(defmethod nubot_common::BallHandleRequest
  (:init
   (&key
    ((:enable __enable) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; int32 _enable
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _enable
       (write-long _enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _enable
     (setq _enable (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nubot_common::BallHandleResponse
  :super ros::object
  :slots (_BallIsHolding ))

(defmethod nubot_common::BallHandleResponse
  (:init
   (&key
    ((:BallIsHolding __BallIsHolding) 0)
    )
   (send-super :init)
   (setq _BallIsHolding (round __BallIsHolding))
   self)
  (:BallIsHolding
   (&optional __BallIsHolding)
   (if __BallIsHolding (setq _BallIsHolding __BallIsHolding)) _BallIsHolding)
  (:serialization-length
   ()
   (+
    ;; int32 _BallIsHolding
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _BallIsHolding
       (write-long _BallIsHolding s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _BallIsHolding
     (setq _BallIsHolding (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nubot_common::BallHandle
  :super ros::object
  :slots ())

(setf (get nubot_common::BallHandle :md5sum-) "24c08ec1d72612a66058c7d0c7308c9f")
(setf (get nubot_common::BallHandle :datatype-) "nubot_common/BallHandle")
(setf (get nubot_common::BallHandle :request) nubot_common::BallHandleRequest)
(setf (get nubot_common::BallHandle :response) nubot_common::BallHandleResponse)

(defmethod nubot_common::BallHandleRequest
  (:response () (instance nubot_common::BallHandleResponse :init)))

(setf (get nubot_common::BallHandleRequest :md5sum-) "24c08ec1d72612a66058c7d0c7308c9f")
(setf (get nubot_common::BallHandleRequest :datatype-) "nubot_common/BallHandleRequest")
(setf (get nubot_common::BallHandleRequest :definition-)
      "int32 enable
---
int32 BallIsHolding

")

(setf (get nubot_common::BallHandleResponse :md5sum-) "24c08ec1d72612a66058c7d0c7308c9f")
(setf (get nubot_common::BallHandleResponse :datatype-) "nubot_common/BallHandleResponse")
(setf (get nubot_common::BallHandleResponse :definition-)
      "int32 enable
---
int32 BallIsHolding

")



(provide :nubot_common/BallHandle "24c08ec1d72612a66058c7d0c7308c9f")


