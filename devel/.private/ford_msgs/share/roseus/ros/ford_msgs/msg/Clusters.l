;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::Clusters)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'Clusters (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::CLUSTERS")
  (make-package "FORD_MSGS::CLUSTERS"))

(in-package "ROS")
;;//! \htmlinclude Clusters.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::Clusters
  :super ros::object
  :slots (_header _labels _counts _mean_points _max_points _min_points _pointclouds _velocities ))

(defmethod ford_msgs::Clusters
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:labels __labels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:counts __counts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:mean_points __mean_points) ())
    ((:max_points __max_points) ())
    ((:min_points __min_points) ())
    ((:pointclouds __pointclouds) ())
    ((:velocities __velocities) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _labels __labels)
   (setq _counts __counts)
   (setq _mean_points __mean_points)
   (setq _max_points __max_points)
   (setq _min_points __min_points)
   (setq _pointclouds __pointclouds)
   (setq _velocities __velocities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:counts
   (&optional __counts)
   (if __counts (setq _counts __counts)) _counts)
  (:mean_points
   (&rest __mean_points)
   (if (keywordp (car __mean_points))
       (send* _mean_points __mean_points)
     (progn
       (if __mean_points (setq _mean_points (car __mean_points)))
       _mean_points)))
  (:max_points
   (&rest __max_points)
   (if (keywordp (car __max_points))
       (send* _max_points __max_points)
     (progn
       (if __max_points (setq _max_points (car __max_points)))
       _max_points)))
  (:min_points
   (&rest __min_points)
   (if (keywordp (car __min_points))
       (send* _min_points __min_points)
     (progn
       (if __min_points (setq _min_points (car __min_points)))
       _min_points)))
  (:pointclouds
   (&rest __pointclouds)
   (if (keywordp (car __pointclouds))
       (send* _pointclouds __pointclouds)
     (progn
       (if __pointclouds (setq _pointclouds (car __pointclouds)))
       _pointclouds)))
  (:velocities
   (&rest __velocities)
   (if (keywordp (car __velocities))
       (send* _velocities __velocities)
     (progn
       (if __velocities (setq _velocities (car __velocities)))
       _velocities)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _labels
    (* 4    (length _labels)) 4
    ;; uint32[] _counts
    (* 4    (length _counts)) 4
    ;; geometry_msgs/Point[] _mean_points
    (apply #'+ (send-all _mean_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _max_points
    (apply #'+ (send-all _max_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _min_points
    (apply #'+ (send-all _min_points :serialization-length)) 4
    ;; sensor_msgs/PointCloud2[] _pointclouds
    (apply #'+ (send-all _pointclouds :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _velocities
    (apply #'+ (send-all _velocities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _labels
     (write-long (length _labels) s)
     (dotimes (i (length _labels))
       (write-long (elt _labels i) s)
       )
     ;; uint32[] _counts
     (write-long (length _counts) s)
     (dotimes (i (length _counts))
       (write-long (elt _counts i) s)
       )
     ;; geometry_msgs/Point[] _mean_points
     (write-long (length _mean_points) s)
     (dolist (elem _mean_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _max_points
     (write-long (length _max_points) s)
     (dolist (elem _max_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _min_points
     (write-long (length _min_points) s)
     (dolist (elem _min_points)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2[] _pointclouds
     (write-long (length _pointclouds) s)
     (dolist (elem _pointclouds)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _velocities
     (write-long (length _velocities) s)
     (dolist (elem _velocities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _labels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _counts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _counts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _counts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _mean_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mean_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _mean_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _max_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _max_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _min_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _min_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2[] _pointclouds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointclouds (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _pointclouds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ford_msgs::Clusters :md5sum-) "4df2e44fb76f60747b49f1ef14546917")
(setf (get ford_msgs::Clusters :datatype-) "ford_msgs/Clusters")
(setf (get ford_msgs::Clusters :definition-)
      "Header header
uint32[] labels
uint32[] counts
geometry_msgs/Point[] mean_points
geometry_msgs/Point[] max_points
geometry_msgs/Point[] min_points
sensor_msgs/PointCloud2[] pointclouds
geometry_msgs/Vector3[] velocities
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :ford_msgs/Clusters "4df2e44fb76f60747b49f1ef14546917")


