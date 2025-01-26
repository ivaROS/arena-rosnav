; Auto-generated. Do not edit!


(cl:in-package plan_msgs-srv)


;//! \htmlinclude Subgoal-request.msg.html

(cl:defclass <Subgoal-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Subgoal-request (<Subgoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subgoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subgoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_msgs-srv:<Subgoal-request> is deprecated: use plan_msgs-srv:Subgoal-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subgoal-request>) ostream)
  "Serializes a message object of type '<Subgoal-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subgoal-request>) istream)
  "Deserializes a message object of type '<Subgoal-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subgoal-request>)))
  "Returns string type for a service object of type '<Subgoal-request>"
  "plan_msgs/SubgoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subgoal-request)))
  "Returns string type for a service object of type 'Subgoal-request"
  "plan_msgs/SubgoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subgoal-request>)))
  "Returns md5sum for a message object of type '<Subgoal-request>"
  "f9a0f9e30f2f462a670531e4a8b863f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subgoal-request)))
  "Returns md5sum for a message object of type 'Subgoal-request"
  "f9a0f9e30f2f462a670531e4a8b863f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subgoal-request>)))
  "Returns full string definition for message of type '<Subgoal-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subgoal-request)))
  "Returns full string definition for message of type 'Subgoal-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subgoal-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subgoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Subgoal-request
))
;//! \htmlinclude Subgoal-response.msg.html

(cl:defclass <Subgoal-response> (roslisp-msg-protocol:ros-message)
  ((subgoal
    :reader subgoal
    :initarg :subgoal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Subgoal-response (<Subgoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subgoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subgoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plan_msgs-srv:<Subgoal-response> is deprecated: use plan_msgs-srv:Subgoal-response instead.")))

(cl:ensure-generic-function 'subgoal-val :lambda-list '(m))
(cl:defmethod subgoal-val ((m <Subgoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:subgoal-val is deprecated.  Use plan_msgs-srv:subgoal instead.")
  (subgoal m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Subgoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:success-val is deprecated.  Use plan_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Subgoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plan_msgs-srv:message-val is deprecated.  Use plan_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subgoal-response>) ostream)
  "Serializes a message object of type '<Subgoal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'subgoal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subgoal-response>) istream)
  "Deserializes a message object of type '<Subgoal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'subgoal) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subgoal-response>)))
  "Returns string type for a service object of type '<Subgoal-response>"
  "plan_msgs/SubgoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subgoal-response)))
  "Returns string type for a service object of type 'Subgoal-response"
  "plan_msgs/SubgoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subgoal-response>)))
  "Returns md5sum for a message object of type '<Subgoal-response>"
  "f9a0f9e30f2f462a670531e4a8b863f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subgoal-response)))
  "Returns md5sum for a message object of type 'Subgoal-response"
  "f9a0f9e30f2f462a670531e4a8b863f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subgoal-response>)))
  "Returns full string definition for message of type '<Subgoal-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped subgoal~%bool success~%string message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subgoal-response)))
  "Returns full string definition for message of type 'Subgoal-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped subgoal~%bool success~%string message~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subgoal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'subgoal))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subgoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Subgoal-response
    (cl:cons ':subgoal (subgoal msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Subgoal)))
  'Subgoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Subgoal)))
  'Subgoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subgoal)))
  "Returns string type for a service object of type '<Subgoal>"
  "plan_msgs/Subgoal")