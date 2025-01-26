;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::PlannerMode)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'PlannerMode (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::PLANNERMODE")
  (make-package "FORD_MSGS::PLANNERMODE"))

(in-package "ROS")
;;//! \htmlinclude PlannerMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DIFF_MP*" (find-package "FORD_MSGS::PLANNERMODE"))
(shadow '*DIFF_MP* (find-package "FORD_MSGS::PLANNERMODE"))
(defconstant ford_msgs::PlannerMode::*DIFF_MP* 0)
(intern "*NN*" (find-package "FORD_MSGS::PLANNERMODE"))
(shadow '*NN* (find-package "FORD_MSGS::PLANNERMODE"))
(defconstant ford_msgs::PlannerMode::*NN* 1)
(intern "*SPIN_IN_PLACE*" (find-package "FORD_MSGS::PLANNERMODE"))
(shadow '*SPIN_IN_PLACE* (find-package "FORD_MSGS::PLANNERMODE"))
(defconstant ford_msgs::PlannerMode::*SPIN_IN_PLACE* 2)

(defun ford_msgs::PlannerMode-to-symbol (const)
  (cond
        ((= const 0) 'ford_msgs::PlannerMode::*DIFF_MP*)
        ((= const 1) 'ford_msgs::PlannerMode::*NN*)
        ((= const 2) 'ford_msgs::PlannerMode::*SPIN_IN_PLACE*)
        (t nil)))

(defclass ford_msgs::PlannerMode
  :super ros::object
  :slots (_header _mode ))

(defmethod ford_msgs::PlannerMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ford_msgs::PlannerMode :md5sum-) "42413d5e8ea95803185fd741f1d30a4a")
(setf (get ford_msgs::PlannerMode :datatype-) "ford_msgs/PlannerMode")
(setf (get ford_msgs::PlannerMode :definition-)
      "Header header
uint8 mode
uint8 DIFF_MP=0
uint8 NN=1
uint8 SPIN_IN_PLACE=2
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
string frame_id

")



(provide :ford_msgs/PlannerMode "42413d5e8ea95803185fd741f1d30a4a")


