;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::Obstacle)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'Obstacle (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::OBSTACLE")
  (make-package "PEDSIM_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pedsim_msgs::Obstacle
  :super ros::object
  :slots (_name _type _pose _interaction_radius _yaml_path ))

(defmethod pedsim_msgs::Obstacle
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:interaction_radius __interaction_radius) 0.0)
    ((:yaml_path __yaml_path) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _pose __pose)
   (setq _interaction_radius (float __interaction_radius))
   (setq _yaml_path (string __yaml_path))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:interaction_radius
   (&optional __interaction_radius)
   (if __interaction_radius (setq _interaction_radius __interaction_radius)) _interaction_radius)
  (:yaml_path
   (&optional __yaml_path)
   (if __yaml_path (setq _yaml_path __yaml_path)) _yaml_path)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _interaction_radius
    8
    ;; string _yaml_path
    4 (length _yaml_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _interaction_radius
       (sys::poke _interaction_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _yaml_path
       (write-long (length _yaml_path) s) (princ _yaml_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _interaction_radius
     (setq _interaction_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _yaml_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaml_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pedsim_msgs::Obstacle :md5sum-) "350c1f538d3a1ef50c4420bdf8f2a426")
(setf (get pedsim_msgs::Obstacle :datatype-) "pedsim_msgs/Obstacle")
(setf (get pedsim_msgs::Obstacle :definition-)
      "string name
# type can be one of the following: \"shelf\"
string type
geometry_msgs/Pose pose
float64 interaction_radius
string yaml_path

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



(provide :pedsim_msgs/Obstacle "350c1f538d3a1ef50c4420bdf8f2a426")


