;; Auto-generated. Do not edit!


(when (boundp 'all_in_one_global_planner_interface::MakeNewPlan)
  (if (not (find-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE"))
    (make-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE"))
  (shadow 'MakeNewPlan (find-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE")))
(unless (find-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLAN")
  (make-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLAN"))
(unless (find-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLANREQUEST")
  (make-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLANREQUEST"))
(unless (find-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLANRESPONSE")
  (make-package "ALL_IN_ONE_GLOBAL_PLANNER_INTERFACE::MAKENEWPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass all_in_one_global_planner_interface::MakeNewPlanRequest
  :super ros::object
  :slots (_goal ))

(defmethod all_in_one_global_planner_interface::MakeNewPlanRequest
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
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
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass all_in_one_global_planner_interface::MakeNewPlanResponse
  :super ros::object
  :slots (_global_plan ))

(defmethod all_in_one_global_planner_interface::MakeNewPlanResponse
  (:init
   (&key
    ((:global_plan __global_plan) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _global_plan __global_plan)
   self)
  (:global_plan
   (&rest __global_plan)
   (if (keywordp (car __global_plan))
       (send* _global_plan __global_plan)
     (progn
       (if __global_plan (setq _global_plan (car __global_plan)))
       _global_plan)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _global_plan
    (send _global_plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _global_plan
       (send _global_plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _global_plan
     (send _global_plan :deserialize buf ptr-) (incf ptr- (send _global_plan :serialization-length))
   ;;
   self)
  )

(defclass all_in_one_global_planner_interface::MakeNewPlan
  :super ros::object
  :slots ())

(setf (get all_in_one_global_planner_interface::MakeNewPlan :md5sum-) "b0da0fe6b6750964de6877ef99c1e149")
(setf (get all_in_one_global_planner_interface::MakeNewPlan :datatype-) "all_in_one_global_planner_interface/MakeNewPlan")
(setf (get all_in_one_global_planner_interface::MakeNewPlan :request) all_in_one_global_planner_interface::MakeNewPlanRequest)
(setf (get all_in_one_global_planner_interface::MakeNewPlan :response) all_in_one_global_planner_interface::MakeNewPlanResponse)

(defmethod all_in_one_global_planner_interface::MakeNewPlanRequest
  (:response () (instance all_in_one_global_planner_interface::MakeNewPlanResponse :init)))

(setf (get all_in_one_global_planner_interface::MakeNewPlanRequest :md5sum-) "b0da0fe6b6750964de6877ef99c1e149")
(setf (get all_in_one_global_planner_interface::MakeNewPlanRequest :datatype-) "all_in_one_global_planner_interface/MakeNewPlanRequest")
(setf (get all_in_one_global_planner_interface::MakeNewPlanRequest :definition-)
      "# request fields
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
# response fields
nav_msgs/Path global_plan

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get all_in_one_global_planner_interface::MakeNewPlanResponse :md5sum-) "b0da0fe6b6750964de6877ef99c1e149")
(setf (get all_in_one_global_planner_interface::MakeNewPlanResponse :datatype-) "all_in_one_global_planner_interface/MakeNewPlanResponse")
(setf (get all_in_one_global_planner_interface::MakeNewPlanResponse :definition-)
      "# request fields
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
# response fields
nav_msgs/Path global_plan

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :all_in_one_global_planner_interface/MakeNewPlan "b0da0fe6b6750964de6877ef99c1e149")


