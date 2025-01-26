; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SetAllAgentsState-request.msg.html

(cl:defclass <SetAllAgentsState-request> (roslisp-msg-protocol:ros-message)
  ((agent_states
    :reader agent_states
    :initarg :agent_states
    :type pedsim_msgs-msg:AgentStates
    :initform (cl:make-instance 'pedsim_msgs-msg:AgentStates)))
)

(cl:defclass SetAllAgentsState-request (<SetAllAgentsState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAllAgentsState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAllAgentsState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SetAllAgentsState-request> is deprecated: use pedsim_srvs-srv:SetAllAgentsState-request instead.")))

(cl:ensure-generic-function 'agent_states-val :lambda-list '(m))
(cl:defmethod agent_states-val ((m <SetAllAgentsState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:agent_states-val is deprecated.  Use pedsim_srvs-srv:agent_states instead.")
  (agent_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAllAgentsState-request>) ostream)
  "Serializes a message object of type '<SetAllAgentsState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'agent_states) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAllAgentsState-request>) istream)
  "Deserializes a message object of type '<SetAllAgentsState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'agent_states) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAllAgentsState-request>)))
  "Returns string type for a service object of type '<SetAllAgentsState-request>"
  "pedsim_srvs/SetAllAgentsStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAllAgentsState-request)))
  "Returns string type for a service object of type 'SetAllAgentsState-request"
  "pedsim_srvs/SetAllAgentsStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAllAgentsState-request>)))
  "Returns md5sum for a message object of type '<SetAllAgentsState-request>"
  "dde41d4b2fb7827190faeb4633f02794")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAllAgentsState-request)))
  "Returns md5sum for a message object of type 'SetAllAgentsState-request"
  "dde41d4b2fb7827190faeb4633f02794")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAllAgentsState-request>)))
  "Returns full string definition for message of type '<SetAllAgentsState-request>"
  (cl:format cl:nil "pedsim_msgs/AgentStates agent_states~%~%================================================================================~%MSG: pedsim_msgs/AgentStates~%Header header~%pedsim_msgs/AgentState[] agent_states~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAllAgentsState-request)))
  "Returns full string definition for message of type 'SetAllAgentsState-request"
  (cl:format cl:nil "pedsim_msgs/AgentStates agent_states~%~%================================================================================~%MSG: pedsim_msgs/AgentStates~%Header header~%pedsim_msgs/AgentState[] agent_states~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAllAgentsState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'agent_states))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAllAgentsState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAllAgentsState-request
    (cl:cons ':agent_states (agent_states msg))
))
;//! \htmlinclude SetAllAgentsState-response.msg.html

(cl:defclass <SetAllAgentsState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAllAgentsState-response (<SetAllAgentsState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAllAgentsState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAllAgentsState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SetAllAgentsState-response> is deprecated: use pedsim_srvs-srv:SetAllAgentsState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAllAgentsState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAllAgentsState-response>) ostream)
  "Serializes a message object of type '<SetAllAgentsState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAllAgentsState-response>) istream)
  "Deserializes a message object of type '<SetAllAgentsState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAllAgentsState-response>)))
  "Returns string type for a service object of type '<SetAllAgentsState-response>"
  "pedsim_srvs/SetAllAgentsStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAllAgentsState-response)))
  "Returns string type for a service object of type 'SetAllAgentsState-response"
  "pedsim_srvs/SetAllAgentsStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAllAgentsState-response>)))
  "Returns md5sum for a message object of type '<SetAllAgentsState-response>"
  "dde41d4b2fb7827190faeb4633f02794")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAllAgentsState-response)))
  "Returns md5sum for a message object of type 'SetAllAgentsState-response"
  "dde41d4b2fb7827190faeb4633f02794")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAllAgentsState-response>)))
  "Returns full string definition for message of type '<SetAllAgentsState-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAllAgentsState-response)))
  "Returns full string definition for message of type 'SetAllAgentsState-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAllAgentsState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAllAgentsState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAllAgentsState-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAllAgentsState)))
  'SetAllAgentsState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAllAgentsState)))
  'SetAllAgentsState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAllAgentsState)))
  "Returns string type for a service object of type '<SetAllAgentsState>"
  "pedsim_srvs/SetAllAgentsState")