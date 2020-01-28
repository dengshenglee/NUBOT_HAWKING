;; Auto-generated. Do not edit!


(when (boundp 'nubot_common::Shoot)
  (if (not (find-package "NUBOT_COMMON"))
    (make-package "NUBOT_COMMON"))
  (shadow 'Shoot (find-package "NUBOT_COMMON")))
(unless (find-package "NUBOT_COMMON::SHOOT")
  (make-package "NUBOT_COMMON::SHOOT"))
(unless (find-package "NUBOT_COMMON::SHOOTREQUEST")
  (make-package "NUBOT_COMMON::SHOOTREQUEST"))
(unless (find-package "NUBOT_COMMON::SHOOTRESPONSE")
  (make-package "NUBOT_COMMON::SHOOTRESPONSE"))

(in-package "ROS")





(defclass nubot_common::ShootRequest
  :super ros::object
  :slots (_strength _ShootPos ))

(defmethod nubot_common::ShootRequest
  (:init
   (&key
    ((:strength __strength) 0)
    ((:ShootPos __ShootPos) 0)
    )
   (send-super :init)
   (setq _strength (round __strength))
   (setq _ShootPos (round __ShootPos))
   self)
  (:strength
   (&optional __strength)
   (if __strength (setq _strength __strength)) _strength)
  (:ShootPos
   (&optional __ShootPos)
   (if __ShootPos (setq _ShootPos __ShootPos)) _ShootPos)
  (:serialization-length
   ()
   (+
    ;; int32 _strength
    4
    ;; int32 _ShootPos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _strength
       (write-long _strength s)
     ;; int32 _ShootPos
       (write-long _ShootPos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _strength
     (setq _strength (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ShootPos
     (setq _ShootPos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nubot_common::ShootResponse
  :super ros::object
  :slots (_ShootIsDone ))

(defmethod nubot_common::ShootResponse
  (:init
   (&key
    ((:ShootIsDone __ShootIsDone) 0)
    )
   (send-super :init)
   (setq _ShootIsDone (round __ShootIsDone))
   self)
  (:ShootIsDone
   (&optional __ShootIsDone)
   (if __ShootIsDone (setq _ShootIsDone __ShootIsDone)) _ShootIsDone)
  (:serialization-length
   ()
   (+
    ;; int32 _ShootIsDone
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ShootIsDone
       (write-long _ShootIsDone s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ShootIsDone
     (setq _ShootIsDone (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nubot_common::Shoot
  :super ros::object
  :slots ())

(setf (get nubot_common::Shoot :md5sum-) "34d8cb4a569c45a32032cbd579e425c0")
(setf (get nubot_common::Shoot :datatype-) "nubot_common/Shoot")
(setf (get nubot_common::Shoot :request) nubot_common::ShootRequest)
(setf (get nubot_common::Shoot :response) nubot_common::ShootResponse)

(defmethod nubot_common::ShootRequest
  (:response () (instance nubot_common::ShootResponse :init)))

(setf (get nubot_common::ShootRequest :md5sum-) "34d8cb4a569c45a32032cbd579e425c0")
(setf (get nubot_common::ShootRequest :datatype-) "nubot_common/ShootRequest")
(setf (get nubot_common::ShootRequest :definition-)
      "int32 strength
int32 ShootPos
---
int32 ShootIsDone

")

(setf (get nubot_common::ShootResponse :md5sum-) "34d8cb4a569c45a32032cbd579e425c0")
(setf (get nubot_common::ShootResponse :datatype-) "nubot_common/ShootResponse")
(setf (get nubot_common::ShootResponse :definition-)
      "int32 strength
int32 ShootPos
---
int32 ShootIsDone

")



(provide :nubot_common/Shoot "34d8cb4a569c45a32032cbd579e425c0")


