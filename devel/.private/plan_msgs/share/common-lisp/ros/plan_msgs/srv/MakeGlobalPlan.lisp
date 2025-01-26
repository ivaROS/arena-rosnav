; Auto-generated. Do not edit!


(cl:in-package plan_msgs-srv)


;//! \htmlinclude MakeGlobalPlan-request.msg.html

(cl:defclass <MakeGlobalPlan-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass MakeGlobalPlan-request (<MakeGlobalPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeGlobalPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeGlobalPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_msgs-srv:<MakeGlobalPlan-request> is deprecated: use plan_msgs-srv:MakeGlobalPlan-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <MakeGlobalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:start-val is deprecated.  Use plan_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MakeGlobalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:goal-val is deprecated.  Use plan_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <MakeGlobalPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:tolerance-val is deprecated.  Use plan_msgs-srv:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeGlobalPlan-request>) ostream)
  "Serializes a message object of type '<MakeGlobalPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeGlobalPlan-request>) istream)
  "Deserializes a message object of type '<MakeGlobalPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeGlobalPlan-request>)))
  "Returns string type for a service object of type '<MakeGlobalPlan-request>"
  "plan_msgs/MakeGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeGlobalPlan-request)))
  "Returns string type for a service object of type 'MakeGlobalPlan-request"
  "plan_msgs/MakeGlobalPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeGlobalPlan-request>)))
  "Returns md5sum for a message object of type '<MakeGlobalPlan-request>"
  "421c8ea4d21c6c9db7054b4bbdf1e024")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeGlobalPlan-request)))
  "Returns md5sum for a message object of type 'MakeGlobalPlan-request"
  "421c8ea4d21c6c9db7054b4bbdf1e024")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeGlobalPlan-request>)))
  "Returns full string definition for message of type '<MakeGlobalPlan-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeGlobalPlan-request)))
  "Returns full string definition for message of type 'MakeGlobalPlan-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeGlobalPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeGlobalPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeGlobalPlan-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':tolerance (tolerance msg))
))
;//! \htmlinclude MakeGlobalPlan-response.msg.html

(cl:defclass <MakeGlobalPlan-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass MakeGlobalPlan-response (<MakeGlobalPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeGlobalPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeGlobalPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_msgs-srv:<MakeGlobalPlan-response> is deprecated: use plan_msgs-srv:MakeGlobalPlan-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <MakeGlobalPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:plan-val is deprecated.  Use plan_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeGlobalPlan-response>) ostream)
  "Serializes a message object of type '<MakeGlobalPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeGlobalPlan-response>) istream)
  "Deserializes a message object of type '<MakeGlobalPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeGlobalPlan-response>)))
  "Returns string type for a service object of type '<MakeGlobalPlan-response>"
  "plan_msgs/MakeGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeGlobalPlan-response)))
  "Returns string type for a service object of type 'MakeGlobalPlan-response"
  "plan_msgs/MakeGlobalPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeGlobalPlan-response>)))
  "Returns md5sum for a message object of type '<MakeGlobalPlan-response>"
  "421c8ea4d21c6c9db7054b4bbdf1e024")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeGlobalPlan-response)))
  "Returns md5sum for a message object of type 'MakeGlobalPlan-response"
  "421c8ea4d21c6c9db7054b4bbdf1e024")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeGlobalPlan-response>)))
  "Returns full string definition for message of type '<MakeGlobalPlan-response>"
  (cl:format cl:nil "nav_msgs/Path plan~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeGlobalPlan-response)))
  "Returns full string definition for message of type 'MakeGlobalPlan-response"
  (cl:format cl:nil "nav_msgs/Path plan~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeGlobalPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeGlobalPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeGlobalPlan-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakeGlobalPlan)))
  'MakeGlobalPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakeGlobalPlan)))
  'MakeGlobalPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeGlobalPlan)))
  "Returns string type for a service object of type '<MakeGlobalPlan>"
  "plan_msgs/MakeGlobalPlan")