;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::PedsimAgentsDataframe)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'PedsimAgentsDataframe (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::PEDSIMAGENTSDATAFRAME")
  (make-package "PEDSIM_MSGS::PEDSIMAGENTSDATAFRAME"))

(in-package "ROS")
;;//! \htmlinclude PedsimAgentsDataframe.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::PedsimAgentsDataframe
  :super ros::object
  :slots (_header _agent_states _robot_states _simulated_waypoints _simulated_groups _obstacles _walls ))

(defmethod pedsim_msgs::PedsimAgentsDataframe
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agent_states __agent_states) ())
    ((:robot_states __robot_states) ())
    ((:simulated_waypoints __simulated_waypoints) ())
    ((:simulated_groups __simulated_groups) ())
    ((:obstacles __obstacles) ())
    ((:walls __walls) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _agent_states __agent_states)
   (setq _robot_states __robot_states)
   (setq _simulated_waypoints __simulated_waypoints)
   (setq _simulated_groups __simulated_groups)
   (setq _obstacles __obstacles)
   (setq _walls __walls)
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
  (:robot_states
   (&rest __robot_states)
   (if (keywordp (car __robot_states))
       (send* _robot_states __robot_states)
     (progn
       (if __robot_states (setq _robot_states (car __robot_states)))
       _robot_states)))
  (:simulated_waypoints
   (&rest __simulated_waypoints)
   (if (keywordp (car __simulated_waypoints))
       (send* _simulated_waypoints __simulated_waypoints)
     (progn
       (if __simulated_waypoints (setq _simulated_waypoints (car __simulated_waypoints)))
       _simulated_waypoints)))
  (:simulated_groups
   (&rest __simulated_groups)
   (if (keywordp (car __simulated_groups))
       (send* _simulated_groups __simulated_groups)
     (progn
       (if __simulated_groups (setq _simulated_groups (car __simulated_groups)))
       _simulated_groups)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
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
    ;; pedsim_msgs/AgentState[] _agent_states
    (apply #'+ (send-all _agent_states :serialization-length)) 4
    ;; pedsim_msgs/RobotState[] _robot_states
    (apply #'+ (send-all _robot_states :serialization-length)) 4
    ;; pedsim_msgs/Waypoint[] _simulated_waypoints
    (apply #'+ (send-all _simulated_waypoints :serialization-length)) 4
    ;; pedsim_msgs/AgentGroup[] _simulated_groups
    (apply #'+ (send-all _simulated_groups :serialization-length)) 4
    ;; pedsim_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; pedsim_msgs/Wall[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
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
     ;; pedsim_msgs/RobotState[] _robot_states
     (write-long (length _robot_states) s)
     (dolist (elem _robot_states)
       (send elem :serialize s)
       )
     ;; pedsim_msgs/Waypoint[] _simulated_waypoints
     (write-long (length _simulated_waypoints) s)
     (dolist (elem _simulated_waypoints)
       (send elem :serialize s)
       )
     ;; pedsim_msgs/AgentGroup[] _simulated_groups
     (write-long (length _simulated_groups) s)
     (dolist (elem _simulated_groups)
       (send elem :serialize s)
       )
     ;; pedsim_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
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
   ;; pedsim_msgs/AgentState[] _agent_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agent_states (let (r) (dotimes (i n) (push (instance pedsim_msgs::AgentState :init) r)) r))
     (dolist (elem- _agent_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pedsim_msgs/RobotState[] _robot_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_states (let (r) (dotimes (i n) (push (instance pedsim_msgs::RobotState :init) r)) r))
     (dolist (elem- _robot_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pedsim_msgs/Waypoint[] _simulated_waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _simulated_waypoints (let (r) (dotimes (i n) (push (instance pedsim_msgs::Waypoint :init) r)) r))
     (dolist (elem- _simulated_waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pedsim_msgs/AgentGroup[] _simulated_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _simulated_groups (let (r) (dotimes (i n) (push (instance pedsim_msgs::AgentGroup :init) r)) r))
     (dolist (elem- _simulated_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pedsim_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance pedsim_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get pedsim_msgs::PedsimAgentsDataframe :md5sum-) "c051cf49747f6875eb7bd2af8dc2ea06")
(setf (get pedsim_msgs::PedsimAgentsDataframe :datatype-) "pedsim_msgs/PedsimAgentsDataframe")
(setf (get pedsim_msgs::PedsimAgentsDataframe :definition-)
      "Header header
pedsim_msgs/AgentState[] agent_states
pedsim_msgs/RobotState[] robot_states
pedsim_msgs/Waypoint[] simulated_waypoints
pedsim_msgs/AgentGroup[] simulated_groups
pedsim_msgs/Obstacle[] obstacles
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
================================================================================
MSG: pedsim_msgs/RobotState
string name
geometry_msgs/Pose pose
geometry_msgs/Twist twist
================================================================================
MSG: pedsim_msgs/Waypoint
int8 BHV_SIMPLE = 0
int8 BHV_SOURCE = 1
int8 BHV_SINK = 2

string name
int8 type
int8 behavior
geometry_msgs/Point position
float32 radius
float32 interaction_radius

================================================================================
MSG: pedsim_msgs/AgentGroup
Header header
string group_id
float64 age
string[] members
geometry_msgs/Pose center_of_mass

================================================================================
MSG: pedsim_msgs/Obstacle
string name
# type can be one of the following: \"shelf\"
string type
geometry_msgs/Pose pose
float64 interaction_radius
string yaml_path

================================================================================
MSG: pedsim_msgs/Wall
# A line obstacle in the simulator.

geometry_msgs/Point start
geometry_msgs/Point end
uint8 layer
")



(provide :pedsim_msgs/PedsimAgentsDataframe "c051cf49747f6875eb7bd2af8dc2ea06")


