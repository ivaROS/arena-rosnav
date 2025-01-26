;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::SemanticData)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'SemanticData (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::SEMANTICDATA")
  (make-package "PEDSIM_MSGS::SEMANTICDATA"))

(in-package "ROS")
;;//! \htmlinclude SemanticData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pedsim_msgs::SemanticData
  :super ros::object
  :slots (_header _points _type ))

(defmethod pedsim_msgs::SemanticData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) ())
    ((:type __type) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   (setq _type (string __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pedsim_msgs/SemanticDatum[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pedsim_msgs/SemanticDatum[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pedsim_msgs/SemanticDatum[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance pedsim_msgs::SemanticDatum :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pedsim_msgs::SemanticData :md5sum-) "48872e6617331fa37bf40eb7c0a3cccb")
(setf (get pedsim_msgs::SemanticData :datatype-) "pedsim_msgs/SemanticData")
(setf (get pedsim_msgs::SemanticData :definition-)
      "std_msgs/Header header
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



(provide :pedsim_msgs/SemanticData "48872e6617331fa37bf40eb7c0a3cccb")


