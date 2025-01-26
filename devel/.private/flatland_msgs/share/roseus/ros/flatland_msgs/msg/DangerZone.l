;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::DangerZone)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'DangerZone (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::DANGERZONE")
  (make-package "FLATLAND_MSGS::DANGERZONE"))

(in-package "ROS")
;;//! \htmlinclude DangerZone.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass flatland_msgs::DangerZone
  :super ros::object
  :slots (_header _dangerZoneRadius _dangerZoneAngle _dangerZoneCenter ))

(defmethod flatland_msgs::DangerZone
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dangerZoneRadius __dangerZoneRadius) 0.0)
    ((:dangerZoneAngle __dangerZoneAngle) 0.0)
    ((:dangerZoneCenter __dangerZoneCenter) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _dangerZoneRadius (float __dangerZoneRadius))
   (setq _dangerZoneAngle (float __dangerZoneAngle))
   (setq _dangerZoneCenter __dangerZoneCenter)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dangerZoneRadius
   (&optional __dangerZoneRadius)
   (if __dangerZoneRadius (setq _dangerZoneRadius __dangerZoneRadius)) _dangerZoneRadius)
  (:dangerZoneAngle
   (&optional __dangerZoneAngle)
   (if __dangerZoneAngle (setq _dangerZoneAngle __dangerZoneAngle)) _dangerZoneAngle)
  (:dangerZoneCenter
   (&optional __dangerZoneCenter)
   (if __dangerZoneCenter (setq _dangerZoneCenter __dangerZoneCenter)) _dangerZoneCenter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _dangerZoneRadius
    8
    ;; float64 _dangerZoneAngle
    8
    ;; float64[] _dangerZoneCenter
    (* 8    (length _dangerZoneCenter)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _dangerZoneRadius
       (sys::poke _dangerZoneRadius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dangerZoneAngle
       (sys::poke _dangerZoneAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _dangerZoneCenter
     (write-long (length _dangerZoneCenter) s)
     (dotimes (i (length _dangerZoneCenter))
       (sys::poke (elt _dangerZoneCenter i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _dangerZoneRadius
     (setq _dangerZoneRadius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dangerZoneAngle
     (setq _dangerZoneAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _dangerZoneCenter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dangerZoneCenter (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dangerZoneCenter i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get flatland_msgs::DangerZone :md5sum-) "817c5f50a4ebcc8474eeb2680eb5429a")
(setf (get flatland_msgs::DangerZone :datatype-) "flatland_msgs/DangerZone")
(setf (get flatland_msgs::DangerZone :definition-)
      "std_msgs/Header header
float64 dangerZoneRadius
float64 dangerZoneAngle
float64[] dangerZoneCenter
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



(provide :flatland_msgs/DangerZone "817c5f50a4ebcc8474eeb2680eb5429a")


