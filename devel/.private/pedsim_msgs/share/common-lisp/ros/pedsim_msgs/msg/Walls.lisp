; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude Walls.msg.html

(cl:defclass <Walls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector pedsim_msgs-msg:Wall)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Wall :initial-element (cl:make-instance 'pedsim_msgs-msg:Wall))))
)

(cl:defclass Walls (<Walls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Walls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Walls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<Walls> is deprecated: use pedsim_msgs-msg:Walls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Walls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:header-val is deprecated.  Use pedsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <Walls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:walls-val is deprecated.  Use pedsim_msgs-msg:walls instead.")
  (walls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Walls>) ostream)
  "Serializes a message object of type '<Walls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Walls>) istream)
  "Deserializes a message object of type '<Walls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Wall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Walls>)))
  "Returns string type for a message object of type '<Walls>"
  "pedsim_msgs/Walls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Walls)))
  "Returns string type for a message object of type 'Walls"
  "pedsim_msgs/Walls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Walls>)))
  "Returns md5sum for a message object of type '<Walls>"
  "9a1156a7d87b3318357fc49bf6a10aaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Walls)))
  "Returns md5sum for a message object of type 'Walls"
  "9a1156a7d87b3318357fc49bf6a10aaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Walls>)))
  "Returns full string definition for message of type '<Walls>"
  (cl:format cl:nil "# A collection of line obstacles.~%# No need to header since these are detemined at sim initiation time.~%Header header~%pedsim_msgs/Wall[] walls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Walls)))
  "Returns full string definition for message of type 'Walls"
  (cl:format cl:nil "# A collection of line obstacles.~%# No need to header since these are detemined at sim initiation time.~%Header header~%pedsim_msgs/Wall[] walls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Walls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Walls>))
  "Converts a ROS message object to a list"
  (cl:list 'Walls
    (cl:cons ':header (header msg))
    (cl:cons ':walls (walls msg))
))
