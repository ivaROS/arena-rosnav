;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::SpawnPed)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'SpawnPed (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::SPAWNPED")
  (make-package "PEDSIM_SRVS::SPAWNPED"))
(unless (find-package "PEDSIM_SRVS::SPAWNPEDREQUEST")
  (make-package "PEDSIM_SRVS::SPAWNPEDREQUEST"))
(unless (find-package "PEDSIM_SRVS::SPAWNPEDRESPONSE")
  (make-package "PEDSIM_SRVS::SPAWNPEDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass pedsim_srvs::SpawnPedRequest
  :super ros::object
  :slots (_id _pos _type _number_of_peds _waypoints ))

(defmethod pedsim_srvs::SpawnPedRequest
  (:init
   (&key
    ((:id __id) "")
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:type __type) 0)
    ((:number_of_peds __number_of_peds) 0)
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pos __pos)
   (setq _type (round __type))
   (setq _number_of_peds (round __number_of_peds))
   (setq _waypoints __waypoints)
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
  (:number_of_peds
   (&optional __number_of_peds)
   (if __number_of_peds (setq _number_of_peds __number_of_peds)) _number_of_peds)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; int16 _type
    2
    ;; int16 _number_of_peds
    2
    ;; geometry_msgs/Point[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; int16 _type
       (write-word _type s)
     ;; int16 _number_of_peds
       (write-word _number_of_peds s)
     ;; geometry_msgs/Point[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _number_of_peds
     (setq _number_of_peds (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Point[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pedsim_srvs::SpawnPedResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::SpawnPedResponse
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

(defclass pedsim_srvs::SpawnPed
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::SpawnPed :md5sum-) "dad6de4944e873f2a2559273751d6b69")
(setf (get pedsim_srvs::SpawnPed :datatype-) "pedsim_srvs/SpawnPed")
(setf (get pedsim_srvs::SpawnPed :request) pedsim_srvs::SpawnPedRequest)
(setf (get pedsim_srvs::SpawnPed :response) pedsim_srvs::SpawnPedResponse)

(defmethod pedsim_srvs::SpawnPedRequest
  (:response () (instance pedsim_srvs::SpawnPedResponse :init)))

(setf (get pedsim_srvs::SpawnPedRequest :md5sum-) "dad6de4944e873f2a2559273751d6b69")
(setf (get pedsim_srvs::SpawnPedRequest :datatype-) "pedsim_srvs/SpawnPedRequest")
(setf (get pedsim_srvs::SpawnPedRequest :definition-)
      "# Added by Ronja Gueldenring
# For spawning agents dynamically in pedsim and forwarding them to flatland
string id
geometry_msgs/Point pos
int16 type
int16 number_of_peds
geometry_msgs/Point[] waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get pedsim_srvs::SpawnPedResponse :md5sum-) "dad6de4944e873f2a2559273751d6b69")
(setf (get pedsim_srvs::SpawnPedResponse :datatype-) "pedsim_srvs/SpawnPedResponse")
(setf (get pedsim_srvs::SpawnPedResponse :definition-)
      "# Added by Ronja Gueldenring
# For spawning agents dynamically in pedsim and forwarding them to flatland
string id
geometry_msgs/Point pos
int16 type
int16 number_of_peds
geometry_msgs/Point[] waypoints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :pedsim_srvs/SpawnPed "dad6de4944e873f2a2559273751d6b69")


