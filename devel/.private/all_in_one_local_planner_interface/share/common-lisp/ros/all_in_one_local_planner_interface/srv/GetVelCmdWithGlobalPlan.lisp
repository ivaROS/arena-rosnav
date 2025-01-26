; Auto-generated. Do not edit!


(cl:in-package all_in_one_local_planner_interface-srv)


;//! \htmlinclude GetVelCmdWithGlobalPlan-request.msg.html

(cl:defclass <GetVelCmdWithGlobalPlan-request> (roslisp-msg-protocol:ros-message)
  ((global_plan
    :reader global_plan
    :initarg :global_plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GetVelCmdWithGlobalPlan-request (<GetVelCmdWithGlobalPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVelCmdWithGlobalPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVelCmdWithGlobalPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<GetVelCmdWithGlobalPlan-request> is deprecated: use all_in_one_local_planner_interface-srv:GetVelCmdWithGlobalPlan-request instead.")))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <GetVelCmdWithGlobalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:global_plan-val is deprecated.  Use all_in_one_local_planner_interface-srv:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVelCmdWithGlobalPlan-request>) ostream)
  "Serializes a message object of type '<GetVelCmdWithGlobalPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVelCmdWithGlobalPlan-request>) istream)
  "Deserializes a message object of type '<GetVelCmdWithGlobalPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVelCmdWithGlobalPlan-request>)))
  "Returns string type for a service object of type '<GetVelCmdWithGlobalPlan-request>"
  "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmdWithGlobalPlan-request)))
  "Returns string type for a service object of type 'GetVelCmdWithGlobalPlan-request"
  "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVelCmdWithGlobalPlan-request>)))
  "Returns md5sum for a message object of type '<GetVelCmdWithGlobalPlan-request>"
  "88faefbda94c00890b9153ab1dbd5a14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVelCmdWithGlobalPlan-request)))
  "Returns md5sum for a message object of type 'GetVelCmdWithGlobalPlan-request"
  "88faefbda94c00890b9153ab1dbd5a14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVelCmdWithGlobalPlan-request>)))
  "Returns full string definition for message of type '<GetVelCmdWithGlobalPlan-request>"
  (cl:format cl:nil "# request fields~%# global path~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVelCmdWithGlobalPlan-request)))
  "Returns full string definition for message of type 'GetVelCmdWithGlobalPlan-request"
  (cl:format cl:nil "# request fields~%# global path~%nav_msgs/Path global_plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVelCmdWithGlobalPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVelCmdWithGlobalPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVelCmdWithGlobalPlan-request
    (cl:cons ':global_plan (global_plan msg))
))
;//! \htmlinclude GetVelCmdWithGlobalPlan-response.msg.html

(cl:defclass <GetVelCmdWithGlobalPlan-response> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (costmaps_resetted
    :reader costmaps_resetted
    :initarg :costmaps_resetted
    :type cl:boolean
    :initform cl:nil)
   (successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetVelCmdWithGlobalPlan-response (<GetVelCmdWithGlobalPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVelCmdWithGlobalPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVelCmdWithGlobalPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<GetVelCmdWithGlobalPlan-response> is deprecated: use all_in_one_local_planner_interface-srv:GetVelCmdWithGlobalPlan-response instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <GetVelCmdWithGlobalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:vel-val is deprecated.  Use all_in_one_local_planner_interface-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'costmaps_resetted-val :lambda-list '(m))
(cl:defmethod costmaps_resetted-val ((m <GetVelCmdWithGlobalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:costmaps_resetted-val is deprecated.  Use all_in_one_local_planner_interface-srv:costmaps_resetted instead.")
  (costmaps_resetted m))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <GetVelCmdWithGlobalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:successful-val is deprecated.  Use all_in_one_local_planner_interface-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVelCmdWithGlobalPlan-response>) ostream)
  "Serializes a message object of type '<GetVelCmdWithGlobalPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'costmaps_resetted) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVelCmdWithGlobalPlan-response>) istream)
  "Deserializes a message object of type '<GetVelCmdWithGlobalPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
    (cl:setf (cl:slot-value msg 'costmaps_resetted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVelCmdWithGlobalPlan-response>)))
  "Returns string type for a service object of type '<GetVelCmdWithGlobalPlan-response>"
  "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmdWithGlobalPlan-response)))
  "Returns string type for a service object of type 'GetVelCmdWithGlobalPlan-response"
  "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVelCmdWithGlobalPlan-response>)))
  "Returns md5sum for a message object of type '<GetVelCmdWithGlobalPlan-response>"
  "88faefbda94c00890b9153ab1dbd5a14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVelCmdWithGlobalPlan-response)))
  "Returns md5sum for a message object of type 'GetVelCmdWithGlobalPlan-response"
  "88faefbda94c00890b9153ab1dbd5a14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVelCmdWithGlobalPlan-response>)))
  "Returns full string definition for message of type '<GetVelCmdWithGlobalPlan-response>"
  (cl:format cl:nil "# response fields~%geometry_msgs/Twist vel~%bool costmaps_resetted~%bool successful~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVelCmdWithGlobalPlan-response)))
  "Returns full string definition for message of type 'GetVelCmdWithGlobalPlan-response"
  (cl:format cl:nil "# response fields~%geometry_msgs/Twist vel~%bool costmaps_resetted~%bool successful~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVelCmdWithGlobalPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVelCmdWithGlobalPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVelCmdWithGlobalPlan-response
    (cl:cons ':vel (vel msg))
    (cl:cons ':costmaps_resetted (costmaps_resetted msg))
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVelCmdWithGlobalPlan)))
  'GetVelCmdWithGlobalPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVelCmdWithGlobalPlan)))
  'GetVelCmdWithGlobalPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmdWithGlobalPlan)))
  "Returns string type for a service object of type '<GetVelCmdWithGlobalPlan>"
  "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlan")