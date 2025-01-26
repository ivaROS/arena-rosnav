;; Auto-generated. Do not edit!


(when (boundp 'costmap_2d::ObstacleDump)
  (if (not (find-package "COSTMAP_2D"))
    (make-package "COSTMAP_2D"))
  (shadow 'ObstacleDump (find-package "COSTMAP_2D")))
(unless (find-package "COSTMAP_2D::OBSTACLEDUMP")
  (make-package "COSTMAP_2D::OBSTACLEDUMP"))

(in-package "ROS")
;;//! \htmlinclude ObstacleDump.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass costmap_2d::ObstacleDump
  :super ros::object
  :slots (_scans ))

(defmethod costmap_2d::ObstacleDump
  (:init
   (&key
    ((:scans __scans) ())
    )
   (send-super :init)
   (setq _scans __scans)
   self)
  (:scans
   (&rest __scans)
   (if (keywordp (car __scans))
       (send* _scans __scans)
     (progn
       (if __scans (setq _scans (car __scans)))
       _scans)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2[] _scans
    (apply #'+ (send-all _scans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2[] _scans
     (write-long (length _scans) s)
     (dolist (elem _scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2[] _scans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scans (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _scans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get costmap_2d::ObstacleDump :md5sum-) "f920aef0166f130f16d65011603c0109")
(setf (get costmap_2d::ObstacleDump :datatype-) "costmap_2d/ObstacleDump")
(setf (get costmap_2d::ObstacleDump :definition-)
      "sensor_msgs/PointCloud2[] scans
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

")



(provide :costmap_2d/ObstacleDump "f920aef0166f130f16d65011603c0109")


