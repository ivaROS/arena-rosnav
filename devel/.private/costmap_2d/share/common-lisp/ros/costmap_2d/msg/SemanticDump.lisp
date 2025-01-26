; Auto-generated. Do not edit!


(cl:in-package costmap_2d-msg)


;//! \htmlinclude SemanticDump.msg.html

(cl:defclass <SemanticDump> (roslisp-msg-protocol:ros-message)
  ((layers
    :reader layers
    :initarg :layers
    :type (cl:vector pedsim_msgs-msg:SemanticData)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:SemanticData :initial-element (cl:make-instance 'pedsim_msgs-msg:SemanticData))))
)

(cl:defclass SemanticDump (<SemanticDump>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticDump>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticDump)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_2d-msg:<SemanticDump> is deprecated: use costmap_2d-msg:SemanticDump instead.")))

(cl:ensure-generic-function 'layers-val :lambda-list '(m))
(cl:defmethod layers-val ((m <SemanticDump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:layers-val is deprecated.  Use costmap_2d-msg:layers instead.")
  (layers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticDump>) ostream)
  "Serializes a message object of type '<SemanticDump>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'layers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'layers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticDump>) istream)
  "Deserializes a message object of type '<SemanticDump>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'layers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'layers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:SemanticData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticDump>)))
  "Returns string type for a message object of type '<SemanticDump>"
  "costmap_2d/SemanticDump")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticDump)))
  "Returns string type for a message object of type 'SemanticDump"
  "costmap_2d/SemanticDump")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticDump>)))
  "Returns md5sum for a message object of type '<SemanticDump>"
  "f23a90c5da8e0d6842e9dec8eaee0281")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticDump)))
  "Returns md5sum for a message object of type 'SemanticDump"
  "f23a90c5da8e0d6842e9dec8eaee0281")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticDump>)))
  "Returns full string definition for message of type '<SemanticDump>"
  (cl:format cl:nil "pedsim_msgs/SemanticData[] layers~%================================================================================~%MSG: pedsim_msgs/SemanticData~%std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticDump)))
  "Returns full string definition for message of type 'SemanticDump"
  (cl:format cl:nil "pedsim_msgs/SemanticData[] layers~%================================================================================~%MSG: pedsim_msgs/SemanticData~%std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticDump>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'layers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticDump>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticDump
    (cl:cons ':layers (layers msg))
))
