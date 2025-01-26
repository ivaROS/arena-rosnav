;; Auto-generated. Do not edit!


(when (boundp 'cob_base_controller_utils::WheelCommands)
  (if (not (find-package "COB_BASE_CONTROLLER_UTILS"))
    (make-package "COB_BASE_CONTROLLER_UTILS"))
  (shadow 'WheelCommands (find-package "COB_BASE_CONTROLLER_UTILS")))
(unless (find-package "COB_BASE_CONTROLLER_UTILS::WHEELCOMMANDS")
  (make-package "COB_BASE_CONTROLLER_UTILS::WHEELCOMMANDS"))

(in-package "ROS")
;;//! \htmlinclude WheelCommands.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_base_controller_utils::WheelCommands
  :super ros::object
  :slots (_header _drive_target_velocity _steer_target_velocity _steer_target_position _steer_target_error ))

(defmethod cob_base_controller_utils::WheelCommands
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drive_target_velocity __drive_target_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:steer_target_velocity __steer_target_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:steer_target_position __steer_target_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:steer_target_error __steer_target_error) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drive_target_velocity __drive_target_velocity)
   (setq _steer_target_velocity __steer_target_velocity)
   (setq _steer_target_position __steer_target_position)
   (setq _steer_target_error __steer_target_error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drive_target_velocity
   (&optional __drive_target_velocity)
   (if __drive_target_velocity (setq _drive_target_velocity __drive_target_velocity)) _drive_target_velocity)
  (:steer_target_velocity
   (&optional __steer_target_velocity)
   (if __steer_target_velocity (setq _steer_target_velocity __steer_target_velocity)) _steer_target_velocity)
  (:steer_target_position
   (&optional __steer_target_position)
   (if __steer_target_position (setq _steer_target_position __steer_target_position)) _steer_target_position)
  (:steer_target_error
   (&optional __steer_target_error)
   (if __steer_target_error (setq _steer_target_error __steer_target_error)) _steer_target_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _drive_target_velocity
    (* 8    (length _drive_target_velocity)) 4
    ;; float64[] _steer_target_velocity
    (* 8    (length _steer_target_velocity)) 4
    ;; float64[] _steer_target_position
    (* 8    (length _steer_target_position)) 4
    ;; float64[] _steer_target_error
    (* 8    (length _steer_target_error)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _drive_target_velocity
     (write-long (length _drive_target_velocity) s)
     (dotimes (i (length _drive_target_velocity))
       (sys::poke (elt _drive_target_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _steer_target_velocity
     (write-long (length _steer_target_velocity) s)
     (dotimes (i (length _steer_target_velocity))
       (sys::poke (elt _steer_target_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _steer_target_position
     (write-long (length _steer_target_position) s)
     (dotimes (i (length _steer_target_position))
       (sys::poke (elt _steer_target_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _steer_target_error
     (write-long (length _steer_target_error) s)
     (dotimes (i (length _steer_target_error))
       (sys::poke (elt _steer_target_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _drive_target_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drive_target_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _drive_target_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _steer_target_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steer_target_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _steer_target_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _steer_target_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steer_target_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _steer_target_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _steer_target_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steer_target_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _steer_target_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get cob_base_controller_utils::WheelCommands :md5sum-) "77ff79ee11678be45d9ecbc2cb9d23dd")
(setf (get cob_base_controller_utils::WheelCommands :datatype-) "cob_base_controller_utils/WheelCommands")
(setf (get cob_base_controller_utils::WheelCommands :definition-)
      "std_msgs/Header header
float64[] drive_target_velocity
float64[] steer_target_velocity
float64[] steer_target_position
float64[] steer_target_error

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



(provide :cob_base_controller_utils/WheelCommands "77ff79ee11678be45d9ecbc2cb9d23dd")


