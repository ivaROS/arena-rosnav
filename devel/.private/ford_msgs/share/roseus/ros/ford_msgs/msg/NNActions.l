;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::NNActions)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'NNActions (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::NNACTIONS")
  (make-package "FORD_MSGS::NNACTIONS"))

(in-package "ROS")
;;//! \htmlinclude NNActions.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::NNActions
  :super ros::object
  :slots (_header _angles _max_speeds _subgoal _path_lengths _current_cost_to_go ))

(defmethod ford_msgs::NNActions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_speeds __max_speeds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:subgoal __subgoal) (instance geometry_msgs::Pose2D :init))
    ((:path_lengths __path_lengths) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_cost_to_go __current_cost_to_go) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angles __angles)
   (setq _max_speeds __max_speeds)
   (setq _subgoal __subgoal)
   (setq _path_lengths __path_lengths)
   (setq _current_cost_to_go (float __current_cost_to_go))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:max_speeds
   (&optional __max_speeds)
   (if __max_speeds (setq _max_speeds __max_speeds)) _max_speeds)
  (:subgoal
   (&rest __subgoal)
   (if (keywordp (car __subgoal))
       (send* _subgoal __subgoal)
     (progn
       (if __subgoal (setq _subgoal (car __subgoal)))
       _subgoal)))
  (:path_lengths
   (&optional __path_lengths)
   (if __path_lengths (setq _path_lengths __path_lengths)) _path_lengths)
  (:current_cost_to_go
   (&optional __current_cost_to_go)
   (if __current_cost_to_go (setq _current_cost_to_go __current_cost_to_go)) _current_cost_to_go)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _max_speeds
    (* 4    (length _max_speeds)) 4
    ;; geometry_msgs/Pose2D _subgoal
    (send _subgoal :serialization-length)
    ;; float32[] _path_lengths
    (* 4    (length _path_lengths)) 4
    ;; float32 _current_cost_to_go
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _max_speeds
     (write-long (length _max_speeds) s)
     (dotimes (i (length _max_speeds))
       (sys::poke (elt _max_speeds i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose2D _subgoal
       (send _subgoal :serialize s)
     ;; float32[] _path_lengths
     (write-long (length _path_lengths) s)
     (dotimes (i (length _path_lengths))
       (sys::poke (elt _path_lengths i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _current_cost_to_go
       (sys::poke _current_cost_to_go (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _max_speeds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_speeds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_speeds i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose2D _subgoal
     (send _subgoal :deserialize buf ptr-) (incf ptr- (send _subgoal :serialization-length))
   ;; float32[] _path_lengths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_lengths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _path_lengths i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _current_cost_to_go
     (setq _current_cost_to_go (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ford_msgs::NNActions :md5sum-) "baed85cab20cbff17eb30c95cd61ef93")
(setf (get ford_msgs::NNActions :datatype-) "ford_msgs/NNActions")
(setf (get ford_msgs::NNActions :definition-)
      "std_msgs/Header header
float32[] angles
float32[] max_speeds
geometry_msgs/Pose2D subgoal
float32[] path_lengths
float32 current_cost_to_go
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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :ford_msgs/NNActions "baed85cab20cbff17eb30c95cd61ef93")


