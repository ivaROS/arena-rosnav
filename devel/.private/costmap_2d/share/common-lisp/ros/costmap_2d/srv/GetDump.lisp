; Auto-generated. Do not edit!


(cl:in-package costmap_2d-srv)


;//! \htmlinclude GetDump-request.msg.html

(cl:defclass <GetDump-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDump-request (<GetDump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_2d-srv:<GetDump-request> is deprecated: use costmap_2d-srv:GetDump-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDump-request>) ostream)
  "Serializes a message object of type '<GetDump-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDump-request>) istream)
  "Deserializes a message object of type '<GetDump-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDump-request>)))
  "Returns string type for a service object of type '<GetDump-request>"
  "costmap_2d/GetDumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDump-request)))
  "Returns string type for a service object of type 'GetDump-request"
  "costmap_2d/GetDumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDump-request>)))
  "Returns md5sum for a message object of type '<GetDump-request>"
  "e8c4a22fca4ff331263a69635b5c452d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDump-request)))
  "Returns md5sum for a message object of type 'GetDump-request"
  "e8c4a22fca4ff331263a69635b5c452d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDump-request>)))
  "Returns full string definition for message of type '<GetDump-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDump-request)))
  "Returns full string definition for message of type 'GetDump-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDump-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDump-request
))
;//! \htmlinclude GetDump-response.msg.html

(cl:defclass <GetDump-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (costmap
    :reader costmap
    :initarg :costmap
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (obstacle_layers
    :reader obstacle_layers
    :initarg :obstacle_layers
    :type (cl:vector costmap_2d-msg:ObstacleDump)
   :initform (cl:make-array 0 :element-type 'costmap_2d-msg:ObstacleDump :initial-element (cl:make-instance 'costmap_2d-msg:ObstacleDump)))
   (semantic_layers
    :reader semantic_layers
    :initarg :semantic_layers
    :type (cl:vector costmap_2d-msg:SemanticDump)
   :initform (cl:make-array 0 :element-type 'costmap_2d-msg:SemanticDump :initial-element (cl:make-instance 'costmap_2d-msg:SemanticDump))))
)

(cl:defclass GetDump-response (<GetDump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_2d-srv:<GetDump-response> is deprecated: use costmap_2d-srv:GetDump-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetDump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-srv:header-val is deprecated.  Use costmap_2d-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'costmap-val :lambda-list '(m))
(cl:defmethod costmap-val ((m <GetDump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-srv:costmap-val is deprecated.  Use costmap_2d-srv:costmap instead.")
  (costmap m))

(cl:ensure-generic-function 'obstacle_layers-val :lambda-list '(m))
(cl:defmethod obstacle_layers-val ((m <GetDump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-srv:obstacle_layers-val is deprecated.  Use costmap_2d-srv:obstacle_layers instead.")
  (obstacle_layers m))

(cl:ensure-generic-function 'semantic_layers-val :lambda-list '(m))
(cl:defmethod semantic_layers-val ((m <GetDump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-srv:semantic_layers-val is deprecated.  Use costmap_2d-srv:semantic_layers instead.")
  (semantic_layers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDump-response>) ostream)
  "Serializes a message object of type '<GetDump-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'costmap) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_layers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_layers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'semantic_layers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'semantic_layers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDump-response>) istream)
  "Deserializes a message object of type '<GetDump-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'costmap) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_layers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_layers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'costmap_2d-msg:ObstacleDump))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'semantic_layers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'semantic_layers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'costmap_2d-msg:SemanticDump))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDump-response>)))
  "Returns string type for a service object of type '<GetDump-response>"
  "costmap_2d/GetDumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDump-response)))
  "Returns string type for a service object of type 'GetDump-response"
  "costmap_2d/GetDumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDump-response>)))
  "Returns md5sum for a message object of type '<GetDump-response>"
  "e8c4a22fca4ff331263a69635b5c452d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDump-response)))
  "Returns md5sum for a message object of type 'GetDump-response"
  "e8c4a22fca4ff331263a69635b5c452d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDump-response>)))
  "Returns full string definition for message of type '<GetDump-response>"
  (cl:format cl:nil "Header header~%nav_msgs/OccupancyGrid costmap~%ObstacleDump[] obstacle_layers~%SemanticDump[] semantic_layers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: costmap_2d/ObstacleDump~%sensor_msgs/PointCloud2[] scans~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: costmap_2d/SemanticDump~%pedsim_msgs/SemanticData[] layers~%================================================================================~%MSG: pedsim_msgs/SemanticData~%std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDump-response)))
  "Returns full string definition for message of type 'GetDump-response"
  (cl:format cl:nil "Header header~%nav_msgs/OccupancyGrid costmap~%ObstacleDump[] obstacle_layers~%SemanticDump[] semantic_layers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: costmap_2d/ObstacleDump~%sensor_msgs/PointCloud2[] scans~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: costmap_2d/SemanticDump~%pedsim_msgs/SemanticData[] layers~%================================================================================~%MSG: pedsim_msgs/SemanticData~%std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDump-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'costmap))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_layers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'semantic_layers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDump-response
    (cl:cons ':header (header msg))
    (cl:cons ':costmap (costmap msg))
    (cl:cons ':obstacle_layers (obstacle_layers msg))
    (cl:cons ':semantic_layers (semantic_layers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDump)))
  'GetDump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDump)))
  'GetDump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDump)))
  "Returns string type for a service object of type '<GetDump>"
  "costmap_2d/GetDump")