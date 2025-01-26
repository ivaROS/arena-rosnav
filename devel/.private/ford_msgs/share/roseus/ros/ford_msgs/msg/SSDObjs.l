;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::SSDObjs)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'SSDObjs (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::SSDOBJS")
  (make-package "FORD_MSGS::SSDOBJS"))

(in-package "ROS")
;;//! \htmlinclude SSDObjs.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::SSDObjs
  :super ros::object
  :slots (_header _avg_colors _clusters _pincer_obs ))

(defmethod ford_msgs::SSDObjs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:avg_colors __avg_colors) ())
    ((:clusters __clusters) ())
    ((:pincer_obs __pincer_obs) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _avg_colors __avg_colors)
   (setq _clusters __clusters)
   (setq _pincer_obs __pincer_obs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:avg_colors
   (&rest __avg_colors)
   (if (keywordp (car __avg_colors))
       (send* _avg_colors __avg_colors)
     (progn
       (if __avg_colors (setq _avg_colors (car __avg_colors)))
       _avg_colors)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:pincer_obs
   (&optional __pincer_obs)
   (if __pincer_obs (setq _pincer_obs __pincer_obs)) _pincer_obs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/ColorRGBA[] _avg_colors
    (apply #'+ (send-all _avg_colors :serialization-length)) 4
    ;; geometry_msgs/Point[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ;; uint8[] _pincer_obs
    (* 1    (length _pincer_obs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/ColorRGBA[] _avg_colors
     (write-long (length _avg_colors) s)
     (dolist (elem _avg_colors)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;; uint8[] _pincer_obs
     (write-long (length _pincer_obs) s)
     (princ _pincer_obs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/ColorRGBA[] _avg_colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avg_colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _avg_colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _pincer_obs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _pincer_obs (make-array n :element-type :char))
     (replace _pincer_obs buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ford_msgs::SSDObjs :md5sum-) "67a4b6ed1fabd91000a0077cb78e4704")
(setf (get ford_msgs::SSDObjs :datatype-) "ford_msgs/SSDObjs")
(setf (get ford_msgs::SSDObjs :definition-)
      "Header header
std_msgs/ColorRGBA[] avg_colors
geometry_msgs/Point[] clusters
uint8[] pincer_obs
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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :ford_msgs/SSDObjs "67a4b6ed1fabd91000a0077cb78e4704")


