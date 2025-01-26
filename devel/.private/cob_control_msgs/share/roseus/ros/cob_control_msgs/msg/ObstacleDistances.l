;; Auto-generated. Do not edit!


(when (boundp 'cob_control_msgs::ObstacleDistances)
  (if (not (find-package "COB_CONTROL_MSGS"))
    (make-package "COB_CONTROL_MSGS"))
  (shadow 'ObstacleDistances (find-package "COB_CONTROL_MSGS")))
(unless (find-package "COB_CONTROL_MSGS::OBSTACLEDISTANCES")
  (make-package "COB_CONTROL_MSGS::OBSTACLEDISTANCES"))

(in-package "ROS")
;;//! \htmlinclude ObstacleDistances.msg.html


(defclass cob_control_msgs::ObstacleDistances
  :super ros::object
  :slots (_distances ))

(defmethod cob_control_msgs::ObstacleDistances
  (:init
   (&key
    ((:distances __distances) ())
    )
   (send-super :init)
   (setq _distances __distances)
   self)
  (:distances
   (&rest __distances)
   (if (keywordp (car __distances))
       (send* _distances __distances)
     (progn
       (if __distances (setq _distances (car __distances)))
       _distances)))
  (:serialization-length
   ()
   (+
    ;; cob_control_msgs/ObstacleDistance[] _distances
    (apply #'+ (send-all _distances :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_control_msgs/ObstacleDistance[] _distances
     (write-long (length _distances) s)
     (dolist (elem _distances)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_control_msgs/ObstacleDistance[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (let (r) (dotimes (i n) (push (instance cob_control_msgs::ObstacleDistance :init) r)) r))
     (dolist (elem- _distances)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_control_msgs::ObstacleDistances :md5sum-) "58f6b8a2511da851588441c695d51807")
(setf (get cob_control_msgs::ObstacleDistances :datatype-) "cob_control_msgs/ObstacleDistances")
(setf (get cob_control_msgs::ObstacleDistances :definition-)
      "ObstacleDistance[] distances
================================================================================
MSG: cob_control_msgs/ObstacleDistance
Header header

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



(provide :cob_control_msgs/ObstacleDistances "58f6b8a2511da851588441c695d51807")


