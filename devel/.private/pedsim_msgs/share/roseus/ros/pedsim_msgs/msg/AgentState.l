;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::AgentState)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'AgentState (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::AGENTSTATE")
  (make-package "PEDSIM_MSGS::AGENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude AgentState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*IDLE*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*IDLE* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*IDLE* 0)
(intern "*WALKING*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*WALKING* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*WALKING* 1)
(intern "*RUNNING*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*RUNNING* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*RUNNING* 2)
(intern "*INTERACTING*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*INTERACTING* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*INTERACTING* 3)
(intern "*TALKING*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*TALKING* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*TALKING* 4)
(intern "*PHONE*" (find-package "PEDSIM_MSGS::AGENTSTATE"))
(shadow '*PHONE* (find-package "PEDSIM_MSGS::AGENTSTATE"))
(defconstant pedsim_msgs::AgentState::*PHONE* 5)

(defun pedsim_msgs::AgentState-to-symbol (const)
  (cond
        ((= const 0) 'pedsim_msgs::AgentState::*IDLE*)
        ((= const 1) 'pedsim_msgs::AgentState::*WALKING*)
        ((= const 2) 'pedsim_msgs::AgentState::*RUNNING*)
        ((= const 3) 'pedsim_msgs::AgentState::*INTERACTING*)
        ((= const 4) 'pedsim_msgs::AgentState::*TALKING*)
        ((= const 5) 'pedsim_msgs::AgentState::*PHONE*)
        (t nil)))

(defclass pedsim_msgs::AgentState
  :super ros::object
  :slots (_header _id _type _social_state _pose _twist _forces _talking_to_id _listening_to_id _acceleration _destination _direction _configuration ))

(defmethod pedsim_msgs::AgentState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:type __type) "")
    ((:social_state __social_state) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:forces __forces) (instance pedsim_msgs::AgentForce :init))
    ((:talking_to_id __talking_to_id) "")
    ((:listening_to_id __listening_to_id) "")
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:destination __destination) (instance geometry_msgs::Vector3 :init))
    ((:direction __direction) 0.0)
    ((:configuration __configuration) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _type (string __type))
   (setq _social_state (string __social_state))
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _forces __forces)
   (setq _talking_to_id (string __talking_to_id))
   (setq _listening_to_id (string __listening_to_id))
   (setq _acceleration __acceleration)
   (setq _destination __destination)
   (setq _direction (float __direction))
   (setq _configuration (string __configuration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:social_state
   (&optional __social_state)
   (if __social_state (setq _social_state __social_state)) _social_state)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:forces
   (&rest __forces)
   (if (keywordp (car __forces))
       (send* _forces __forces)
     (progn
       (if __forces (setq _forces (car __forces)))
       _forces)))
  (:talking_to_id
   (&optional __talking_to_id)
   (if __talking_to_id (setq _talking_to_id __talking_to_id)) _talking_to_id)
  (:listening_to_id
   (&optional __listening_to_id)
   (if __listening_to_id (setq _listening_to_id __listening_to_id)) _listening_to_id)
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:destination
   (&rest __destination)
   (if (keywordp (car __destination))
       (send* _destination __destination)
     (progn
       (if __destination (setq _destination (car __destination)))
       _destination)))
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:configuration
   (&optional __configuration)
   (if __configuration (setq _configuration __configuration)) _configuration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; string _type
    4 (length _type)
    ;; string _social_state
    4 (length _social_state)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; pedsim_msgs/AgentForce _forces
    (send _forces :serialization-length)
    ;; string _talking_to_id
    4 (length _talking_to_id)
    ;; string _listening_to_id
    4 (length _listening_to_id)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _destination
    (send _destination :serialization-length)
    ;; float64 _direction
    8
    ;; string _configuration
    4 (length _configuration)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _social_state
       (write-long (length _social_state) s) (princ _social_state s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; pedsim_msgs/AgentForce _forces
       (send _forces :serialize s)
     ;; string _talking_to_id
       (write-long (length _talking_to_id) s) (princ _talking_to_id s)
     ;; string _listening_to_id
       (write-long (length _listening_to_id) s) (princ _listening_to_id s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _destination
       (send _destination :serialize s)
     ;; float64 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _configuration
       (write-long (length _configuration) s) (princ _configuration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _social_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _social_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; pedsim_msgs/AgentForce _forces
     (send _forces :deserialize buf ptr-) (incf ptr- (send _forces :serialization-length))
   ;; string _talking_to_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _talking_to_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _listening_to_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _listening_to_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _destination
     (send _destination :deserialize buf ptr-) (incf ptr- (send _destination :serialization-length))
   ;; float64 _direction
     (setq _direction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _configuration
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _configuration (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pedsim_msgs::AgentState :md5sum-) "870e02a1932fc0a93c5d52d2b22efada")
(setf (get pedsim_msgs::AgentState :datatype-) "pedsim_msgs/AgentState")
(setf (get pedsim_msgs::AgentState :definition-)
      "Header header
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
geometry_msgs/Vector3 force
")



(provide :pedsim_msgs/AgentState "870e02a1932fc0a93c5d52d2b22efada")


