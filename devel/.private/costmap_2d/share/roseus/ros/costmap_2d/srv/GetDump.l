;; Auto-generated. Do not edit!


(when (boundp 'costmap_2d::GetDump)
  (if (not (find-package "COSTMAP_2D"))
    (make-package "COSTMAP_2D"))
  (shadow 'GetDump (find-package "COSTMAP_2D")))
(unless (find-package "COSTMAP_2D::GETDUMP")
  (make-package "COSTMAP_2D::GETDUMP"))
(unless (find-package "COSTMAP_2D::GETDUMPREQUEST")
  (make-package "COSTMAP_2D::GETDUMPREQUEST"))
(unless (find-package "COSTMAP_2D::GETDUMPRESPONSE")
  (make-package "COSTMAP_2D::GETDUMPRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass costmap_2d::GetDumpRequest
  :super ros::object
  :slots ())

(defmethod costmap_2d::GetDumpRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass costmap_2d::GetDumpResponse
  :super ros::object
  :slots (_header _costmap _obstacle_layers _semantic_layers ))

(defmethod costmap_2d::GetDumpResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:costmap __costmap) (instance nav_msgs::OccupancyGrid :init))
    ((:obstacle_layers __obstacle_layers) ())
    ((:semantic_layers __semantic_layers) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _costmap __costmap)
   (setq _obstacle_layers __obstacle_layers)
   (setq _semantic_layers __semantic_layers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:costmap
   (&rest __costmap)
   (if (keywordp (car __costmap))
       (send* _costmap __costmap)
     (progn
       (if __costmap (setq _costmap (car __costmap)))
       _costmap)))
  (:obstacle_layers
   (&rest __obstacle_layers)
   (if (keywordp (car __obstacle_layers))
       (send* _obstacle_layers __obstacle_layers)
     (progn
       (if __obstacle_layers (setq _obstacle_layers (car __obstacle_layers)))
       _obstacle_layers)))
  (:semantic_layers
   (&rest __semantic_layers)
   (if (keywordp (car __semantic_layers))
       (send* _semantic_layers __semantic_layers)
     (progn
       (if __semantic_layers (setq _semantic_layers (car __semantic_layers)))
       _semantic_layers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/OccupancyGrid _costmap
    (send _costmap :serialization-length)
    ;; costmap_2d/ObstacleDump[] _obstacle_layers
    (apply #'+ (send-all _obstacle_layers :serialization-length)) 4
    ;; costmap_2d/SemanticDump[] _semantic_layers
    (apply #'+ (send-all _semantic_layers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/OccupancyGrid _costmap
       (send _costmap :serialize s)
     ;; costmap_2d/ObstacleDump[] _obstacle_layers
     (write-long (length _obstacle_layers) s)
     (dolist (elem _obstacle_layers)
       (send elem :serialize s)
       )
     ;; costmap_2d/SemanticDump[] _semantic_layers
     (write-long (length _semantic_layers) s)
     (dolist (elem _semantic_layers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/OccupancyGrid _costmap
     (send _costmap :deserialize buf ptr-) (incf ptr- (send _costmap :serialization-length))
   ;; costmap_2d/ObstacleDump[] _obstacle_layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_layers (let (r) (dotimes (i n) (push (instance costmap_2d::ObstacleDump :init) r)) r))
     (dolist (elem- _obstacle_layers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; costmap_2d/SemanticDump[] _semantic_layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _semantic_layers (let (r) (dotimes (i n) (push (instance costmap_2d::SemanticDump :init) r)) r))
     (dolist (elem- _semantic_layers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass costmap_2d::GetDump
  :super ros::object
  :slots ())

(setf (get costmap_2d::GetDump :md5sum-) "e8c4a22fca4ff331263a69635b5c452d")
(setf (get costmap_2d::GetDump :datatype-) "costmap_2d/GetDump")
(setf (get costmap_2d::GetDump :request) costmap_2d::GetDumpRequest)
(setf (get costmap_2d::GetDump :response) costmap_2d::GetDumpResponse)

(defmethod costmap_2d::GetDumpRequest
  (:response () (instance costmap_2d::GetDumpResponse :init)))

(setf (get costmap_2d::GetDumpRequest :md5sum-) "e8c4a22fca4ff331263a69635b5c452d")
(setf (get costmap_2d::GetDumpRequest :datatype-) "costmap_2d/GetDumpRequest")
(setf (get costmap_2d::GetDumpRequest :definition-)
      "---
Header header
nav_msgs/OccupancyGrid costmap
ObstacleDump[] obstacle_layers
SemanticDump[] semantic_layers

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: costmap_2d/ObstacleDump
sensor_msgs/PointCloud2[] scans
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: costmap_2d/SemanticDump
pedsim_msgs/SemanticData[] layers
================================================================================
MSG: pedsim_msgs/SemanticData
std_msgs/Header header
pedsim_msgs/SemanticDatum[] points
string type
================================================================================
MSG: pedsim_msgs/SemanticDatum
geometry_msgs/Point location
")

(setf (get costmap_2d::GetDumpResponse :md5sum-) "e8c4a22fca4ff331263a69635b5c452d")
(setf (get costmap_2d::GetDumpResponse :datatype-) "costmap_2d/GetDumpResponse")
(setf (get costmap_2d::GetDumpResponse :definition-)
      "---
Header header
nav_msgs/OccupancyGrid costmap
ObstacleDump[] obstacle_layers
SemanticDump[] semantic_layers

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: costmap_2d/ObstacleDump
sensor_msgs/PointCloud2[] scans
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: costmap_2d/SemanticDump
pedsim_msgs/SemanticData[] layers
================================================================================
MSG: pedsim_msgs/SemanticData
std_msgs/Header header
pedsim_msgs/SemanticDatum[] points
string type
================================================================================
MSG: pedsim_msgs/SemanticDatum
geometry_msgs/Point location
")



(provide :costmap_2d/GetDump "e8c4a22fca4ff331263a69635b5c452d")


