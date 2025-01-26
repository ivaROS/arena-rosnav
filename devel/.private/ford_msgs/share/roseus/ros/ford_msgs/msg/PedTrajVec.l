;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::PedTrajVec)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'PedTrajVec (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::PEDTRAJVEC")
  (make-package "FORD_MSGS::PEDTRAJVEC"))

(in-package "ROS")
;;//! \htmlinclude PedTrajVec.msg.html


(defclass ford_msgs::PedTrajVec
  :super ros::object
  :slots (_ped_traj_vec ))

(defmethod ford_msgs::PedTrajVec
  (:init
   (&key
    ((:ped_traj_vec __ped_traj_vec) ())
    )
   (send-super :init)
   (setq _ped_traj_vec __ped_traj_vec)
   self)
  (:ped_traj_vec
   (&rest __ped_traj_vec)
   (if (keywordp (car __ped_traj_vec))
       (send* _ped_traj_vec __ped_traj_vec)
     (progn
       (if __ped_traj_vec (setq _ped_traj_vec (car __ped_traj_vec)))
       _ped_traj_vec)))
  (:serialization-length
   ()
   (+
    ;; ford_msgs/PedTraj[] _ped_traj_vec
    (apply #'+ (send-all _ped_traj_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ford_msgs/PedTraj[] _ped_traj_vec
     (write-long (length _ped_traj_vec) s)
     (dolist (elem _ped_traj_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ford_msgs/PedTraj[] _ped_traj_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ped_traj_vec (let (r) (dotimes (i n) (push (instance ford_msgs::PedTraj :init) r)) r))
     (dolist (elem- _ped_traj_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ford_msgs::PedTrajVec :md5sum-) "05f33aed1bfc6d0d35110034d9c56bfa")
(setf (get ford_msgs::PedTrajVec :datatype-) "ford_msgs/PedTrajVec")
(setf (get ford_msgs::PedTrajVec :definition-)
      "ford_msgs/PedTraj[] ped_traj_vec
================================================================================
MSG: ford_msgs/PedTraj
uint32 ped_id
ford_msgs/Pose2DStamped[] traj
float32 value #Used for PREDICTION types
uint8 type 
#ENUM for type
uint8 OBSERVATION=0
uint8 PREDICTION_LINEAR=1
uint8 PREDICTION_GP=2
================================================================================
MSG: ford_msgs/Pose2DStamped
std_msgs/Header header
geometry_msgs/Pose2D pose
geometry_msgs/Vector3 velocity
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



(provide :ford_msgs/PedTrajVec "05f33aed1bfc6d0d35110034d9c56bfa")


