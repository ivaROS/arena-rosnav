; Auto-generated. Do not edit!


(cl:in-package all_in_one_global_planner_interface-srv)


;//! \htmlinclude MakeNewPlan-request.msg.html

(cl:defclass <MakeNewPlan-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MakeNewPlan-request (<MakeNewPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeNewPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeNewPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_global_planner_interface-srv:<MakeNewPlan-request> is deprecated: use all_in_one_global_planner_interface-srv:MakeNewPlan-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MakeNewPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_global_planner_interface-srv:goal-val is deprecated.  Use all_in_one_global_planner_interface-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeNewPlan-request>) ostream)
  "Serializes a message object of type '<MakeNewPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeNewPlan-request>) istream)
  "Deserializes a message object of type '<MakeNewPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeNewPlan-request>)))
  "Returns string type for a service object of type '<MakeNewPlan-request>"
  "all_in_one_global_planner_interface/MakeNewPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNewPlan-request)))
  "Returns string type for a service object of type 'MakeNewPlan-request"
  "all_in_one_global_planner_interface/MakeNewPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeNewPlan-request>)))
  "Returns md5sum for a message object of type '<MakeNewPlan-request>"
  "b0da0fe6b6750964de6877ef99c1e149")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeNewPlan-request)))
  "Returns md5sum for a message object of type 'MakeNewPlan-request"
  "b0da0fe6b6750964de6877ef99c1e149")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeNewPlan-request>)))
  "Returns full string definition for message of type '<MakeNewPlan-request>"
  (cl:format cl:nil "# request fields~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeNewPlan-request)))
  "Returns full string definition for message of type 'MakeNewPlan-request"
  (cl:format cl:nil "# request fields~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeNewPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeNewPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeNewPlan-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude MakeNewPlan-response.msg.html

(cl:defclass <MakeNewPlan-response> (roslisp-msg-protocol:ros-message)
  ((global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass MakeNewPlan-response (<MakeNewPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeNewPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeNewPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_global_planner_interface-srv:<MakeNewPlan-response> is deprecated: use all_in_one_global_planner_interface-srv:MakeNewPlan-response instead.")))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <MakeNewPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_global_planner_interface-srv:global_plan-val is deprecated.  Use all_in_one_global_planner_interface-srv:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeNewPlan-response>) ostream)
  "Serializes a message object of type '<MakeNewPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeNewPlan-response>) istream)
  "Deserializes a message object of type '<MakeNewPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeNewPlan-response>)))
  "Returns string type for a service object of type '<MakeNewPlan-response>"
  "all_in_one_global_planner_interface/MakeNewPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNewPlan-response)))
  "Returns string type for a service object of type 'MakeNewPlan-response"
  "all_in_one_global_planner_interface/MakeNewPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeNewPlan-response>)))
  "Returns md5sum for a message object of type '<MakeNewPlan-response>"
  "b0da0fe6b6750964de6877ef99c1e149")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeNewPlan-response)))
  "Returns md5sum for a message object of type 'MakeNewPlan-response"
  "b0da0fe6b6750964de6877ef99c1e149")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeNewPlan-response>)))
  "Returns full string definition for message of type '<MakeNewPlan-response>"
  (cl:format cl:nil "# response fields~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeNewPlan-response)))
  "Returns full string definition for message of type 'MakeNewPlan-response"
  (cl:format cl:nil "# response fields~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeNewPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeNewPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeNewPlan-response
    (cl:cons ':global_plan (global_plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakeNewPlan)))
  'MakeNewPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakeNewPlan)))
  'MakeNewPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNewPlan)))
  "Returns string type for a service object of type '<MakeNewPlan>"
  "all_in_one_global_planner_interface/MakeNewPlan")