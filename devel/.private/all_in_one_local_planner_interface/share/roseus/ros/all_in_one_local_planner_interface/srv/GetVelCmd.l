;; Auto-generated. Do not edit!


(when (boundp 'all_in_one_local_planner_interface::GetVelCmd)
  (if (not (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
    (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
  (shadow 'GetVelCmd (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE")))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMD")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMD"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDREQUEST")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDREQUEST"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDRESPONSE")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::GETVELCMDRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass all_in_one_local_planner_interface::GetVelCmdRequest
  :super ros::object
  :slots ())

(defmethod all_in_one_local_planner_interface::GetVelCmdRequest
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

(defclass all_in_one_local_planner_interface::GetVelCmdResponse
  :super ros::object
  :slots (_vel _costmaps_resetted _successful ))

(defmethod all_in_one_local_planner_interface::GetVelCmdResponse
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

(defclass all_in_one_local_planner_interface::GetVelCmd
  :super ros::object
  :slots ())

(setf (get all_in_one_local_planner_interface::GetVelCmd :md5sum-) "374e901b019d93b77917983b7fa0d888")
(setf (get all_in_one_local_planner_interface::GetVelCmd :datatype-) "all_in_one_local_planner_interface/GetVelCmd")
(setf (get all_in_one_local_planner_interface::GetVelCmd :request) all_in_one_local_planner_interface::GetVelCmdRequest)
(setf (get all_in_one_local_planner_interface::GetVelCmd :response) all_in_one_local_planner_interface::GetVelCmdResponse)

(defmethod all_in_one_local_planner_interface::GetVelCmdRequest
  (:response () (instance all_in_one_local_planner_interface::GetVelCmdResponse :init)))

(setf (get all_in_one_local_planner_interface::GetVelCmdRequest :md5sum-) "374e901b019d93b77917983b7fa0d888")
(setf (get all_in_one_local_planner_interface::GetVelCmdRequest :datatype-) "all_in_one_local_planner_interface/GetVelCmdRequest")
(setf (get all_in_one_local_planner_interface::GetVelCmdRequest :definition-)
      "# request fields
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

(setf (get all_in_one_local_planner_interface::GetVelCmdResponse :md5sum-) "374e901b019d93b77917983b7fa0d888")
(setf (get all_in_one_local_planner_interface::GetVelCmdResponse :datatype-) "all_in_one_local_planner_interface/GetVelCmdResponse")
(setf (get all_in_one_local_planner_interface::GetVelCmdResponse :definition-)
      "# request fields
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



(provide :all_in_one_local_planner_interface/GetVelCmd "374e901b019d93b77917983b7fa0d888")


