; Auto-generated. Do not edit!


(cl:in-package plan_msgs-msg)


;//! \htmlinclude RobotStateStamped.msg.html

(cl:defclass <RobotStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type plan_msgs-msg:RobotState
    :initform (cl:make-instance 'plan_msgs-msg:RobotState)))
)

(cl:defclass RobotStateStamped (<RobotStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_msgs-msg:<RobotStateStamped> is deprecated: use plan_msgs-msg:RobotStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-msg:header-val is deprecated.  Use plan_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-msg:state-val is deprecated.  Use plan_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateStamped>) ostream)
  "Serializes a message object of type '<RobotStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateStamped>) istream)
  "Deserializes a message object of type '<RobotStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateStamped>)))
  "Returns string type for a message object of type '<RobotStateStamped>"
  "plan_msgs/RobotStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateStamped)))
  "Returns string type for a message object of type 'RobotStateStamped"
  "plan_msgs/RobotStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateStamped>)))
  "Returns md5sum for a message object of type '<RobotStateStamped>"
  "26dc00e6326e58c3d11f3c78d9e7e20c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateStamped)))
  "Returns md5sum for a message object of type 'RobotStateStamped"
  "26dc00e6326e58c3d11f3c78d9e7e20c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateStamped>)))
  "Returns full string definition for message of type '<RobotStateStamped>"
  (cl:format cl:nil "Header header~%plan_msgs/RobotState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: plan_msgs/RobotState~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateStamped)))
  "Returns full string definition for message of type 'RobotStateStamped"
  (cl:format cl:nil "Header header~%plan_msgs/RobotState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: plan_msgs/RobotState~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
