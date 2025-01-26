;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::AgentFeedbacks)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'AgentFeedbacks (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::AGENTFEEDBACKS")
  (make-package "PEDSIM_MSGS::AGENTFEEDBACKS"))

(in-package "ROS")
;;//! \htmlinclude AgentFeedbacks.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::AgentFeedbacks
  :super ros::object
  :slots (_header _agents ))

(defmethod pedsim_msgs::AgentFeedbacks
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agents __agents) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _agents __agents)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:agents
   (&rest __agents)
   (if (keywordp (car __agents))
       (send* _agents __agents)
     (progn
       (if __agents (setq _agents (car __agents)))
       _agents)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pedsim_msgs/AgentFeedback[] _agents
    (apply #'+ (send-all _agents :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pedsim_msgs/AgentFeedback[] _agents
     (write-long (length _agents) s)
     (dolist (elem _agents)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pedsim_msgs/AgentFeedback[] _agents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agents (let (r) (dotimes (i n) (push (instance pedsim_msgs::AgentFeedback :init) r)) r))
     (dolist (elem- _agents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pedsim_msgs::AgentFeedbacks :md5sum-) "60d85c015234b6863418e312316fe4e8")
(setf (get pedsim_msgs::AgentFeedbacks :datatype-) "pedsim_msgs/AgentFeedbacks")
(setf (get pedsim_msgs::AgentFeedbacks :definition-)
      "Header header
pedsim_msgs/AgentFeedback[] agents
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

================================================================================
MSG: pedsim_msgs/AgentFeedback
string id
geometry_msgs/Vector3 force
string social_state
float64 vmax
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :pedsim_msgs/AgentFeedbacks "60d85c015234b6863418e312316fe4e8")


