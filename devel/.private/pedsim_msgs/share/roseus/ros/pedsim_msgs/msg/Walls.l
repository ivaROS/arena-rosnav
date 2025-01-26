;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::Walls)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'Walls (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::WALLS")
  (make-package "PEDSIM_MSGS::WALLS"))

(in-package "ROS")
;;//! \htmlinclude Walls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::Walls
  :super ros::object
  :slots (_header _walls ))

(defmethod pedsim_msgs::Walls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:walls __walls) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _walls __walls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pedsim_msgs/Wall[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pedsim_msgs/Wall[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pedsim_msgs/Wall[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance pedsim_msgs::Wall :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pedsim_msgs::Walls :md5sum-) "9a1156a7d87b3318357fc49bf6a10aaf")
(setf (get pedsim_msgs::Walls :datatype-) "pedsim_msgs/Walls")
(setf (get pedsim_msgs::Walls :definition-)
      "# A collection of line obstacles.
# No need to header since these are detemined at sim initiation time.
Header header
pedsim_msgs/Wall[] walls

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
MSG: pedsim_msgs/Wall
# A line obstacle in the simulator.

geometry_msgs/Point start
geometry_msgs/Point end
uint8 layer
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pedsim_msgs/Walls "9a1156a7d87b3318357fc49bf6a10aaf")


