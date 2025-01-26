;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::GetAgentState)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'GetAgentState (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::GETAGENTSTATE")
  (make-package "PEDSIM_SRVS::GETAGENTSTATE"))
(unless (find-package "PEDSIM_SRVS::GETAGENTSTATEREQUEST")
  (make-package "PEDSIM_SRVS::GETAGENTSTATEREQUEST"))
(unless (find-package "PEDSIM_SRVS::GETAGENTSTATERESPONSE")
  (make-package "PEDSIM_SRVS::GETAGENTSTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))


(defclass pedsim_srvs::GetAgentStateRequest
  :super ros::object
  :slots (_agent_id ))

(defmethod pedsim_srvs::GetAgentStateRequest
  (:init
   (&key
    ((:agent_id __agent_id) "")
    )
   (send-super :init)
   (setq _agent_id (string __agent_id))
   self)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:serialization-length
   ()
   (+
    ;; string _agent_id
    4 (length _agent_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agent_id
       (write-long (length _agent_id) s) (princ _agent_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agent_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agent_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pedsim_srvs::GetAgentStateResponse
  :super ros::object
  :slots (_state ))

(defmethod pedsim_srvs::GetAgentStateResponse
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

(defclass pedsim_srvs::GetAgentState
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::GetAgentState :md5sum-) "b5e2606568d935f8dac655f7dbc27c47")
(setf (get pedsim_srvs::GetAgentState :datatype-) "pedsim_srvs/GetAgentState")
(setf (get pedsim_srvs::GetAgentState :request) pedsim_srvs::GetAgentStateRequest)
(setf (get pedsim_srvs::GetAgentState :response) pedsim_srvs::GetAgentStateResponse)

(defmethod pedsim_srvs::GetAgentStateRequest
  (:response () (instance pedsim_srvs::GetAgentStateResponse :init)))

(setf (get pedsim_srvs::GetAgentStateRequest :md5sum-) "b5e2606568d935f8dac655f7dbc27c47")
(setf (get pedsim_srvs::GetAgentStateRequest :datatype-) "pedsim_srvs/GetAgentStateRequest")
(setf (get pedsim_srvs::GetAgentStateRequest :definition-)
      "string agent_id
---
pedsim_msgs/AgentState state

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
")

(setf (get pedsim_srvs::GetAgentStateResponse :md5sum-) "b5e2606568d935f8dac655f7dbc27c47")
(setf (get pedsim_srvs::GetAgentStateResponse :datatype-) "pedsim_srvs/GetAgentStateResponse")
(setf (get pedsim_srvs::GetAgentStateResponse :definition-)
      "string agent_id
---
pedsim_msgs/AgentState state

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
")



(provide :pedsim_srvs/GetAgentState "b5e2606568d935f8dac655f7dbc27c47")


