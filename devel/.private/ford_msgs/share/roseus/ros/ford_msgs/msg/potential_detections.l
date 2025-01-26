;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::potential_detections)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'potential_detections (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::POTENTIAL_DETECTIONS")
  (make-package "FORD_MSGS::POTENTIAL_DETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude potential_detections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::potential_detections
  :super ros::object
  :slots (_header _scores _detections _class_strings _pincer_obs ))

(defmethod ford_msgs::potential_detections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scores __scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:detections __detections) (make-array 0 :initial-element 0 :element-type :integer))
    ((:class_strings __class_strings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pincer_obs __pincer_obs) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scores __scores)
   (setq _detections __detections)
   (setq _class_strings __class_strings)
   (setq _pincer_obs __pincer_obs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scores
   (&optional __scores)
   (if __scores (setq _scores __scores)) _scores)
  (:detections
   (&optional __detections)
   (if __detections (setq _detections __detections)) _detections)
  (:class_strings
   (&optional __class_strings)
   (if __class_strings (setq _class_strings __class_strings)) _class_strings)
  (:pincer_obs
   (&optional __pincer_obs)
   (if __pincer_obs (setq _pincer_obs __pincer_obs)) _pincer_obs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _scores
    (* 8    (length _scores)) 4
    ;; uint32[] _detections
    (* 4    (length _detections)) 4
    ;; string[] _class_strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _class_strings)) 4
    ;; uint32[] _pincer_obs
    (* 4    (length _pincer_obs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _scores
     (write-long (length _scores) s)
     (dotimes (i (length _scores))
       (sys::poke (elt _scores i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32[] _detections
     (write-long (length _detections) s)
     (dotimes (i (length _detections))
       (write-long (elt _detections i) s)
       )
     ;; string[] _class_strings
     (write-long (length _class_strings) s)
     (dolist (elem _class_strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _pincer_obs
     (write-long (length _pincer_obs) s)
     (dotimes (i (length _pincer_obs))
       (write-long (elt _pincer_obs i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scores i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _detections i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _class_strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _class_strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _pincer_obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pincer_obs (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pincer_obs i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ford_msgs::potential_detections :md5sum-) "f9ffa88f6b74a8b1030d56ef4a86d508")
(setf (get ford_msgs::potential_detections :datatype-) "ford_msgs/potential_detections")
(setf (get ford_msgs::potential_detections :definition-)
      "Header header
float64[] scores
uint32[] detections
string[] class_strings
uint32[] pincer_obs
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

")



(provide :ford_msgs/potential_detections "f9ffa88f6b74a8b1030d56ef4a86d508")


