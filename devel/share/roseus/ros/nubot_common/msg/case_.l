;; Auto-generated. Do not edit!


(when (boundp 'nubot_common::case_)
  (if (not (find-package "NUBOT_COMMON"))
    (make-package "NUBOT_COMMON"))
  (shadow 'case_ (find-package "NUBOT_COMMON")))
(unless (find-package "NUBOT_COMMON::CASE_")
  (make-package "NUBOT_COMMON::CASE_"))

(in-package "ROS")
;;//! \htmlinclude case_.msg.html


(defclass nubot_common::case_
  :super ros::object
  :slots (_case_1 _case_2 _case_3 _case_4 _case_5 ))

(defmethod nubot_common::case_
  (:init
   (&key
    ((:case_1 __case_1) 0)
    ((:case_2 __case_2) 0)
    ((:case_3 __case_3) 0)
    ((:case_4 __case_4) 0)
    ((:case_5 __case_5) 0)
    )
   (send-super :init)
   (setq _case_1 (round __case_1))
   (setq _case_2 (round __case_2))
   (setq _case_3 (round __case_3))
   (setq _case_4 (round __case_4))
   (setq _case_5 (round __case_5))
   self)
  (:case_1
   (&optional __case_1)
   (if __case_1 (setq _case_1 __case_1)) _case_1)
  (:case_2
   (&optional __case_2)
   (if __case_2 (setq _case_2 __case_2)) _case_2)
  (:case_3
   (&optional __case_3)
   (if __case_3 (setq _case_3 __case_3)) _case_3)
  (:case_4
   (&optional __case_4)
   (if __case_4 (setq _case_4 __case_4)) _case_4)
  (:case_5
   (&optional __case_5)
   (if __case_5 (setq _case_5 __case_5)) _case_5)
  (:serialization-length
   ()
   (+
    ;; int32 _case_1
    4
    ;; int32 _case_2
    4
    ;; int32 _case_3
    4
    ;; int32 _case_4
    4
    ;; int32 _case_5
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _case_1
       (write-long _case_1 s)
     ;; int32 _case_2
       (write-long _case_2 s)
     ;; int32 _case_3
       (write-long _case_3 s)
     ;; int32 _case_4
       (write-long _case_4 s)
     ;; int32 _case_5
       (write-long _case_5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _case_1
     (setq _case_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _case_2
     (setq _case_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _case_3
     (setq _case_3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _case_4
     (setq _case_4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _case_5
     (setq _case_5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get nubot_common::case_ :md5sum-) "a32cca2312e0e5b356b7165321a7c171")
(setf (get nubot_common::case_ :datatype-) "nubot_common/case_")
(setf (get nubot_common::case_ :definition-)
      "int32 case_1
int32 case_2
int32 case_3
int32 case_4
int32 case_5

")



(provide :nubot_common/case_ "a32cca2312e0e5b356b7165321a7c171")


