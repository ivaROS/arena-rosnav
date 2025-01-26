;; Auto-generated. Do not edit!


(when (boundp 'plan_msgs::Subgoal)
  (if (not (find-package "PLAN_MSGS"))
    (make-package "PLAN_MSGS"))
  (shadow 'Subgoal (find-package "PLAN_MSGS")))
(unless (find-package "PLAN_MSGS::SUBGOAL")
  (make-package "PLAN_MSGS::SUBGOAL"))
(unless (find-package "PLAN_MSGS::SUBGOALREQUEST")
  (make-package "PLAN_MSGS::SUBGOALREQUEST"))
(unless (find-package "PLAN_MSGS::SUBGOALRESPONSE")
  (make-package "PLAN_MSGS::SUBGOALRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass plan_msgs::SubgoalRequest
  :super ros::object
  :slots ())

(defmethod plan_msgs::SubgoalRequest
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

(defclass plan_msgs::SubgoalResponse
  :super ros::object
  :slots (_subgoal _success _message ))

(defmethod plan_msgs::SubgoalResponse
  (:init
   (&key
    ((:subgoal __subgoal) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _subgoal __subgoal)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:subgoal
   (&rest __subgoal)
   (if (keywordp (car __subgoal))
       (send* _subgoal __subgoal)
     (progn
       (if __subgoal (setq _subgoal (car __subgoal)))
       _subgoal)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _subgoal
    (send _subgoal :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _subgoal
       (send _subgoal :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _subgoal
     (send _subgoal :deserialize buf ptr-) (incf ptr- (send _subgoal :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass plan_msgs::Subgoal
  :super ros::object
  :slots ())

(setf (get plan_msgs::Subgoal :md5sum-) "f9a0f9e30f2f462a670531e4a8b863f0")
(setf (get plan_msgs::Subgoal :datatype-) "plan_msgs/Subgoal")
(setf (get plan_msgs::Subgoal :request) plan_msgs::SubgoalRequest)
(setf (get plan_msgs::Subgoal :response) plan_msgs::SubgoalResponse)

(defmethod plan_msgs::SubgoalRequest
  (:response () (instance plan_msgs::SubgoalResponse :init)))

(setf (get plan_msgs::SubgoalRequest :md5sum-) "f9a0f9e30f2f462a670531e4a8b863f0")
(setf (get plan_msgs::SubgoalRequest :datatype-) "plan_msgs/SubgoalRequest")
(setf (get plan_msgs::SubgoalRequest :definition-)
      "
---
geometry_msgs/PoseStamped subgoal
bool success
string message


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
")

(setf (get plan_msgs::SubgoalResponse :md5sum-) "f9a0f9e30f2f462a670531e4a8b863f0")
(setf (get plan_msgs::SubgoalResponse :datatype-) "plan_msgs/SubgoalResponse")
(setf (get plan_msgs::SubgoalResponse :definition-)
      "
---
geometry_msgs/PoseStamped subgoal
bool success
string message


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
")



(provide :plan_msgs/Subgoal "f9a0f9e30f2f462a670531e4a8b863f0")


