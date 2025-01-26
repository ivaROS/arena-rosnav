; Auto-generated. Do not edit!


(cl:in-package mbf_msgs-msg)


;//! \htmlinclude GetInterPathGoal.msg.html

(cl:defclass <GetInterPathGoal> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (use_start_pose
    :reader use_start_pose
    :initarg :use_start_pose
    :type cl:boolean
    :initform cl:nil)
   (start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (inter
    :reader inter
    :initarg :inter
    :type cl:string
    :initform "")
   (concurrency_slot
    :reader concurrency_slot
    :initarg :concurrency_slot
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetInterPathGoal (<GetInterPathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInterPathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInterPathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbf_msgs-msg:<GetInterPathGoal> is deprecated: use mbf_msgs-msg:GetInterPathGoal instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:path-val is deprecated.  Use mbf_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'use_start_pose-val :lambda-list '(m))
(cl:defmethod use_start_pose-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:use_start_pose-val is deprecated.  Use mbf_msgs-msg:use_start_pose instead.")
  (use_start_pose m))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:start_pose-val is deprecated.  Use mbf_msgs-msg:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:target_pose-val is deprecated.  Use mbf_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'inter-val :lambda-list '(m))
(cl:defmethod inter-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:inter-val is deprecated.  Use mbf_msgs-msg:inter instead.")
  (inter m))

(cl:ensure-generic-function 'concurrency_slot-val :lambda-list '(m))
(cl:defmethod concurrency_slot-val ((m <GetInterPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:concurrency_slot-val is deprecated.  Use mbf_msgs-msg:concurrency_slot instead.")
  (concurrency_slot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInterPathGoal>) ostream)
  "Serializes a message object of type '<GetInterPathGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_start_pose) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'inter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'inter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'concurrency_slot)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInterPathGoal>) istream)
  "Deserializes a message object of type '<GetInterPathGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:setf (cl:slot-value msg 'use_start_pose) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'inter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'concurrency_slot)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInterPathGoal>)))
  "Returns string type for a message object of type '<GetInterPathGoal>"
  "mbf_msgs/GetInterPathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInterPathGoal)))
  "Returns string type for a message object of type 'GetInterPathGoal"
  "mbf_msgs/GetInterPathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInterPathGoal>)))
  "Returns md5sum for a message object of type '<GetInterPathGoal>"
  "7d4db039c5bded571ff6c680ec003ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInterPathGoal)))
  "Returns md5sum for a message object of type 'GetInterPathGoal"
  "7d4db039c5bded571ff6c680ec003ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInterPathGoal>)))
  "Returns full string definition for message of type '<GetInterPathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Interpolate path from start_pose or current position to the target pose~%~%# Follow the given path until completion or failure~%nav_msgs/Path path~%~%# Use start_pose or current position as the beginning of the path~%bool use_start_pose~%~%# The start pose for the path; optional, used if use_start_pose is true~%geometry_msgs/PoseStamped start_pose~%~%# The pose to achieve with the path~%geometry_msgs/PoseStamped target_pose~%~%# Inter to use; defaults to the first one specified on \"inter\" parameter~%string inter~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInterPathGoal)))
  "Returns full string definition for message of type 'GetInterPathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Interpolate path from start_pose or current position to the target pose~%~%# Follow the given path until completion or failure~%nav_msgs/Path path~%~%# Use start_pose or current position as the beginning of the path~%bool use_start_pose~%~%# The start pose for the path; optional, used if use_start_pose is true~%geometry_msgs/PoseStamped start_pose~%~%# The pose to achieve with the path~%geometry_msgs/PoseStamped target_pose~%~%# Inter to use; defaults to the first one specified on \"inter\" parameter~%string inter~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInterPathGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     4 (cl:length (cl:slot-value msg 'inter))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInterPathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInterPathGoal
    (cl:cons ':path (path msg))
    (cl:cons ':use_start_pose (use_start_pose msg))
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':inter (inter msg))
    (cl:cons ':concurrency_slot (concurrency_slot msg))
))
