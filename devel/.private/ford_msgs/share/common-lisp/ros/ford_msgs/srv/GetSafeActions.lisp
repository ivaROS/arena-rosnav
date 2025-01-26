; Auto-generated. Do not edit!


(cl:in-package ford_msgs-srv)


;//! \htmlinclude GetSafeActions-request.msg.html

(cl:defclass <GetSafeActions-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetSafeActions-request (<GetSafeActions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSafeActions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSafeActions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-srv:<GetSafeActions-request> is deprecated: use ford_msgs-srv:GetSafeActions-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GetSafeActions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-srv:start-val is deprecated.  Use ford_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetSafeActions-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-srv:goal-val is deprecated.  Use ford_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSafeActions-request>) ostream)
  "Serializes a message object of type '<GetSafeActions-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSafeActions-request>) istream)
  "Deserializes a message object of type '<GetSafeActions-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSafeActions-request>)))
  "Returns string type for a service object of type '<GetSafeActions-request>"
  "ford_msgs/GetSafeActionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafeActions-request)))
  "Returns string type for a service object of type 'GetSafeActions-request"
  "ford_msgs/GetSafeActionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSafeActions-request>)))
  "Returns md5sum for a message object of type '<GetSafeActions-request>"
  "2fe3126bd5b2d56edd5005220333d4fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSafeActions-request)))
  "Returns md5sum for a message object of type 'GetSafeActions-request"
  "2fe3126bd5b2d56edd5005220333d4fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSafeActions-request>)))
  "Returns full string definition for message of type '<GetSafeActions-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSafeActions-request)))
  "Returns full string definition for message of type 'GetSafeActions-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSafeActions-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSafeActions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSafeActions-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude GetSafeActions-response.msg.html

(cl:defclass <GetSafeActions-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSafeActions-response (<GetSafeActions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSafeActions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSafeActions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-srv:<GetSafeActions-response> is deprecated: use ford_msgs-srv:GetSafeActions-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSafeActions-response>) ostream)
  "Serializes a message object of type '<GetSafeActions-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSafeActions-response>) istream)
  "Deserializes a message object of type '<GetSafeActions-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSafeActions-response>)))
  "Returns string type for a service object of type '<GetSafeActions-response>"
  "ford_msgs/GetSafeActionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafeActions-response)))
  "Returns string type for a service object of type 'GetSafeActions-response"
  "ford_msgs/GetSafeActionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSafeActions-response>)))
  "Returns md5sum for a message object of type '<GetSafeActions-response>"
  "2fe3126bd5b2d56edd5005220333d4fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSafeActions-response)))
  "Returns md5sum for a message object of type 'GetSafeActions-response"
  "2fe3126bd5b2d56edd5005220333d4fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSafeActions-response>)))
  "Returns full string definition for message of type '<GetSafeActions-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSafeActions-response)))
  "Returns full string definition for message of type 'GetSafeActions-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSafeActions-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSafeActions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSafeActions-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSafeActions)))
  'GetSafeActions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSafeActions)))
  'GetSafeActions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSafeActions)))
  "Returns string type for a service object of type '<GetSafeActions>"
  "ford_msgs/GetSafeActions")