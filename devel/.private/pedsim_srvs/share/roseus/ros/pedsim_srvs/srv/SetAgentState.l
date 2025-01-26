;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::SetAgentState)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'SetAgentState (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::SETAGENTSTATE")
  (make-package "PEDSIM_SRVS::SETAGENTSTATE"))
(unless (find-package "PEDSIM_SRVS::SETAGENTSTATEREQUEST")
  (make-package "PEDSIM_SRVS::SETAGENTSTATEREQUEST"))
(unless (find-package "PEDSIM_SRVS::SETAGENTSTATERESPONSE")
  (make-package "PEDSIM_SRVS::SETAGENTSTATERESPONSE"))

(in-package "ROS")

(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))




(defclass pedsim_srvs::SetAgentStateRequest
  :super ros::object
  :slots (_state ))

(defmethod pedsim_srvs::SetAgentStateRequest
  (:init
   (&key
    ((:state __state) (instance pedsim_msgs::AgentState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; pedsim_msgs/AgentState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pedsim_msgs/AgentState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pedsim_msgs/AgentState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass pedsim_srvs::SetAgentStateResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::SetAgentStateResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pedsim_srvs::SetAgentState
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::SetAgentState :md5sum-) "7c5d02c133b9b451c780ce13f2ab8b93")
(setf (get pedsim_srvs::SetAgentState :datatype-) "pedsim_srvs/SetAgentState")
(setf (get pedsim_srvs::SetAgentState :request) pedsim_srvs::SetAgentStateRequest)
(setf (get pedsim_srvs::SetAgentState :response) pedsim_srvs::SetAgentStateResponse)

(defmethod pedsim_srvs::SetAgentStateRequest
  (:response () (instance pedsim_srvs::SetAgentStateResponse :init)))

(setf (get pedsim_srvs::SetAgentStateRequest :md5sum-) "7c5d02c133b9b451c780ce13f2ab8b93")
(setf (get pedsim_srvs::SetAgentStateRequest :datatype-) "pedsim_srvs/SetAgentStateRequest")
(setf (get pedsim_srvs::SetAgentStateRequest :definition-)
      "pedsim_msgs/AgentState state

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
---
bool success
")

(setf (get pedsim_srvs::SetAgentStateResponse :md5sum-) "7c5d02c133b9b451c780ce13f2ab8b93")
(setf (get pedsim_srvs::SetAgentStateResponse :datatype-) "pedsim_srvs/SetAgentStateResponse")
(setf (get pedsim_srvs::SetAgentStateResponse :definition-)
      "pedsim_msgs/AgentState state

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
---
bool success
")



(provide :pedsim_srvs/SetAgentState "7c5d02c133b9b451c780ce13f2ab8b93")


