;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::SpawnWalls)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'SpawnWalls (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::SPAWNWALLS")
  (make-package "PEDSIM_SRVS::SPAWNWALLS"))
(unless (find-package "PEDSIM_SRVS::SPAWNWALLSREQUEST")
  (make-package "PEDSIM_SRVS::SPAWNWALLSREQUEST"))
(unless (find-package "PEDSIM_SRVS::SPAWNWALLSRESPONSE")
  (make-package "PEDSIM_SRVS::SPAWNWALLSRESPONSE"))

(in-package "ROS")

(if (not (find-package "PEDSIM_MSGS"))
  (ros::roseus-add-msgs "pedsim_msgs"))




(defclass pedsim_srvs::SpawnWallsRequest
  :super ros::object
  :slots (_walls ))

(defmethod pedsim_srvs::SpawnWallsRequest
  (:init
   (&key
    ((:walls __walls) ())
    )
   (send-super :init)
   (setq _walls __walls)
   self)
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:serialization-length
   ()
   (+
    ;; pedsim_msgs/Wall[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pedsim_msgs/Wall[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pedsim_msgs/Wall[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance pedsim_msgs::Wall :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pedsim_srvs::SpawnWallsResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::SpawnWallsResponse
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

(defclass pedsim_srvs::SpawnWalls
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::SpawnWalls :md5sum-) "9b670e9e5b58056b6a66595c998a154d")
(setf (get pedsim_srvs::SpawnWalls :datatype-) "pedsim_srvs/SpawnWalls")
(setf (get pedsim_srvs::SpawnWalls :request) pedsim_srvs::SpawnWallsRequest)
(setf (get pedsim_srvs::SpawnWalls :response) pedsim_srvs::SpawnWallsResponse)

(defmethod pedsim_srvs::SpawnWallsRequest
  (:response () (instance pedsim_srvs::SpawnWallsResponse :init)))

(setf (get pedsim_srvs::SpawnWallsRequest :md5sum-) "9b670e9e5b58056b6a66595c998a154d")
(setf (get pedsim_srvs::SpawnWallsRequest :datatype-) "pedsim_srvs/SpawnWallsRequest")
(setf (get pedsim_srvs::SpawnWallsRequest :definition-)
      "# Junhui Li
# info the pedsim_ros the position of static obstacles
pedsim_msgs/Wall[] walls

================================================================================
MSG: pedsim_msgs/Wall
# A line obstacle in the simulator.

geometry_msgs/Point start
geometry_msgs/Point end
uint8 layer
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get pedsim_srvs::SpawnWallsResponse :md5sum-) "9b670e9e5b58056b6a66595c998a154d")
(setf (get pedsim_srvs::SpawnWallsResponse :datatype-) "pedsim_srvs/SpawnWallsResponse")
(setf (get pedsim_srvs::SpawnWallsResponse :definition-)
      "# Junhui Li
# info the pedsim_ros the position of static obstacles
pedsim_msgs/Wall[] walls

================================================================================
MSG: pedsim_msgs/Wall
# A line obstacle in the simulator.

geometry_msgs/Point start
geometry_msgs/Point end
uint8 layer
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :pedsim_srvs/SpawnWalls "9b670e9e5b58056b6a66595c998a154d")


