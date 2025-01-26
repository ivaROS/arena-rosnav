;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::SpawnPeds)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'SpawnPeds (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::SPAWNPEDS")
  (make-package "PEDSIM_SRVS::SPAWNPEDS"))
(unless (find-package "PEDSIM_SRVS::SPAWNPEDSREQUEST")
  (make-package "PEDSIM_SRVS::SPAWNPEDSREQUEST"))
(unless (find-package "PEDSIM_SRVS::SPAWNPEDSRESPONSE")
  (make-package "PEDSIM_SRVS::SPAWNPEDSRESPONSE"))

(in-package "ROS")

(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))




(defclass pedsim_srvs::SpawnPedsRequest
  :super ros::object
  :slots (_peds ))

(defmethod pedsim_srvs::SpawnPedsRequest
  (:init
   (&key
    ((:peds __peds) ())
    )
   (send-super :init)
   (setq _peds __peds)
   self)
  (:peds
   (&rest __peds)
   (if (keywordp (car __peds))
       (send* _peds __peds)
     (progn
       (if __peds (setq _peds (car __peds)))
       _peds)))
  (:serialization-length
   ()
   (+
    ;; pedsim_msgs/Ped[] _peds
    (apply #'+ (send-all _peds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pedsim_msgs/Ped[] _peds
     (write-long (length _peds) s)
     (dolist (elem _peds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pedsim_msgs/Ped[] _peds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peds (let (r) (dotimes (i n) (push (instance pedsim_msgs::Ped :init) r)) r))
     (dolist (elem- _peds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pedsim_srvs::SpawnPedsResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::SpawnPedsResponse
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

(defclass pedsim_srvs::SpawnPeds
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::SpawnPeds :md5sum-) "1a418c9646b48a91fc86313fb280ad3f")
(setf (get pedsim_srvs::SpawnPeds :datatype-) "pedsim_srvs/SpawnPeds")
(setf (get pedsim_srvs::SpawnPeds :request) pedsim_srvs::SpawnPedsRequest)
(setf (get pedsim_srvs::SpawnPeds :response) pedsim_srvs::SpawnPedsResponse)

(defmethod pedsim_srvs::SpawnPedsRequest
  (:response () (instance pedsim_srvs::SpawnPedsResponse :init)))

(setf (get pedsim_srvs::SpawnPedsRequest :md5sum-) "1a418c9646b48a91fc86313fb280ad3f")
(setf (get pedsim_srvs::SpawnPedsRequest :datatype-) "pedsim_srvs/SpawnPedsRequest")
(setf (get pedsim_srvs::SpawnPedsRequest :definition-)
      "# Added by Ronja Gueldenring
# For spawning an agent array dynamically in pedsim and forwarding them to flatland
pedsim_msgs/Ped[] peds

================================================================================
MSG: pedsim_msgs/Ped
# Added by Ronja Gueldenring
# For spawning agents dynamically in pedsim and forwarding them to flatland
string id
geometry_msgs/Point pos
string type  # \"adult\", \"child\", \"elder\", \"vehicle\", \"servicerobot\"
string yaml_file
int16 number_of_peds
float64 vmax

string start_up_mode  # \"default\", \"wait_timer\", \"trigger_zone\"
float64 wait_time
float64 trigger_zone_radius

float64 max_talking_distance
float64 max_servicing_radius

float64 chatting_probability
float64 tell_story_probability
float64 group_talking_probability
float64 talking_and_walking_probability
float64 requesting_service_probability
float64 requesting_guide_probability
float64 requesting_follower_probability

float64 talking_base_time
float64 tell_story_base_time
float64 group_talking_base_time
float64 talking_and_walking_base_time
float64 receiving_service_base_time
float64 requesting_service_base_time

# forces
float64 force_factor_desired
float64 force_factor_obstacle
float64 force_factor_social
float64 force_factor_robot

geometry_msgs/Point[] waypoints
int16 waypoint_mode

string configuration
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get pedsim_srvs::SpawnPedsResponse :md5sum-) "1a418c9646b48a91fc86313fb280ad3f")
(setf (get pedsim_srvs::SpawnPedsResponse :datatype-) "pedsim_srvs/SpawnPedsResponse")
(setf (get pedsim_srvs::SpawnPedsResponse :definition-)
      "# Added by Ronja Gueldenring
# For spawning an agent array dynamically in pedsim and forwarding them to flatland
pedsim_msgs/Ped[] peds

================================================================================
MSG: pedsim_msgs/Ped
# Added by Ronja Gueldenring
# For spawning agents dynamically in pedsim and forwarding them to flatland
string id
geometry_msgs/Point pos
string type  # \"adult\", \"child\", \"elder\", \"vehicle\", \"servicerobot\"
string yaml_file
int16 number_of_peds
float64 vmax

string start_up_mode  # \"default\", \"wait_timer\", \"trigger_zone\"
float64 wait_time
float64 trigger_zone_radius

float64 max_talking_distance
float64 max_servicing_radius

float64 chatting_probability
float64 tell_story_probability
float64 group_talking_probability
float64 talking_and_walking_probability
float64 requesting_service_probability
float64 requesting_guide_probability
float64 requesting_follower_probability

float64 talking_base_time
float64 tell_story_base_time
float64 group_talking_base_time
float64 talking_and_walking_base_time
float64 receiving_service_base_time
float64 requesting_service_base_time

# forces
float64 force_factor_desired
float64 force_factor_obstacle
float64 force_factor_social
float64 force_factor_robot

geometry_msgs/Point[] waypoints
int16 waypoint_mode

string configuration
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :pedsim_srvs/SpawnPeds "1a418c9646b48a91fc86313fb280ad3f")


