;; Auto-generated. Do not edit!


(when (boundp 'potential_gap::TrajPlan)
  (if (not (find-package "POTENTIAL_GAP"))
    (make-package "POTENTIAL_GAP"))
  (shadow 'TrajPlan (find-package "POTENTIAL_GAP")))
(unless (find-package "POTENTIAL_GAP::TRAJPLAN")
  (make-package "POTENTIAL_GAP::TRAJPLAN"))

(in-package "ROS")
;;//! \htmlinclude TrajPlan.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass potential_gap::TrajPlan
  :super ros::object
  :slots (_header _child_frame_id _poses _twist ))

(defmethod potential_gap::TrajPlan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:poses __poses) ())
    ((:twist __twist) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _poses __poses)
   (setq _twist __twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; geometry_msgs/Twist[] _twist
    (apply #'+ (send-all _twist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Twist[] _twist
     (write-long (length _twist) s)
     (dolist (elem _twist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Twist[] _twist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _twist (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _twist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get potential_gap::TrajPlan :md5sum-) "7995b12f5ebd4d308e61284d93db9fe6")
(setf (get potential_gap::TrajPlan :datatype-) "potential_gap/TrajPlan")
(setf (get potential_gap::TrajPlan :definition-)
      "Header header
string child_frame_id
geometry_msgs/Pose[] poses
geometry_msgs/Twist[] twist
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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :potential_gap/TrajPlan "7995b12f5ebd4d308e61284d93db9fe6")


