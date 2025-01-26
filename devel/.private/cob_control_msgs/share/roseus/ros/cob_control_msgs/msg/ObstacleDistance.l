;; Auto-generated. Do not edit!


(when (boundp 'cob_control_msgs::ObstacleDistance)
  (if (not (find-package "COB_CONTROL_MSGS"))
    (make-package "COB_CONTROL_MSGS"))
  (shadow 'ObstacleDistance (find-package "COB_CONTROL_MSGS")))
(unless (find-package "COB_CONTROL_MSGS::OBSTACLEDISTANCE")
  (make-package "COB_CONTROL_MSGS::OBSTACLEDISTANCE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleDistance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_control_msgs::ObstacleDistance
  :super ros::object
  :slots (_header _link_of_interest _obstacle_id _distance _frame_vector _nearest_point_frame_vector _nearest_point_obstacle_vector ))

(defmethod cob_control_msgs::ObstacleDistance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:link_of_interest __link_of_interest) "")
    ((:obstacle_id __obstacle_id) "")
    ((:distance __distance) 0.0)
    ((:frame_vector __frame_vector) (instance geometry_msgs::Vector3 :init))
    ((:nearest_point_frame_vector __nearest_point_frame_vector) (instance geometry_msgs::Vector3 :init))
    ((:nearest_point_obstacle_vector __nearest_point_obstacle_vector) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _link_of_interest (string __link_of_interest))
   (setq _obstacle_id (string __obstacle_id))
   (setq _distance (float __distance))
   (setq _frame_vector __frame_vector)
   (setq _nearest_point_frame_vector __nearest_point_frame_vector)
   (setq _nearest_point_obstacle_vector __nearest_point_obstacle_vector)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:link_of_interest
   (&optional __link_of_interest)
   (if __link_of_interest (setq _link_of_interest __link_of_interest)) _link_of_interest)
  (:obstacle_id
   (&optional __obstacle_id)
   (if __obstacle_id (setq _obstacle_id __obstacle_id)) _obstacle_id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:frame_vector
   (&rest __frame_vector)
   (if (keywordp (car __frame_vector))
       (send* _frame_vector __frame_vector)
     (progn
       (if __frame_vector (setq _frame_vector (car __frame_vector)))
       _frame_vector)))
  (:nearest_point_frame_vector
   (&rest __nearest_point_frame_vector)
   (if (keywordp (car __nearest_point_frame_vector))
       (send* _nearest_point_frame_vector __nearest_point_frame_vector)
     (progn
       (if __nearest_point_frame_vector (setq _nearest_point_frame_vector (car __nearest_point_frame_vector)))
       _nearest_point_frame_vector)))
  (:nearest_point_obstacle_vector
   (&rest __nearest_point_obstacle_vector)
   (if (keywordp (car __nearest_point_obstacle_vector))
       (send* _nearest_point_obstacle_vector __nearest_point_obstacle_vector)
     (progn
       (if __nearest_point_obstacle_vector (setq _nearest_point_obstacle_vector (car __nearest_point_obstacle_vector)))
       _nearest_point_obstacle_vector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _link_of_interest
    4 (length _link_of_interest)
    ;; string _obstacle_id
    4 (length _obstacle_id)
    ;; float64 _distance
    8
    ;; geometry_msgs/Vector3 _frame_vector
    (send _frame_vector :serialization-length)
    ;; geometry_msgs/Vector3 _nearest_point_frame_vector
    (send _nearest_point_frame_vector :serialization-length)
    ;; geometry_msgs/Vector3 _nearest_point_obstacle_vector
    (send _nearest_point_obstacle_vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _link_of_interest
       (write-long (length _link_of_interest) s) (princ _link_of_interest s)
     ;; string _obstacle_id
       (write-long (length _obstacle_id) s) (princ _obstacle_id s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _frame_vector
       (send _frame_vector :serialize s)
     ;; geometry_msgs/Vector3 _nearest_point_frame_vector
       (send _nearest_point_frame_vector :serialize s)
     ;; geometry_msgs/Vector3 _nearest_point_obstacle_vector
       (send _nearest_point_obstacle_vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _link_of_interest
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_of_interest (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _obstacle_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obstacle_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _frame_vector
     (send _frame_vector :deserialize buf ptr-) (incf ptr- (send _frame_vector :serialization-length))
   ;; geometry_msgs/Vector3 _nearest_point_frame_vector
     (send _nearest_point_frame_vector :deserialize buf ptr-) (incf ptr- (send _nearest_point_frame_vector :serialization-length))
   ;; geometry_msgs/Vector3 _nearest_point_obstacle_vector
     (send _nearest_point_obstacle_vector :deserialize buf ptr-) (incf ptr- (send _nearest_point_obstacle_vector :serialization-length))
   ;;
   self)
  )

(setf (get cob_control_msgs::ObstacleDistance :md5sum-) "fbbcad171002ad96c1fc44941d7a1bf1")
(setf (get cob_control_msgs::ObstacleDistance :datatype-) "cob_control_msgs/ObstacleDistance")
(setf (get cob_control_msgs::ObstacleDistance :definition-)
      "Header header

## Collision pair consists of link of interest and obstacle
# Registration name of the link of interest
string link_of_interest
# Registration name of the obstacle
string obstacle_id

## distance between the nearest points on obstacle and link of interest
float64 distance

## Vector pointing to the origin of the link
geometry_msgs/Vector3 frame_vector

## Vector pointing to the nearest point on the link collision geometry (e.g. mesh)
geometry_msgs/Vector3 nearest_point_frame_vector

## Vector pointing to the nearest point on the obstacle collision geometry (e.g. mesh)
geometry_msgs/Vector3 nearest_point_obstacle_vector

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



(provide :cob_control_msgs/ObstacleDistance "fbbcad171002ad96c1fc44941d7a1bf1")


