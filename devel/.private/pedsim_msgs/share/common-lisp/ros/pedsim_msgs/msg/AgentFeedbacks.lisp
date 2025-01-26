; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude AgentFeedbacks.msg.html

(cl:defclass <AgentFeedbacks> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (agents
    :reader agents
    :initarg :agents
    :type (cl:vector pedsim_msgs-msg:AgentFeedback)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:AgentFeedback :initial-element (cl:make-instance 'pedsim_msgs-msg:AgentFeedback))))
)

(cl:defclass AgentFeedbacks (<AgentFeedbacks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentFeedbacks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentFeedbacks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<AgentFeedbacks> is deprecated: use pedsim_msgs-msg:AgentFeedbacks instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AgentFeedbacks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:header-val is deprecated.  Use pedsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'agents-val :lambda-list '(m))
(cl:defmethod agents-val ((m <AgentFeedbacks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:agents-val is deprecated.  Use pedsim_msgs-msg:agents instead.")
  (agents m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentFeedbacks>) ostream)
  "Serializes a message object of type '<AgentFeedbacks>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'agents))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentFeedbacks>) istream)
  "Deserializes a message object of type '<AgentFeedbacks>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:AgentFeedback))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentFeedbacks>)))
  "Returns string type for a message object of type '<AgentFeedbacks>"
  "pedsim_msgs/AgentFeedbacks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentFeedbacks)))
  "Returns string type for a message object of type 'AgentFeedbacks"
  "pedsim_msgs/AgentFeedbacks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentFeedbacks>)))
  "Returns md5sum for a message object of type '<AgentFeedbacks>"
  "60d85c015234b6863418e312316fe4e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentFeedbacks)))
  "Returns md5sum for a message object of type 'AgentFeedbacks"
  "60d85c015234b6863418e312316fe4e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentFeedbacks>)))
  "Returns full string definition for message of type '<AgentFeedbacks>"
  (cl:format cl:nil "Header header~%pedsim_msgs/AgentFeedback[] agents~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentFeedback~%string id~%geometry_msgs/Vector3 force~%string social_state~%float64 vmax~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentFeedbacks)))
  "Returns full string definition for message of type 'AgentFeedbacks"
  (cl:format cl:nil "Header header~%pedsim_msgs/AgentFeedback[] agents~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/AgentFeedback~%string id~%geometry_msgs/Vector3 force~%string social_state~%float64 vmax~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentFeedbacks>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentFeedbacks>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentFeedbacks
    (cl:cons ':header (header msg))
    (cl:cons ':agents (agents msg))
))
