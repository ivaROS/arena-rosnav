;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::ClusterHit)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'ClusterHit (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::CLUSTERHIT")
  (make-package "FORD_MSGS::CLUSTERHIT"))

(in-package "ROS")
;;//! \htmlinclude ClusterHit.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ford_msgs::ClusterHit
  :super ros::object
  :slots (_header _ped_id _likelihood ))

(defmethod ford_msgs::ClusterHit
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ped_id __ped_id) 0)
    ((:likelihood __likelihood) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ped_id (round __ped_id))
   (setq _likelihood (float __likelihood))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ped_id
   (&optional __ped_id)
   (if __ped_id (setq _ped_id __ped_id)) _ped_id)
  (:likelihood
   (&optional __likelihood)
   (if __likelihood (setq _likelihood __likelihood)) _likelihood)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ped_id
    4
    ;; float32 _likelihood
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ped_id
       (write-long _ped_id s)
     ;; float32 _likelihood
       (sys::poke _likelihood (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ped_id
     (setq _ped_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _likelihood
     (setq _likelihood (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ford_msgs::ClusterHit :md5sum-) "22a0a4f41b3e5b3041fdd6c1be6ae884")
(setf (get ford_msgs::ClusterHit :datatype-) "ford_msgs/ClusterHit")
(setf (get ford_msgs::ClusterHit :definition-)
      "Header header
uint32 ped_id
float32 likelihood

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



(provide :ford_msgs/ClusterHit "22a0a4f41b3e5b3041fdd6c1be6ae884")


