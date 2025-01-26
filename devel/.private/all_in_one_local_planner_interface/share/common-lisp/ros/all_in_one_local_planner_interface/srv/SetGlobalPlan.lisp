; Auto-generated. Do not edit!


(cl:in-package all_in_one_local_planner_interface-srv)


;//! \htmlinclude SetGlobalPlan-request.msg.html

(cl:defclass <SetGlobalPlan-request> (roslisp-msg-protocol:ros-message)
  ((global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass SetGlobalPlan-request (<SetGlobalPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGlobalPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGlobalPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<SetGlobalPlan-request> is deprecated: use all_in_one_local_planner_interface-srv:SetGlobalPlan-request instead.")))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <SetGlobalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:global_plan-val is deprecated.  Use all_in_one_local_planner_interface-srv:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGlobalPlan-request>) ostream)
  "Serializes a message object of type '<SetGlobalPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGlobalPlan-request>) istream)
  "Deserializes a message object of type '<SetGlobalPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGlobalPlan-request>)))
  "Returns string type for a service object of type '<SetGlobalPlan-request>"
  "all_in_one_local_planner_interface/SetGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalPlan-request)))
  "Returns string type for a service object of type 'SetGlobalPlan-request"
  "all_in_one_local_planner_interface/SetGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGlobalPlan-request>)))
  "Returns md5sum for a message object of type '<SetGlobalPlan-request>"
  "4764e75946282cd60aded40196d97e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGlobalPlan-request)))
  "Returns md5sum for a message object of type 'SetGlobalPlan-request"
  "4764e75946282cd60aded40196d97e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGlobalPlan-request>)))
  "Returns full string definition for message of type '<SetGlobalPlan-request>"
  (cl:format cl:nil "# request fields~%# global path~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGlobalPlan-request)))
  "Returns full string definition for message of type 'SetGlobalPlan-request"
  (cl:format cl:nil "# request fields~%# global path~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGlobalPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGlobalPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGlobalPlan-request
    (cl:cons ':global_plan (global_plan msg))
))
;//! \htmlinclude SetGlobalPlan-response.msg.html

(cl:defclass <SetGlobalPlan-response> (roslisp-msg-protocol:ros-message)
  ((successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGlobalPlan-response (<SetGlobalPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGlobalPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGlobalPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<SetGlobalPlan-response> is deprecated: use all_in_one_local_planner_interface-srv:SetGlobalPlan-response instead.")))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <SetGlobalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:successful-val is deprecated.  Use all_in_one_local_planner_interface-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGlobalPlan-response>) ostream)
  "Serializes a message object of type '<SetGlobalPlan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGlobalPlan-response>) istream)
  "Deserializes a message object of type '<SetGlobalPlan-response>"
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGlobalPlan-response>)))
  "Returns string type for a service object of type '<SetGlobalPlan-response>"
  "all_in_one_local_planner_interface/SetGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalPlan-response)))
  "Returns string type for a service object of type 'SetGlobalPlan-response"
  "all_in_one_local_planner_interface/SetGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGlobalPlan-response>)))
  "Returns md5sum for a message object of type '<SetGlobalPlan-response>"
  "4764e75946282cd60aded40196d97e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGlobalPlan-response)))
  "Returns md5sum for a message object of type 'SetGlobalPlan-response"
  "4764e75946282cd60aded40196d97e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGlobalPlan-response>)))
  "Returns full string definition for message of type '<SetGlobalPlan-response>"
  (cl:format cl:nil "# response fields~%bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGlobalPlan-response)))
  "Returns full string definition for message of type 'SetGlobalPlan-response"
  (cl:format cl:nil "# response fields~%bool successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGlobalPlan-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGlobalPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGlobalPlan-response
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGlobalPlan)))
  'SetGlobalPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGlobalPlan)))
  'SetGlobalPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalPlan)))
  "Returns string type for a service object of type '<SetGlobalPlan>"
  "all_in_one_local_planner_interface/SetGlobalPlan")