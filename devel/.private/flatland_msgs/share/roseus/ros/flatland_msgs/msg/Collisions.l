;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::Collisions)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'Collisions (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::COLLISIONS")
  (make-package "FLATLAND_MSGS::COLLISIONS"))

(in-package "ROS")
;;//! \htmlinclude Collisions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flatland_msgs::Collisions
  :super ros::object
  :slots (_header _collisions ))

(defmethod flatland_msgs::Collisions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:collisions __collisions) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _collisions __collisions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:collisions
   (&rest __collisions)
   (if (keywordp (car __collisions))
       (send* _collisions __collisions)
     (progn
       (if __collisions (setq _collisions (car __collisions)))
       _collisions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; flatland_msgs/Collision[] _collisions
    (apply #'+ (send-all _collisions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; flatland_msgs/Collision[] _collisions
     (write-long (length _collisions) s)
     (dolist (elem _collisions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; flatland_msgs/Collision[] _collisions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collisions (let (r) (dotimes (i n) (push (instance flatland_msgs::Collision :init) r)) r))
     (dolist (elem- _collisions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flatland_msgs::Collisions :md5sum-) "6fa318801c160db40a30b49b9efb9f00")
(setf (get flatland_msgs::Collisions :datatype-) "flatland_msgs/Collisions")
(setf (get flatland_msgs::Collisions :definition-)
      "std_msgs/Header header
Collision[] collisions
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
MSG: flatland_msgs/Collision
string entity_A
string body_A
string entity_B
string body_B
float64[] magnitude_forces
Vector2[] contact_positions
Vector2[] contact_normals
================================================================================
MSG: flatland_msgs/Vector2
float64 x
float64 y
")



(provide :flatland_msgs/Collisions "6fa318801c160db40a30b49b9efb9f00")


