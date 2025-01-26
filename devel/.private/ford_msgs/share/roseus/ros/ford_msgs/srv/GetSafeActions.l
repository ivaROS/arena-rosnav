;; Auto-generated. Do not edit!


(when (boundp 'ford_msgs::GetSafeActions)
  (if (not (find-package "FORD_MSGS"))
    (make-package "FORD_MSGS"))
  (shadow 'GetSafeActions (find-package "FORD_MSGS")))
(unless (find-package "FORD_MSGS::GETSAFEACTIONS")
  (make-package "FORD_MSGS::GETSAFEACTIONS"))
(unless (find-package "FORD_MSGS::GETSAFEACTIONSREQUEST")
  (make-package "FORD_MSGS::GETSAFEACTIONSREQUEST"))
(unless (find-package "FORD_MSGS::GETSAFEACTIONSRESPONSE")
  (make-package "FORD_MSGS::GETSAFEACTIONSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass ford_msgs::GetSafeActionsRequest
  :super ros::object
  :slots (_start _goal ))

(defmethod ford_msgs::GetSafeActionsRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass ford_msgs::GetSafeActionsResponse
  :super ros::object
  :slots ())

(defmethod ford_msgs::GetSafeActionsResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ford_msgs::GetSafeActions
  :super ros::object
  :slots ())

(setf (get ford_msgs::GetSafeActions :md5sum-) "2fe3126bd5b2d56edd5005220333d4fd")
(setf (get ford_msgs::GetSafeActions :datatype-) "ford_msgs/GetSafeActions")
(setf (get ford_msgs::GetSafeActions :request) ford_msgs::GetSafeActionsRequest)
(setf (get ford_msgs::GetSafeActions :response) ford_msgs::GetSafeActionsResponse)

(defmethod ford_msgs::GetSafeActionsRequest
  (:response () (instance ford_msgs::GetSafeActionsResponse :init)))

(setf (get ford_msgs::GetSafeActionsRequest :md5sum-) "2fe3126bd5b2d56edd5005220333d4fd")
(setf (get ford_msgs::GetSafeActionsRequest :datatype-) "ford_msgs/GetSafeActionsRequest")
(setf (get ford_msgs::GetSafeActionsRequest :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")

(setf (get ford_msgs::GetSafeActionsResponse :md5sum-) "2fe3126bd5b2d56edd5005220333d4fd")
(setf (get ford_msgs::GetSafeActionsResponse :datatype-) "ford_msgs/GetSafeActionsResponse")
(setf (get ford_msgs::GetSafeActionsResponse :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")



(provide :ford_msgs/GetSafeActions "2fe3126bd5b2d56edd5005220333d4fd")


