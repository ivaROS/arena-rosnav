;; Auto-generated. Do not edit!


(when (boundp 'map_distance_server::GetDistanceMap)
  (if (not (find-package "MAP_DISTANCE_SERVER"))
    (make-package "MAP_DISTANCE_SERVER"))
  (shadow 'GetDistanceMap (find-package "MAP_DISTANCE_SERVER")))
(unless (find-package "MAP_DISTANCE_SERVER::GETDISTANCEMAP")
  (make-package "MAP_DISTANCE_SERVER::GETDISTANCEMAP"))
(unless (find-package "MAP_DISTANCE_SERVER::GETDISTANCEMAPREQUEST")
  (make-package "MAP_DISTANCE_SERVER::GETDISTANCEMAPREQUEST"))
(unless (find-package "MAP_DISTANCE_SERVER::GETDISTANCEMAPRESPONSE")
  (make-package "MAP_DISTANCE_SERVER::GETDISTANCEMAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_distance_server::GetDistanceMapRequest
  :super ros::object
  :slots ())

(defmethod map_distance_server::GetDistanceMapRequest
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

(defclass map_distance_server::GetDistanceMapResponse
  :super ros::object
  :slots (_header _info _data ))

(defmethod map_distance_server::GetDistanceMapResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass map_distance_server::GetDistanceMap
  :super ros::object
  :slots ())

(setf (get map_distance_server::GetDistanceMap :md5sum-) "1ba334862fce595df43bc38c5dc401c7")
(setf (get map_distance_server::GetDistanceMap :datatype-) "map_distance_server/GetDistanceMap")
(setf (get map_distance_server::GetDistanceMap :request) map_distance_server::GetDistanceMapRequest)
(setf (get map_distance_server::GetDistanceMap :response) map_distance_server::GetDistanceMapResponse)

(defmethod map_distance_server::GetDistanceMapRequest
  (:response () (instance map_distance_server::GetDistanceMapResponse :init)))

(setf (get map_distance_server::GetDistanceMapRequest :md5sum-) "1ba334862fce595df43bc38c5dc401c7")
(setf (get map_distance_server::GetDistanceMapRequest :datatype-) "map_distance_server/GetDistanceMapRequest")
(setf (get map_distance_server::GetDistanceMapRequest :definition-)
      "---
std_msgs/Header header
nav_msgs/MapMetaData info

int32[] data



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
")

(setf (get map_distance_server::GetDistanceMapResponse :md5sum-) "1ba334862fce595df43bc38c5dc401c7")
(setf (get map_distance_server::GetDistanceMapResponse :datatype-) "map_distance_server/GetDistanceMapResponse")
(setf (get map_distance_server::GetDistanceMapResponse :definition-)
      "---
std_msgs/Header header
nav_msgs/MapMetaData info

int32[] data



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
")



(provide :map_distance_server/GetDistanceMap "1ba334862fce595df43bc38c5dc401c7")


