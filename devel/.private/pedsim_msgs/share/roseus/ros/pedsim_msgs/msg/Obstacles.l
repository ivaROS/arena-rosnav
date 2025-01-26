;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::Obstacles)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'Obstacles (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::OBSTACLES")
  (make-package "PEDSIM_MSGS::OBSTACLES"))

(in-package "ROS")
;;//! \htmlinclude Obstacles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::Obstacles
  :super ros::object
  :slots (_header _obstacles ))

(defmethod pedsim_msgs::Obstacles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pedsim_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pedsim_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pedsim_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance pedsim_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pedsim_msgs::Obstacles :md5sum-) "20b3b853de19ac636ddb46225ceab6bf")
(setf (get pedsim_msgs::Obstacles :datatype-) "pedsim_msgs/Obstacles")
(setf (get pedsim_msgs::Obstacles :definition-)
      "# A collection of interactive obstacles
Header header
pedsim_msgs/Obstacle[] obstacles

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
MSG: pedsim_msgs/Obstacle
string name
# type can be one of the following: \"shelf\"
string type
geometry_msgs/Pose pose
float64 interaction_radius
string yaml_path

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



(provide :pedsim_msgs/Obstacles "20b3b853de19ac636ddb46225ceab6bf")


