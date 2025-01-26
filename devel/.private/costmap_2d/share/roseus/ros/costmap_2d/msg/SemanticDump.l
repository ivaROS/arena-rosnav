;; Auto-generated. Do not edit!


(when (boundp 'costmap_2d::SemanticDump)
  (if (not (find-package "COSTMAP_2D"))
    (make-package "COSTMAP_2D"))
  (shadow 'SemanticDump (find-package "COSTMAP_2D")))
(unless (find-package "COSTMAP_2D::SEMANTICDUMP")
  (make-package "COSTMAP_2D::SEMANTICDUMP"))

(in-package "ROS")
;;//! \htmlinclude SemanticDump.msg.html
(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))


(defclass costmap_2d::SemanticDump
  :super ros::object
  :slots (_layers ))

(defmethod costmap_2d::SemanticDump
  (:init
   (&key
    ((:layers __layers) ())
    )
   (send-super :init)
   (setq _layers __layers)
   self)
  (:layers
   (&rest __layers)
   (if (keywordp (car __layers))
       (send* _layers __layers)
     (progn
       (if __layers (setq _layers (car __layers)))
       _layers)))
  (:serialization-length
   ()
   (+
    ;; pedsim_msgs/SemanticData[] _layers
    (apply #'+ (send-all _layers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pedsim_msgs/SemanticData[] _layers
     (write-long (length _layers) s)
     (dolist (elem _layers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pedsim_msgs/SemanticData[] _layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _layers (let (r) (dotimes (i n) (push (instance pedsim_msgs::SemanticData :init) r)) r))
     (dolist (elem- _layers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get costmap_2d::SemanticDump :md5sum-) "f23a90c5da8e0d6842e9dec8eaee0281")
(setf (get costmap_2d::SemanticDump :datatype-) "costmap_2d/SemanticDump")
(setf (get costmap_2d::SemanticDump :definition-)
      "pedsim_msgs/SemanticData[] layers
================================================================================
MSG: pedsim_msgs/SemanticData
std_msgs/Header header
pedsim_msgs/SemanticDatum[] points
string type
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
MSG: pedsim_msgs/SemanticDatum
geometry_msgs/Point location
float32 evidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :costmap_2d/SemanticDump "f23a90c5da8e0d6842e9dec8eaee0281")


