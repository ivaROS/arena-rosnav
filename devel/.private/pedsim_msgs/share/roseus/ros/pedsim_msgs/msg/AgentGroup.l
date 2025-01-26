;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::AgentGroup)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'AgentGroup (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::AGENTGROUP")
  (make-package "PEDSIM_MSGS::AGENTGROUP"))

(in-package "ROS")
;;//! \htmlinclude AgentGroup.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::AgentGroup
  :super ros::object
  :slots (_header _group_id _age _members _center_of_mass ))

(defmethod pedsim_msgs::AgentGroup
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:group_id __group_id) "")
    ((:age __age) 0.0)
    ((:members __members) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:center_of_mass __center_of_mass) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _group_id (string __group_id))
   (setq _age (float __age))
   (setq _members __members)
   (setq _center_of_mass __center_of_mass)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:group_id
   (&optional __group_id)
   (if __group_id (setq _group_id __group_id)) _group_id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:members
   (&optional __members)
   (if __members (setq _members __members)) _members)
  (:center_of_mass
   (&rest __center_of_mass)
   (if (keywordp (car __center_of_mass))
       (send* _center_of_mass __center_of_mass)
     (progn
       (if __center_of_mass (setq _center_of_mass (car __center_of_mass)))
       _center_of_mass)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _group_id
    4 (length _group_id)
    ;; float64 _age
    8
    ;; string[] _members
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _members)) 4
    ;; geometry_msgs/Pose _center_of_mass
    (send _center_of_mass :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _group_id
       (write-long (length _group_id) s) (princ _group_id s)
     ;; float64 _age
       (sys::poke _age (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _members
     (write-long (length _members) s)
     (dolist (elem _members)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose _center_of_mass
       (send _center_of_mass :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _group_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _age
     (setq _age (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _members
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _members (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _members i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose _center_of_mass
     (send _center_of_mass :deserialize buf ptr-) (incf ptr- (send _center_of_mass :serialization-length))
   ;;
   self)
  )

(setf (get pedsim_msgs::AgentGroup :md5sum-) "9fab0a2d828bf46a2a5bab7425310397")
(setf (get pedsim_msgs::AgentGroup :datatype-) "pedsim_msgs/AgentGroup")
(setf (get pedsim_msgs::AgentGroup :definition-)
      "Header header
string group_id
float64 age
string[] members
geometry_msgs/Pose center_of_mass

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :pedsim_msgs/AgentGroup "9fab0a2d828bf46a2a5bab7425310397")


