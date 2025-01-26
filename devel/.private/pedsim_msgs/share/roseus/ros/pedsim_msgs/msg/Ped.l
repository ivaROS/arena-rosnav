;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::Ped)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'Ped (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::PED")
  (make-package "PEDSIM_MSGS::PED"))

(in-package "ROS")
;;//! \htmlinclude Ped.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pedsim_msgs::Ped
  :super ros::object
  :slots (_id _pos _type _yaml_file _number_of_peds _vmax _start_up_mode _wait_time _trigger_zone_radius _max_talking_distance _max_servicing_radius _chatting_probability _tell_story_probability _group_talking_probability _talking_and_walking_probability _requesting_service_probability _requesting_guide_probability _requesting_follower_probability _talking_base_time _tell_story_base_time _group_talking_base_time _talking_and_walking_base_time _receiving_service_base_time _requesting_service_base_time _force_factor_desired _force_factor_obstacle _force_factor_social _force_factor_robot _waypoints _waypoint_mode _configuration ))

(defmethod pedsim_msgs::Ped
  (:init
   (&key
    ((:id __id) "")
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:type __type) "")
    ((:yaml_file __yaml_file) "")
    ((:number_of_peds __number_of_peds) 0)
    ((:vmax __vmax) 0.0)
    ((:start_up_mode __start_up_mode) "")
    ((:wait_time __wait_time) 0.0)
    ((:trigger_zone_radius __trigger_zone_radius) 0.0)
    ((:max_talking_distance __max_talking_distance) 0.0)
    ((:max_servicing_radius __max_servicing_radius) 0.0)
    ((:chatting_probability __chatting_probability) 0.0)
    ((:tell_story_probability __tell_story_probability) 0.0)
    ((:group_talking_probability __group_talking_probability) 0.0)
    ((:talking_and_walking_probability __talking_and_walking_probability) 0.0)
    ((:requesting_service_probability __requesting_service_probability) 0.0)
    ((:requesting_guide_probability __requesting_guide_probability) 0.0)
    ((:requesting_follower_probability __requesting_follower_probability) 0.0)
    ((:talking_base_time __talking_base_time) 0.0)
    ((:tell_story_base_time __tell_story_base_time) 0.0)
    ((:group_talking_base_time __group_talking_base_time) 0.0)
    ((:talking_and_walking_base_time __talking_and_walking_base_time) 0.0)
    ((:receiving_service_base_time __receiving_service_base_time) 0.0)
    ((:requesting_service_base_time __requesting_service_base_time) 0.0)
    ((:force_factor_desired __force_factor_desired) 0.0)
    ((:force_factor_obstacle __force_factor_obstacle) 0.0)
    ((:force_factor_social __force_factor_social) 0.0)
    ((:force_factor_robot __force_factor_robot) 0.0)
    ((:waypoints __waypoints) ())
    ((:waypoint_mode __waypoint_mode) 0)
    ((:configuration __configuration) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pos __pos)
   (setq _type (string __type))
   (setq _yaml_file (string __yaml_file))
   (setq _number_of_peds (round __number_of_peds))
   (setq _vmax (float __vmax))
   (setq _start_up_mode (string __start_up_mode))
   (setq _wait_time (float __wait_time))
   (setq _trigger_zone_radius (float __trigger_zone_radius))
   (setq _max_talking_distance (float __max_talking_distance))
   (setq _max_servicing_radius (float __max_servicing_radius))
   (setq _chatting_probability (float __chatting_probability))
   (setq _tell_story_probability (float __tell_story_probability))
   (setq _group_talking_probability (float __group_talking_probability))
   (setq _talking_and_walking_probability (float __talking_and_walking_probability))
   (setq _requesting_service_probability (float __requesting_service_probability))
   (setq _requesting_guide_probability (float __requesting_guide_probability))
   (setq _requesting_follower_probability (float __requesting_follower_probability))
   (setq _talking_base_time (float __talking_base_time))
   (setq _tell_story_base_time (float __tell_story_base_time))
   (setq _group_talking_base_time (float __group_talking_base_time))
   (setq _talking_and_walking_base_time (float __talking_and_walking_base_time))
   (setq _receiving_service_base_time (float __receiving_service_base_time))
   (setq _requesting_service_base_time (float __requesting_service_base_time))
   (setq _force_factor_desired (float __force_factor_desired))
   (setq _force_factor_obstacle (float __force_factor_obstacle))
   (setq _force_factor_social (float __force_factor_social))
   (setq _force_factor_robot (float __force_factor_robot))
   (setq _waypoints __waypoints)
   (setq _waypoint_mode (round __waypoint_mode))
   (setq _configuration (string __configuration))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:yaml_file
   (&optional __yaml_file)
   (if __yaml_file (setq _yaml_file __yaml_file)) _yaml_file)
  (:number_of_peds
   (&optional __number_of_peds)
   (if __number_of_peds (setq _number_of_peds __number_of_peds)) _number_of_peds)
  (:vmax
   (&optional __vmax)
   (if __vmax (setq _vmax __vmax)) _vmax)
  (:start_up_mode
   (&optional __start_up_mode)
   (if __start_up_mode (setq _start_up_mode __start_up_mode)) _start_up_mode)
  (:wait_time
   (&optional __wait_time)
   (if __wait_time (setq _wait_time __wait_time)) _wait_time)
  (:trigger_zone_radius
   (&optional __trigger_zone_radius)
   (if __trigger_zone_radius (setq _trigger_zone_radius __trigger_zone_radius)) _trigger_zone_radius)
  (:max_talking_distance
   (&optional __max_talking_distance)
   (if __max_talking_distance (setq _max_talking_distance __max_talking_distance)) _max_talking_distance)
  (:max_servicing_radius
   (&optional __max_servicing_radius)
   (if __max_servicing_radius (setq _max_servicing_radius __max_servicing_radius)) _max_servicing_radius)
  (:chatting_probability
   (&optional __chatting_probability)
   (if __chatting_probability (setq _chatting_probability __chatting_probability)) _chatting_probability)
  (:tell_story_probability
   (&optional __tell_story_probability)
   (if __tell_story_probability (setq _tell_story_probability __tell_story_probability)) _tell_story_probability)
  (:group_talking_probability
   (&optional __group_talking_probability)
   (if __group_talking_probability (setq _group_talking_probability __group_talking_probability)) _group_talking_probability)
  (:talking_and_walking_probability
   (&optional __talking_and_walking_probability)
   (if __talking_and_walking_probability (setq _talking_and_walking_probability __talking_and_walking_probability)) _talking_and_walking_probability)
  (:requesting_service_probability
   (&optional __requesting_service_probability)
   (if __requesting_service_probability (setq _requesting_service_probability __requesting_service_probability)) _requesting_service_probability)
  (:requesting_guide_probability
   (&optional __requesting_guide_probability)
   (if __requesting_guide_probability (setq _requesting_guide_probability __requesting_guide_probability)) _requesting_guide_probability)
  (:requesting_follower_probability
   (&optional __requesting_follower_probability)
   (if __requesting_follower_probability (setq _requesting_follower_probability __requesting_follower_probability)) _requesting_follower_probability)
  (:talking_base_time
   (&optional __talking_base_time)
   (if __talking_base_time (setq _talking_base_time __talking_base_time)) _talking_base_time)
  (:tell_story_base_time
   (&optional __tell_story_base_time)
   (if __tell_story_base_time (setq _tell_story_base_time __tell_story_base_time)) _tell_story_base_time)
  (:group_talking_base_time
   (&optional __group_talking_base_time)
   (if __group_talking_base_time (setq _group_talking_base_time __group_talking_base_time)) _group_talking_base_time)
  (:talking_and_walking_base_time
   (&optional __talking_and_walking_base_time)
   (if __talking_and_walking_base_time (setq _talking_and_walking_base_time __talking_and_walking_base_time)) _talking_and_walking_base_time)
  (:receiving_service_base_time
   (&optional __receiving_service_base_time)
   (if __receiving_service_base_time (setq _receiving_service_base_time __receiving_service_base_time)) _receiving_service_base_time)
  (:requesting_service_base_time
   (&optional __requesting_service_base_time)
   (if __requesting_service_base_time (setq _requesting_service_base_time __requesting_service_base_time)) _requesting_service_base_time)
  (:force_factor_desired
   (&optional __force_factor_desired)
   (if __force_factor_desired (setq _force_factor_desired __force_factor_desired)) _force_factor_desired)
  (:force_factor_obstacle
   (&optional __force_factor_obstacle)
   (if __force_factor_obstacle (setq _force_factor_obstacle __force_factor_obstacle)) _force_factor_obstacle)
  (:force_factor_social
   (&optional __force_factor_social)
   (if __force_factor_social (setq _force_factor_social __force_factor_social)) _force_factor_social)
  (:force_factor_robot
   (&optional __force_factor_robot)
   (if __force_factor_robot (setq _force_factor_robot __force_factor_robot)) _force_factor_robot)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:waypoint_mode
   (&optional __waypoint_mode)
   (if __waypoint_mode (setq _waypoint_mode __waypoint_mode)) _waypoint_mode)
  (:configuration
   (&optional __configuration)
   (if __configuration (setq _configuration __configuration)) _configuration)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; string _type
    4 (length _type)
    ;; string _yaml_file
    4 (length _yaml_file)
    ;; int16 _number_of_peds
    2
    ;; float64 _vmax
    8
    ;; string _start_up_mode
    4 (length _start_up_mode)
    ;; float64 _wait_time
    8
    ;; float64 _trigger_zone_radius
    8
    ;; float64 _max_talking_distance
    8
    ;; float64 _max_servicing_radius
    8
    ;; float64 _chatting_probability
    8
    ;; float64 _tell_story_probability
    8
    ;; float64 _group_talking_probability
    8
    ;; float64 _talking_and_walking_probability
    8
    ;; float64 _requesting_service_probability
    8
    ;; float64 _requesting_guide_probability
    8
    ;; float64 _requesting_follower_probability
    8
    ;; float64 _talking_base_time
    8
    ;; float64 _tell_story_base_time
    8
    ;; float64 _group_talking_base_time
    8
    ;; float64 _talking_and_walking_base_time
    8
    ;; float64 _receiving_service_base_time
    8
    ;; float64 _requesting_service_base_time
    8
    ;; float64 _force_factor_desired
    8
    ;; float64 _force_factor_obstacle
    8
    ;; float64 _force_factor_social
    8
    ;; float64 _force_factor_robot
    8
    ;; geometry_msgs/Point[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; int16 _waypoint_mode
    2
    ;; string _configuration
    4 (length _configuration)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _yaml_file
       (write-long (length _yaml_file) s) (princ _yaml_file s)
     ;; int16 _number_of_peds
       (write-word _number_of_peds s)
     ;; float64 _vmax
       (sys::poke _vmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _start_up_mode
       (write-long (length _start_up_mode) s) (princ _start_up_mode s)
     ;; float64 _wait_time
       (sys::poke _wait_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trigger_zone_radius
       (sys::poke _trigger_zone_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_talking_distance
       (sys::poke _max_talking_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_servicing_radius
       (sys::poke _max_servicing_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _chatting_probability
       (sys::poke _chatting_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tell_story_probability
       (sys::poke _tell_story_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _group_talking_probability
       (sys::poke _group_talking_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _talking_and_walking_probability
       (sys::poke _talking_and_walking_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _requesting_service_probability
       (sys::poke _requesting_service_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _requesting_guide_probability
       (sys::poke _requesting_guide_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _requesting_follower_probability
       (sys::poke _requesting_follower_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _talking_base_time
       (sys::poke _talking_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tell_story_base_time
       (sys::poke _tell_story_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _group_talking_base_time
       (sys::poke _group_talking_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _talking_and_walking_base_time
       (sys::poke _talking_and_walking_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _receiving_service_base_time
       (sys::poke _receiving_service_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _requesting_service_base_time
       (sys::poke _requesting_service_base_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_factor_desired
       (sys::poke _force_factor_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_factor_obstacle
       (sys::poke _force_factor_obstacle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_factor_social
       (sys::poke _force_factor_social (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _force_factor_robot
       (sys::poke _force_factor_robot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; int16 _waypoint_mode
       (write-word _waypoint_mode s)
     ;; string _configuration
       (write-long (length _configuration) s) (princ _configuration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _yaml_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaml_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _number_of_peds
     (setq _number_of_peds (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _vmax
     (setq _vmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _start_up_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_up_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _wait_time
     (setq _wait_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trigger_zone_radius
     (setq _trigger_zone_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_talking_distance
     (setq _max_talking_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_servicing_radius
     (setq _max_servicing_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _chatting_probability
     (setq _chatting_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tell_story_probability
     (setq _tell_story_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _group_talking_probability
     (setq _group_talking_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _talking_and_walking_probability
     (setq _talking_and_walking_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _requesting_service_probability
     (setq _requesting_service_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _requesting_guide_probability
     (setq _requesting_guide_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _requesting_follower_probability
     (setq _requesting_follower_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _talking_base_time
     (setq _talking_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tell_story_base_time
     (setq _tell_story_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _group_talking_base_time
     (setq _group_talking_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _talking_and_walking_base_time
     (setq _talking_and_walking_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _receiving_service_base_time
     (setq _receiving_service_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _requesting_service_base_time
     (setq _requesting_service_base_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_factor_desired
     (setq _force_factor_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_factor_obstacle
     (setq _force_factor_obstacle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_factor_social
     (setq _force_factor_social (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _force_factor_robot
     (setq _force_factor_robot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int16 _waypoint_mode
     (setq _waypoint_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _configuration
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _configuration (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pedsim_msgs::Ped :md5sum-) "d8575a29ff9a6fbcc93400a28e9925d4")
(setf (get pedsim_msgs::Ped :datatype-) "pedsim_msgs/Ped")
(setf (get pedsim_msgs::Ped :definition-)
      "# Added by Ronja Gueldenring
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

")



(provide :pedsim_msgs/Ped "d8575a29ff9a6fbcc93400a28e9925d4")


