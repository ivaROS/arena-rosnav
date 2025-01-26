;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::ped_detection)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'ped_detection (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::PED_DETECTION")
  (make-package "FORD_MSGS::PED_DETECTION"))

(in-package "ROS")
;;//! \htmlinclude ped_detection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::ped_detection
  :super ros::object
  :slots (_header _ids _world_vectors _left_vectors _right_vectors _class_strings _avg_colors _pincer_obs ))

(defmethod ford_msgs::ped_detection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:world_vectors __world_vectors) ())
    ((:left_vectors __left_vectors) ())
    ((:right_vectors __right_vectors) ())
    ((:class_strings __class_strings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:avg_colors __avg_colors) ())
    ((:pincer_obs __pincer_obs) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _world_vectors __world_vectors)
   (setq _left_vectors __left_vectors)
   (setq _right_vectors __right_vectors)
   (setq _class_strings __class_strings)
   (setq _avg_colors __avg_colors)
   (setq _pincer_obs __pincer_obs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:world_vectors
   (&rest __world_vectors)
   (if (keywordp (car __world_vectors))
       (send* _world_vectors __world_vectors)
     (progn
       (if __world_vectors (setq _world_vectors (car __world_vectors)))
       _world_vectors)))
  (:left_vectors
   (&rest __left_vectors)
   (if (keywordp (car __left_vectors))
       (send* _left_vectors __left_vectors)
     (progn
       (if __left_vectors (setq _left_vectors (car __left_vectors)))
       _left_vectors)))
  (:right_vectors
   (&rest __right_vectors)
   (if (keywordp (car __right_vectors))
       (send* _right_vectors __right_vectors)
     (progn
       (if __right_vectors (setq _right_vectors (car __right_vectors)))
       _right_vectors)))
  (:class_strings
   (&optional __class_strings)
   (if __class_strings (setq _class_strings __class_strings)) _class_strings)
  (:avg_colors
   (&rest __avg_colors)
   (if (keywordp (car __avg_colors))
       (send* _avg_colors __avg_colors)
     (progn
       (if __avg_colors (setq _avg_colors (car __avg_colors)))
       _avg_colors)))
  (:pincer_obs
   (&optional __pincer_obs)
   (if __pincer_obs (setq _pincer_obs __pincer_obs)) _pincer_obs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Vector3[] _world_vectors
    (apply #'+ (send-all _world_vectors :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _left_vectors
    (apply #'+ (send-all _left_vectors :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _right_vectors
    (apply #'+ (send-all _right_vectors :serialization-length)) 4
    ;; string[] _class_strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _class_strings)) 4
    ;; std_msgs/ColorRGBA[] _avg_colors
    (apply #'+ (send-all _avg_colors :serialization-length)) 4
    ;; uint8[] _pincer_obs
    (* 1    (length _pincer_obs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; geometry_msgs/Vector3[] _world_vectors
     (write-long (length _world_vectors) s)
     (dolist (elem _world_vectors)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _left_vectors
     (write-long (length _left_vectors) s)
     (dolist (elem _left_vectors)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _right_vectors
     (write-long (length _right_vectors) s)
     (dolist (elem _right_vectors)
       (send elem :serialize s)
       )
     ;; string[] _class_strings
     (write-long (length _class_strings) s)
     (dolist (elem _class_strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; std_msgs/ColorRGBA[] _avg_colors
     (write-long (length _avg_colors) s)
     (dolist (elem _avg_colors)
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
   ;; uint32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Vector3[] _world_vectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _world_vectors (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _world_vectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _left_vectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_vectors (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _left_vectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _right_vectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_vectors (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _right_vectors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _class_strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _class_strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; std_msgs/ColorRGBA[] _avg_colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avg_colors (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _avg_colors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _pincer_obs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _pincer_obs (make-array n :element-type :char))
     (replace _pincer_obs buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ford_msgs::ped_detection :md5sum-) "04d576943f22d0e1e58f8bb73ed60473")
(setf (get ford_msgs::ped_detection :datatype-) "ford_msgs/ped_detection")
(setf (get ford_msgs::ped_detection :definition-)
      "Header header
uint32[] ids 
geometry_msgs/Vector3[] world_vectors
geometry_msgs/Vector3[] left_vectors
geometry_msgs/Vector3[] right_vectors
string[] class_strings
std_msgs/ColorRGBA[] avg_colors
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
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :ford_msgs/ped_detection "04d576943f22d0e1e58f8bb73ed60473")


