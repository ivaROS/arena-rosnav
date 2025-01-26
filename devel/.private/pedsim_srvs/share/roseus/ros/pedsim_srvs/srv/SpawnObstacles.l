;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::SpawnObstacles)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'SpawnObstacles (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::SPAWNOBSTACLES")
  (make-package "PEDSIM_SRVS::SPAWNOBSTACLES"))
(unless (find-package "PEDSIM_SRVS::SPAWNOBSTACLESREQUEST")
  (make-package "PEDSIM_SRVS::SPAWNOBSTACLESREQUEST"))
(unless (find-package "PEDSIM_SRVS::SPAWNOBSTACLESRESPONSE")
  (make-package "PEDSIM_SRVS::SPAWNOBSTACLESRESPONSE"))

(in-package "ROS")

(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))




(defclass pedsim_srvs::SpawnObstaclesRequest
  :super ros::object
  :slots (_obstacles ))

(defmethod pedsim_srvs::SpawnObstaclesRequest
  (:init
   (&key
    ((:obstacles __obstacles) ())
    )
   (send-super :init)
   (setq _obstacles __obstacles)
   self)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; pedsim_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pedsim_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pedsim_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance pedsim_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pedsim_srvs::SpawnObstaclesResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::SpawnObstaclesResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pedsim_srvs::SpawnObstacles
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::SpawnObstacles :md5sum-) "70ba2207d643e7ef873b86272b010369")
(setf (get pedsim_srvs::SpawnObstacles :datatype-) "pedsim_srvs/SpawnObstacles")
(setf (get pedsim_srvs::SpawnObstacles :request) pedsim_srvs::SpawnObstaclesRequest)
(setf (get pedsim_srvs::SpawnObstacles :response) pedsim_srvs::SpawnObstaclesResponse)

(defmethod pedsim_srvs::SpawnObstaclesRequest
  (:response () (instance pedsim_srvs::SpawnObstaclesResponse :init)))

(setf (get pedsim_srvs::SpawnObstaclesRequest :md5sum-) "70ba2207d643e7ef873b86272b010369")
(setf (get pedsim_srvs::SpawnObstaclesRequest :datatype-) "pedsim_srvs/SpawnObstaclesRequest")
(setf (get pedsim_srvs::SpawnObstaclesRequest :definition-)
      "pedsim_msgs/Obstacle[] obstacles

================================================================================
MSG: pedsim_msgs/Obstacle
string name
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
---
bool success

")

(setf (get pedsim_srvs::SpawnObstaclesResponse :md5sum-) "70ba2207d643e7ef873b86272b010369")
(setf (get pedsim_srvs::SpawnObstaclesResponse :datatype-) "pedsim_srvs/SpawnObstaclesResponse")
(setf (get pedsim_srvs::SpawnObstaclesResponse :definition-)
      "pedsim_msgs/Obstacle[] obstacles

================================================================================
MSG: pedsim_msgs/Obstacle
string name
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
---
bool success

")



(provide :pedsim_srvs/SpawnObstacles "70ba2207d643e7ef873b86272b010369")


