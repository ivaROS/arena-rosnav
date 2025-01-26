; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SetAgentState-request.msg.html

(cl:defclass <SetAgentState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type pedsim_msgs-msg:AgentState
    :initform (cl:make-instance 'pedsim_msgs-msg:AgentState)))
)

(cl:defclass SetAgentState-request (<SetAgentState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAgentState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAgentState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SetAgentState-request> is deprecated: use pedsim_srvs-srv:SetAgentState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetAgentState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:state-val is deprecated.  Use pedsim_srvs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAgentState-request>) ostream)
  "Serializes a message object of type '<SetAgentState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAgentState-request>) istream)
  "Deserializes a message object of type '<SetAgentState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAgentState-request>)))
  "Returns string type for a service object of type '<SetAgentState-request>"
  "pedsim_srvs/SetAgentStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAgentState-request)))
  "Returns string type for a service object of type 'SetAgentState-request"
  "pedsim_srvs/SetAgentStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAgentState-request>)))
  "Returns md5sum for a message object of type '<SetAgentState-request>"
  "7c5d02c133b9b451c780ce13f2ab8b93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAgentState-request)))
  "Returns md5sum for a message object of type 'SetAgentState-request"
  "7c5d02c133b9b451c780ce13f2ab8b93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAgentState-request>)))
  "Returns full string definition for message of type '<SetAgentState-request>"
  (cl:format cl:nil "pedsim_msgs/AgentState state~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAgentState-request)))
  "Returns full string definition for message of type 'SetAgentState-request"
  (cl:format cl:nil "pedsim_msgs/AgentState state~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAgentState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAgentState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAgentState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetAgentState-response.msg.html

(cl:defclass <SetAgentState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAgentState-response (<SetAgentState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAgentState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAgentState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SetAgentState-response> is deprecated: use pedsim_srvs-srv:SetAgentState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAgentState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAgentState-response>) ostream)
  "Serializes a message object of type '<SetAgentState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAgentState-response>) istream)
  "Deserializes a message object of type '<SetAgentState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAgentState-response>)))
  "Returns string type for a service object of type '<SetAgentState-response>"
  "pedsim_srvs/SetAgentStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAgentState-response)))
  "Returns string type for a service object of type 'SetAgentState-response"
  "pedsim_srvs/SetAgentStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAgentState-response>)))
  "Returns md5sum for a message object of type '<SetAgentState-response>"
  "7c5d02c133b9b451c780ce13f2ab8b93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAgentState-response)))
  "Returns md5sum for a message object of type 'SetAgentState-response"
  "7c5d02c133b9b451c780ce13f2ab8b93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAgentState-response>)))
  "Returns full string definition for message of type '<SetAgentState-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAgentState-response)))
  "Returns full string definition for message of type 'SetAgentState-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAgentState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAgentState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAgentState-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAgentState)))
  'SetAgentState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAgentState)))
  'SetAgentState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAgentState)))
  "Returns string type for a service object of type '<SetAgentState>"
  "pedsim_srvs/SetAgentState")