;; Auto-generated. Do not edit!


(when (boundp 'nubot_common::VelCmd)
  (if (not (find-package "NUBOT_COMMON"))
    (make-package "NUBOT_COMMON"))
  (shadow 'VelCmd (find-package "NUBOT_COMMON")))
(unless (find-package "NUBOT_COMMON::VELCMD")
  (make-package "NUBOT_COMMON::VELCMD"))

(in-package "ROS")
;;//! \htmlinclude VelCmd.msg.html


(defclass nubot_common::VelCmd
  :super ros::object
  :slots (_stop_ _Vx _Vy _w ))

(defmethod nubot_common::VelCmd
  (:init
   (&key
    ((:stop_ __stop_) nil)
    ((:Vx __Vx) 0)
    ((:Vy __Vy) 0)
    ((:w __w) 0)
    )
   (send-super :init)
   (setq _stop_ __stop_)
   (setq _Vx (round __Vx))
   (setq _Vy (round __Vy))
   (setq _w (round __w))
   self)
  (:stop_
   (&optional __stop_)
   (if __stop_ (setq _stop_ __stop_)) _stop_)
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; bool _stop_
    1
    ;; int32 _Vx
    4
    ;; int32 _Vy
    4
    ;; int32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop_
       (if _stop_ (write-byte -1 s) (write-byte 0 s))
     ;; int32 _Vx
       (write-long _Vx s)
     ;; int32 _Vy
       (write-long _Vy s)
     ;; int32 _w
       (write-long _w s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop_
     (setq _stop_ (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _Vx
     (setq _Vx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vy
     (setq _Vy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _w
     (setq _w (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nubot_common::VelCmd :md5sum-) "604cf27849c8c52f0814ecda3ca7e153")
(setf (get nubot_common::VelCmd :datatype-) "nubot_common/VelCmd")
(setf (get nubot_common::VelCmd :definition-)
      "bool stop_
int32 Vx
int32 Vy
int32 w

")



(provide :nubot_common/VelCmd "604cf27849c8c52f0814ecda3ca7e153")


