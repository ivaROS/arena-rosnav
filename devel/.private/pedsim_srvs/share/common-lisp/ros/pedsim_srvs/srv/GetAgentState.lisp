; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude GetAgentState-request.msg.html

(cl:defclass <GetAgentState-request> (roslisp-msg-protocol:ros-message)
  ((agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform ""))
)

(cl:defclass GetAgentState-request (<GetAgentState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAgentState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAgentState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<GetAgentState-request> is deprecated: use pedsim_srvs-srv:GetAgentState-request instead.")))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <GetAgentState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:agent_id-val is deprecated.  Use pedsim_srvs-srv:agent_id instead.")
  (agent_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAgentState-request>) ostream)
  "Serializes a message object of type '<GetAgentState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAgentState-request>) istream)
  "Deserializes a message object of type '<GetAgentState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAgentState-request>)))
  "Returns string type for a service object of type '<GetAgentState-request>"
  "pedsim_srvs/GetAgentStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAgentState-request)))
  "Returns string type for a service object of type 'GetAgentState-request"
  "pedsim_srvs/GetAgentStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAgentState-request>)))
  "Returns md5sum for a message object of type '<GetAgentState-request>"
  "b5e2606568d935f8dac655f7dbc27c47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAgentState-request)))
  "Returns md5sum for a message object of type 'GetAgentState-request"
  "b5e2606568d935f8dac655f7dbc27c47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAgentState-request>)))
  "Returns full string definition for message of type '<GetAgentState-request>"
  (cl:format cl:nil "string agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAgentState-request)))
  "Returns full string definition for message of type 'GetAgentState-request"
  (cl:format cl:nil "string agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAgentState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agent_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAgentState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAgentState-request
    (cl:cons ':agent_id (agent_id msg))
))
;//! \htmlinclude GetAgentState-response.msg.html

(cl:defclass <GetAgentState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type pedsim_msgs-msg:AgentState
    :initform (cl:make-instance 'pedsim_msgs-msg:AgentState)))
)

(cl:defclass GetAgentState-response (<GetAgentState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAgentState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAgentState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<GetAgentState-response> is deprecated: use pedsim_srvs-srv:GetAgentState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetAgentState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:state-val is deprecated.  Use pedsim_srvs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAgentState-response>) ostream)
  "Serializes a message object of type '<GetAgentState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAgentState-response>) istream)
  "Deserializes a message object of type '<GetAgentState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAgentState-response>)))
  "Returns string type for a service object of type '<GetAgentState-response>"
  "pedsim_srvs/GetAgentStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAgentState-response)))
  "Returns string type for a service object of type 'GetAgentState-response"
  "pedsim_srvs/GetAgentStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAgentState-response>)))
  "Returns md5sum for a message object of type '<GetAgentState-response>"
  "b5e2606568d935f8dac655f7dbc27c47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAgentState-response)))
  "Returns md5sum for a message object of type 'GetAgentState-response"
  "b5e2606568d935f8dac655f7dbc27c47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAgentState-response>)))
  "Returns full string definition for message of type '<GetAgentState-response>"
  (cl:format cl:nil "pedsim_msgs/AgentState state~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAgentState-response)))
  "Returns full string definition for message of type 'GetAgentState-response"
  (cl:format cl:nil "pedsim_msgs/AgentState state~%~%================================================================================~%MSG: pedsim_msgs/AgentState~%Header header~%string id~%string type~%string social_state~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%pedsim_msgs/AgentForce forces~%string talking_to_id~%string listening_to_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 destination~%float64 direction~%string configuration~%~%uint8 IDLE        = 0~%uint8 WALKING     = 1~%uint8 RUNNING     = 2~%uint8 INTERACTING = 3~%uint8 TALKING     = 4~%uint8 PHONE       = 5~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: pedsim_msgs/AgentForce~%# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAgentState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAgentState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAgentState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAgentState)))
  'GetAgentState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAgentState)))
  'GetAgentState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAgentState)))
  "Returns string type for a service object of type '<GetAgentState>"
  "pedsim_srvs/GetAgentState")