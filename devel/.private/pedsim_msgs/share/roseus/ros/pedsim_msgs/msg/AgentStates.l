;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::AgentStates)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'AgentStates (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::AGENTSTATES")
  (make-package "PEDSIM_MSGS::AGENTSTATES"))

(in-package "ROS")
;;//! \htmlinclude AgentStates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::AgentStates
  :super ros::object
  :slots (_header _agent_states ))

(defmethod pedsim_msgs::AgentStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agent_states __agent_states) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _agent_states __agent_states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:agent_states
   (&rest __agent_states)
   (if (keywordp (car __agent_states))
       (send* _agent_states __agent_states)
     (progn
       (if __agent_states (setq _agent_states (car __agent_states)))
       _agent_states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pedsim_msgs/AgentState[] _agent_states
    (apply #'+ (send-all _agent_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pedsim_msgs/AgentState[] _agent_states
     (write-long (length _agent_states) s)
     (dolist (elem _agent_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pedsim_msgs/AgentState[] _agent_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agent_states (let (r) (dotimes (i n) (push (instance pedsim_msgs::AgentState :init) r)) r))
     (dolist (elem- _agent_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pedsim_msgs::AgentStates :md5sum-) "0dfed9e4aead8a8045973085e7cbac81")
(setf (get pedsim_msgs::AgentStates :datatype-) "pedsim_msgs/AgentStates")
(setf (get pedsim_msgs::AgentStates :definition-)
      "Header header
pedsim_msgs/AgentState[] agent_states

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
MSG: pedsim_msgs/AgentState
Header header
string id
string type
string social_state
geometry_msgs/Pose pose
geometry_msgs/Twist twist
pedsim_msgs/AgentForce forces
string talking_to_id
string listening_to_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 destination
float64 direction
string configuration

uint8 IDLE        = 0
uint8 WALKING     = 1
uint8 RUNNING     = 2
uint8 INTERACTING = 3
uint8 TALKING     = 4
uint8 PHONE       = 5
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
================================================================================
MSG: pedsim_msgs/AgentForce
# Forces acting on an agent.

# Max Speed
float64 vmax

# Force Factors
float64 desired_ffactor
float64 obstacle_ffactor
float64 social_ffactor
float64 robot_ffactor

# Basic SFM forces.
geometry_msgs/Vector3 desired_force
geometry_msgs/Vector3 obstacle_force
geometry_msgs/Vector3 social_force

# Additional Group Forces
geometry_msgs/Vector3 group_coherence_force
geometry_msgs/Vector3 group_gaze_force
geometry_msgs/Vector3 group_repulsion_force

# Extra stabilization/custom forces.
geometry_msgs/Vector3 random_force
geometry_msgs/Vector3 keep_distance_force
geometry_msgs/Vector3 robot_force

# Total forces
geometry_msgs/Vector3 force
")



(provide :pedsim_msgs/AgentStates "0dfed9e4aead8a8045973085e7cbac81")


