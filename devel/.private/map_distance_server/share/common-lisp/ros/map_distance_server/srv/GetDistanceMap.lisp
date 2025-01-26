; Auto-generated. Do not edit!


(cl:in-package map_distance_server-srv)


;//! \htmlinclude GetDistanceMap-request.msg.html

(cl:defclass <GetDistanceMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDistanceMap-request (<GetDistanceMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_distance_server-srv:<GetDistanceMap-request> is deprecated: use map_distance_server-srv:GetDistanceMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceMap-request>) ostream)
  "Serializes a message object of type '<GetDistanceMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceMap-request>) istream)
  "Deserializes a message object of type '<GetDistanceMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceMap-request>)))
  "Returns string type for a service object of type '<GetDistanceMap-request>"
  "map_distance_server/GetDistanceMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceMap-request)))
  "Returns string type for a service object of type 'GetDistanceMap-request"
  "map_distance_server/GetDistanceMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceMap-request>)))
  "Returns md5sum for a message object of type '<GetDistanceMap-request>"
  "1ba334862fce595df43bc38c5dc401c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceMap-request)))
  "Returns md5sum for a message object of type 'GetDistanceMap-request"
  "1ba334862fce595df43bc38c5dc401c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceMap-request>)))
  "Returns full string definition for message of type '<GetDistanceMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceMap-request)))
  "Returns full string definition for message of type 'GetDistanceMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceMap-request
))
;//! \htmlinclude GetDistanceMap-response.msg.html

(cl:defclass <GetDistanceMap-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetDistanceMap-response (<GetDistanceMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDistanceMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDistanceMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_distance_server-srv:<GetDistanceMap-response> is deprecated: use map_distance_server-srv:GetDistanceMap-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetDistanceMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_distance_server-srv:header-val is deprecated.  Use map_distance_server-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <GetDistanceMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_distance_server-srv:info-val is deprecated.  Use map_distance_server-srv:info instead.")
  (info m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetDistanceMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_distance_server-srv:data-val is deprecated.  Use map_distance_server-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDistanceMap-response>) ostream)
  "Serializes a message object of type '<GetDistanceMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDistanceMap-response>) istream)
  "Deserializes a message object of type '<GetDistanceMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDistanceMap-response>)))
  "Returns string type for a service object of type '<GetDistanceMap-response>"
  "map_distance_server/GetDistanceMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceMap-response)))
  "Returns string type for a service object of type 'GetDistanceMap-response"
  "map_distance_server/GetDistanceMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDistanceMap-response>)))
  "Returns md5sum for a message object of type '<GetDistanceMap-response>"
  "1ba334862fce595df43bc38c5dc401c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDistanceMap-response)))
  "Returns md5sum for a message object of type 'GetDistanceMap-response"
  "1ba334862fce595df43bc38c5dc401c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDistanceMap-response>)))
  "Returns full string definition for message of type '<GetDistanceMap-response>"
  (cl:format cl:nil "std_msgs/Header header~%nav_msgs/MapMetaData info~%~%int32[] data~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDistanceMap-response)))
  "Returns full string definition for message of type 'GetDistanceMap-response"
  (cl:format cl:nil "std_msgs/Header header~%nav_msgs/MapMetaData info~%~%int32[] data~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDistanceMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDistanceMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDistanceMap-response
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDistanceMap)))
  'GetDistanceMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDistanceMap)))
  'GetDistanceMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDistanceMap)))
  "Returns string type for a service object of type '<GetDistanceMap>"
  "map_distance_server/GetDistanceMap")