;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::PedTraj)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'PedTraj (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::PEDTRAJ")
  (make-package "FORD_MSGS::PEDTRAJ"))

(in-package "ROS")
;;//! \htmlinclude PedTraj.msg.html


(intern "*OBSERVATION*" (find-package "FORD_MSGS::PEDTRAJ"))
(shadow '*OBSERVATION* (find-package "FORD_MSGS::PEDTRAJ"))
(defconstant ford_msgs::PedTraj::*OBSERVATION* 0)
(intern "*PREDICTION_LINEAR*" (find-package "FORD_MSGS::PEDTRAJ"))
(shadow '*PREDICTION_LINEAR* (find-package "FORD_MSGS::PEDTRAJ"))
(defconstant ford_msgs::PedTraj::*PREDICTION_LINEAR* 1)
(intern "*PREDICTION_GP*" (find-package "FORD_MSGS::PEDTRAJ"))
(shadow '*PREDICTION_GP* (find-package "FORD_MSGS::PEDTRAJ"))
(defconstant ford_msgs::PedTraj::*PREDICTION_GP* 2)

(defun ford_msgs::PedTraj-to-symbol (const)
  (cond
        ((= const 0) 'ford_msgs::PedTraj::*OBSERVATION*)
        ((= const 1) 'ford_msgs::PedTraj::*PREDICTION_LINEAR*)
        ((= const 2) 'ford_msgs::PedTraj::*PREDICTION_GP*)
        (t nil)))

(defclass ford_msgs::PedTraj
  :super ros::object
  :slots (_ped_id _traj _value _type ))

(defmethod ford_msgs::PedTraj
  (:init
   (&key
    ((:ped_id __ped_id) 0)
    ((:traj __traj) ())
    ((:value __value) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _ped_id (round __ped_id))
   (setq _traj __traj)
   (setq _value (float __value))
   (setq _type (round __type))
   self)
  (:ped_id
   (&optional __ped_id)
   (if __ped_id (setq _ped_id __ped_id)) _ped_id)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint32 _ped_id
    4
    ;; ford_msgs/Pose2DStamped[] _traj
    (apply #'+ (send-all _traj :serialization-length)) 4
    ;; float32 _value
    4
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ped_id
       (write-long _ped_id s)
     ;; ford_msgs/Pose2DStamped[] _traj
     (write-long (length _traj) s)
     (dolist (elem _traj)
       (send elem :serialize s)
       )
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ped_id
     (setq _ped_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ford_msgs/Pose2DStamped[] _traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traj (let (r) (dotimes (i n) (push (instance ford_msgs::Pose2DStamped :init) r)) r))
     (dolist (elem- _traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ford_msgs::PedTraj :md5sum-) "8925770871a7e9ee7020a76e368dc696")
(setf (get ford_msgs::PedTraj :datatype-) "ford_msgs/PedTraj")
(setf (get ford_msgs::PedTraj :definition-)
      "uint32 ped_id
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



(provide :ford_msgs/PedTraj "8925770871a7e9ee7020a76e368dc696")


