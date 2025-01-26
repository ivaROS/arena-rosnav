;; Auto-generated. Do not edit!


(when (boundp 'all_in_one_local_planner_interface::SetGlobalPlan)
  (if (not (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
    (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
  (shadow 'SetGlobalPlan (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE")))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLAN")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLAN"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLANREQUEST")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLANREQUEST"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLANRESPONSE")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::SETGLOBALPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))




(defclass all_in_one_local_planner_interface::SetGlobalPlanRequest
  :super ros::object
  :slots (_global_plan ))

(defmethod all_in_one_local_planner_interface::SetGlobalPlanRequest
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

(defclass all_in_one_local_planner_interface::SetGlobalPlanResponse
  :super ros::object
  :slots (_successful ))

(defmethod all_in_one_local_planner_interface::SetGlobalPlanResponse
  (:init
   (&key
    ((:successful __successful) nil)
    )
   (send-super :init)
   (setq _successful __successful)
   self)
  (:successful
   (&optional (__successful :null))
   (if (not (eq __successful :null)) (setq _successful __successful)) _successful)
  (:serialization-length
   ()
   (+
    ;; bool _successful
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _successful
       (if _successful (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _successful
     (setq _successful (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_in_one_local_planner_interface::SetGlobalPlan
  :super ros::object
  :slots ())

(setf (get all_in_one_local_planner_interface::SetGlobalPlan :md5sum-) "4764e75946282cd60aded40196d97e1e")
(setf (get all_in_one_local_planner_interface::SetGlobalPlan :datatype-) "all_in_one_local_planner_interface/SetGlobalPlan")
(setf (get all_in_one_local_planner_interface::SetGlobalPlan :request) all_in_one_local_planner_interface::SetGlobalPlanRequest)
(setf (get all_in_one_local_planner_interface::SetGlobalPlan :response) all_in_one_local_planner_interface::SetGlobalPlanResponse)

(defmethod all_in_one_local_planner_interface::SetGlobalPlanRequest
  (:response () (instance all_in_one_local_planner_interface::SetGlobalPlanResponse :init)))

(setf (get all_in_one_local_planner_interface::SetGlobalPlanRequest :md5sum-) "4764e75946282cd60aded40196d97e1e")
(setf (get all_in_one_local_planner_interface::SetGlobalPlanRequest :datatype-) "all_in_one_local_planner_interface/SetGlobalPlanRequest")
(setf (get all_in_one_local_planner_interface::SetGlobalPlanRequest :definition-)
      "# request fields
# global path
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
---
# response fields
bool successful
")

(setf (get all_in_one_local_planner_interface::SetGlobalPlanResponse :md5sum-) "4764e75946282cd60aded40196d97e1e")
(setf (get all_in_one_local_planner_interface::SetGlobalPlanResponse :datatype-) "all_in_one_local_planner_interface/SetGlobalPlanResponse")
(setf (get all_in_one_local_planner_interface::SetGlobalPlanResponse :definition-)
      "# request fields
# global path
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
---
# response fields
bool successful
")



(provide :all_in_one_local_planner_interface/SetGlobalPlan "4764e75946282cd60aded40196d97e1e")


