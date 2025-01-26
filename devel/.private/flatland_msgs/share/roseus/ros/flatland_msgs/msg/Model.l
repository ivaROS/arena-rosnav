;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::Model)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'Model (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::MODEL")
  (make-package "FLATLAND_MSGS::MODEL"))

(in-package "ROS")
;;//! \htmlinclude Model.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass flatland_msgs::Model
  :super ros::object
  :slots (_yaml_path _name _ns _pose ))

(defmethod flatland_msgs::Model
  (:init
   (&key
    ((:yaml_path __yaml_path) "")
    ((:name __name) "")
    ((:ns __ns) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _yaml_path (string __yaml_path))
   (setq _name (string __name))
   (setq _ns (string __ns))
   (setq _pose __pose)
   self)
  (:yaml_path
   (&optional __yaml_path)
   (if __yaml_path (setq _yaml_path __yaml_path)) _yaml_path)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _yaml_path
    4 (length _yaml_path)
    ;; string _name
    4 (length _name)
    ;; string _ns
    4 (length _ns)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _yaml_path
       (write-long (length _yaml_path) s) (princ _yaml_path s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _yaml_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaml_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get flatland_msgs::Model :md5sum-) "80a53491758229753f499a612e2e7065")
(setf (get flatland_msgs::Model :datatype-) "flatland_msgs/Model")
(setf (get flatland_msgs::Model :definition-)
      "string yaml_path
string name
string ns
geometry_msgs/Pose2D pose
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :flatland_msgs/Model "80a53491758229753f499a612e2e7065")


