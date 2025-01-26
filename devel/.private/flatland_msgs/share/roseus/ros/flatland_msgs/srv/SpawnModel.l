;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::SpawnModel)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'SpawnModel (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::SPAWNMODEL")
  (make-package "FLATLAND_MSGS::SPAWNMODEL"))
(unless (find-package "FLATLAND_MSGS::SPAWNMODELREQUEST")
  (make-package "FLATLAND_MSGS::SPAWNMODELREQUEST"))
(unless (find-package "FLATLAND_MSGS::SPAWNMODELRESPONSE")
  (make-package "FLATLAND_MSGS::SPAWNMODELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass flatland_msgs::SpawnModelRequest
  :super ros::object
  :slots (_yaml_path _name _ns _pose ))

(defmethod flatland_msgs::SpawnModelRequest
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

(defclass flatland_msgs::SpawnModelResponse
  :super ros::object
  :slots (_success _message ))

(defmethod flatland_msgs::SpawnModelResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass flatland_msgs::SpawnModel
  :super ros::object
  :slots ())

(setf (get flatland_msgs::SpawnModel :md5sum-) "952237af09cbedc354d376afc6d2fc71")
(setf (get flatland_msgs::SpawnModel :datatype-) "flatland_msgs/SpawnModel")
(setf (get flatland_msgs::SpawnModel :request) flatland_msgs::SpawnModelRequest)
(setf (get flatland_msgs::SpawnModel :response) flatland_msgs::SpawnModelResponse)

(defmethod flatland_msgs::SpawnModelRequest
  (:response () (instance flatland_msgs::SpawnModelResponse :init)))

(setf (get flatland_msgs::SpawnModelRequest :md5sum-) "952237af09cbedc354d376afc6d2fc71")
(setf (get flatland_msgs::SpawnModelRequest :datatype-) "flatland_msgs/SpawnModelRequest")
(setf (get flatland_msgs::SpawnModelRequest :definition-)
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
---
bool success
string message

")

(setf (get flatland_msgs::SpawnModelResponse :md5sum-) "952237af09cbedc354d376afc6d2fc71")
(setf (get flatland_msgs::SpawnModelResponse :datatype-) "flatland_msgs/SpawnModelResponse")
(setf (get flatland_msgs::SpawnModelResponse :definition-)
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
---
bool success
string message

")



(provide :flatland_msgs/SpawnModel "952237af09cbedc354d376afc6d2fc71")


