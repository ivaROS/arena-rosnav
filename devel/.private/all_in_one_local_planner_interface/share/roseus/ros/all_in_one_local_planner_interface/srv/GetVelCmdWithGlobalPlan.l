;; Auto-generated. Do not edit!


(when (boundp 'all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan)
  (if (not (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
    (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
  (shadow 'GetVelCmdWithGlobalPlan (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE")))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLAN")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLAN"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLANREQUEST")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLANREQUEST"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLANRESPONSE")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDWITHGLOBALPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest
  :super ros::object
  :slots (_global_plan ))

(defmethod all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest
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

(defclass all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse
  :super ros::object
  :slots (_vel _costmaps_resetted _successful ))

(defmethod all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse
  (:init
   (&key
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    ((:costmaps_resetted __costmaps_resetted) nil)
    ((:successful __successful) nil)
    )
   (send-super :init)
   (setq _vel __vel)
   (setq _costmaps_resetted __costmaps_resetted)
   (setq _successful __successful)
   self)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:costmaps_resetted
   (&optional (__costmaps_resetted :null))
   (if (not (eq __costmaps_resetted :null)) (setq _costmaps_resetted __costmaps_resetted)) _costmaps_resetted)
  (:successful
   (&optional (__successful :null))
   (if (not (eq __successful :null)) (setq _successful __successful)) _successful)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ;; bool _costmaps_resetted
    1
    ;; bool _successful
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;; bool _costmaps_resetted
       (if _costmaps_resetted (write-byte -1 s) (write-byte 0 s))
     ;; bool _successful
       (if _successful (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; bool _costmaps_resetted
     (setq _costmaps_resetted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _successful
     (setq _successful (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan
  :super ros::object
  :slots ())

(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan :md5sum-) "88faefbda94c00890b9153ab1dbd5a14")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan :datatype-) "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlan")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan :request) all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest)
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlan :response) all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse)

(defmethod all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest
  (:response () (instance all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse :init)))

(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest :md5sum-) "88faefbda94c00890b9153ab1dbd5a14")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest :datatype-) "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanRequest")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanRequest :definition-)
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
geometry_msgs/Twist vel
bool costmaps_resetted
bool successful

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
")

(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse :md5sum-) "88faefbda94c00890b9153ab1dbd5a14")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse :datatype-) "all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanResponse")
(setf (get all_in_one_local_planner_interface::GetVelCmdWithGlobalPlanResponse :definition-)
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
geometry_msgs/Twist vel
bool costmaps_resetted
bool successful

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
")



(provide :all_in_one_local_planner_interface/GetVelCmdWithGlobalPlan "88faefbda94c00890b9153ab1dbd5a14")


