; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude PedsimAgentsDataframe.msg.html

(cl:defclass <PedsimAgentsDataframe> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (agent_states
    :reader agent_states
    :initarg :agent_states
    :type (cl:vector pedsim_msgs-msg:AgentState)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:AgentState :initial-element (cl:make-instance 'pedsim_msgs-msg:AgentState)))
   (robot_states
    :reader robot_states
    :initarg :robot_states
    :type (cl:vector pedsim_msgs-msg:RobotState)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:RobotState :initial-element (cl:make-instance 'pedsim_msgs-msg:RobotState)))
   (simulated_waypoints
    :reader simulated_waypoints
    :initarg :simulated_waypoints
    :type (cl:vector pedsim_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Waypoint :initial-element (cl:make-instance 'pedsim_msgs-msg:Waypoint)))
   (simulated_groups
    :reader simulated_groups
    :initarg :simulated_groups
    :type (cl:vector pedsim_msgs-msg:AgentGroup)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:AgentGroup :initial-element (cl:make-instance 'pedsim_msgs-msg:AgentGroup)))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector pedsim_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Obstacle :initial-element (cl:make-instance 'pedsim_msgs-msg:Obstacle)))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector pedsim_msgs-msg:Wall)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Wall :initial-element (cl:make-instance 'pedsim_msgs-msg:Wall))))
)

(cl:defclass PedsimAgentsDataframe (<PedsimAgentsDataframe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedsimAgentsDataframe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedsimAgentsDataframe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<PedsimAgentsDataframe> is deprecated: use pedsim_msgs-msg:PedsimAgentsDataframe instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:header-val is deprecated.  Use pedsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'agent_states-val :lambda-list '(m))
(cl:defmethod agent_states-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:agent_states-val is deprecated.  Use pedsim_msgs-msg:agent_states instead.")
  (agent_states m))

(cl:ensure-generic-function 'robot_states-val :lambda-list '(m))
(cl:defmethod robot_states-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:robot_states-val is deprecated.  Use pedsim_msgs-msg:robot_states instead.")
  (robot_states m))

(cl:ensure-generic-function 'simulated_waypoints-val :lambda-list '(m))
(cl:defmethod simulated_waypoints-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:simulated_waypoints-val is deprecated.  Use pedsim_msgs-msg:simulated_waypoints instead.")
  (simulated_waypoints m))

(cl:ensure-generic-function 'simulated_groups-val :lambda-list '(m))
(cl:defmethod simulated_groups-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:simulated_groups-val is deprecated.  Use pedsim_msgs-msg:simulated_groups instead.")
  (simulated_groups m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:obstacles-val is deprecated.  Use pedsim_msgs-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <PedsimAgentsDataframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:walls-val is deprecated.  Use pedsim_msgs-msg:walls instead.")
  (walls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedsimAgentsDataframe>) ostream)
  "Serializes a message object of type '<PedsimAgentsDataframe>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agent_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'agent_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'simulated_waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'simulated_waypoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'simulated_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'simulated_groups))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedsimAgentsDataframe>) istream)
  "Deserializes a message object of type '<PedsimAgentsDataframe>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agent_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agent_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:AgentState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:RobotState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'simulated_waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'simulated_waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'simulated_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'simulated_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:AgentGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Wall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedsimAgentsDataframe>)))
  "Returns string type for a message object of type '<PedsimAgentsDataframe>"
  "pedsim_msgs/PedsimAgentsDataframe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedsimAgentsDataframe)))
  "Returns string type for a message object of type 'PedsimAgentsDataframe"
  "pedsim_msgs/PedsimAgentsDataframe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedsimAgentsDataframe>)))
  "Returns md5sum for a message object of type '<PedsimAgentsDataframe>"
  "c051cf49747f6875eb7bd2af8dc2ea06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedsimAgentsDataframe)))
  "Returns md5sum for a message object of type 'PedsimAgentsDataframe"
  "c051cf49747f6875eb7bd2af8dc2ea06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedsimAgentsDataframe>)))
  "Returns full string definition for message of type '<PedsimAgentsDataframe>"
  (cl:format cl:nil "Header header~%pedsim_msgs/AgentState[] agent_states~%pedsim_msgs/RobotState[] robot_states~%pedsim_msgs/Waypoint[] simulated_waypoints~%pedsim_msgs/AgentGroup[] simulated_groups~%pedsim_msgs/Obstacle[] obstacles~%pedsim_msgs/Wall[] walls~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%================================================================================~%MSG: pedsim_msgs/RobotState~%string name~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%================================================================================~%MSG: pedsim_msgs/Waypoint~%int8 BHV_SIMPLE = 0~%int8 BHV_SOURCE = 1~%int8 BHV_SINK = 2~%~%string name~%int8 type~%int8 behavior~%geometry_msgs/Point position~%float32 radius~%float32 interaction_radius~%~%================================================================================~%MSG: pedsim_msgs/AgentGroup~%Header header~%string group_id~%float64 age~%string[] members~%geometry_msgs/Pose center_of_mass~%~%================================================================================~%MSG: pedsim_msgs/Obstacle~%string name~%# type can be one of the following: \"shelf\"~%string type~%geometry_msgs/Pose pose~%float64 interaction_radius~%string yaml_path~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedsimAgentsDataframe)))
  "Returns full string definition for message of type 'PedsimAgentsDataframe"
  (cl:format cl:nil "Header header~%pedsim_msgs/AgentState[] agent_states~%pedsim_msgs/RobotState[] robot_states~%pedsim_msgs/Waypoint[] simulated_waypoints~%pedsim_msgs/AgentGroup[] simulated_groups~%pedsim_msgs/Obstacle[] obstacles~%pedsim_msgs/Wall[] walls~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%================================================================================~%MSG: pedsim_msgs/RobotState~%string name~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%================================================================================~%MSG: pedsim_msgs/Waypoint~%int8 BHV_SIMPLE = 0~%int8 BHV_SOURCE = 1~%int8 BHV_SINK = 2~%~%string name~%int8 type~%int8 behavior~%geometry_msgs/Point position~%float32 radius~%float32 interaction_radius~%~%================================================================================~%MSG: pedsim_msgs/AgentGroup~%Header header~%string group_id~%float64 age~%string[] members~%geometry_msgs/Pose center_of_mass~%~%================================================================================~%MSG: pedsim_msgs/Obstacle~%string name~%# type can be one of the following: \"shelf\"~%string type~%geometry_msgs/Pose pose~%float64 interaction_radius~%string yaml_path~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedsimAgentsDataframe>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agent_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'simulated_waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'simulated_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedsimAgentsDataframe>))
  "Converts a ROS message object to a list"
  (cl:list 'PedsimAgentsDataframe
    (cl:cons ':header (header msg))
    (cl:cons ':agent_states (agent_states msg))
    (cl:cons ':robot_states (robot_states msg))
    (cl:cons ':simulated_waypoints (simulated_waypoints msg))
    (cl:cons ':simulated_groups (simulated_groups msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':walls (walls msg))
))
