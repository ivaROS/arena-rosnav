;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::SpawnModels)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'SpawnModels (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::SPAWNMODELS")
  (make-package "FLATLAND_MSGS::SPAWNMODELS"))
(unless (find-package "FLATLAND_MSGS::SPAWNMODELSREQUEST")
  (make-package "FLATLAND_MSGS::SPAWNMODELSREQUEST"))
(unless (find-package "FLATLAND_MSGS::SPAWNMODELSRESPONSE")
  (make-package "FLATLAND_MSGS::SPAWNMODELSRESPONSE"))

(in-package "ROS")





(defclass flatland_msgs::SpawnModelsRequest
  :super ros::object
  :slots (_models ))

(defmethod flatland_msgs::SpawnModelsRequest
  (:init
   (&key
    ((:models __models) ())
    )
   (send-super :init)
   (setq _models __models)
   self)
  (:models
   (&rest __models)
   (if (keywordp (car __models))
       (send* _models __models)
     (progn
       (if __models (setq _models (car __models)))
       _models)))
  (:serialization-length
   ()
   (+
    ;; flatland_msgs/Model[] _models
    (apply #'+ (send-all _models :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; flatland_msgs/Model[] _models
     (write-long (length _models) s)
     (dolist (elem _models)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; flatland_msgs/Model[] _models
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _models (let (r) (dotimes (i n) (push (instance flatland_msgs::Model :init) r)) r))
     (dolist (elem- _models)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass flatland_msgs::SpawnModelsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod flatland_msgs::SpawnModelsResponse
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

(defclass flatland_msgs::SpawnModels
  :super ros::object
  :slots ())

(setf (get flatland_msgs::SpawnModels :md5sum-) "25781a684ae71b6364dc4642097d5ed2")
(setf (get flatland_msgs::SpawnModels :datatype-) "flatland_msgs/SpawnModels")
(setf (get flatland_msgs::SpawnModels :request) flatland_msgs::SpawnModelsRequest)
(setf (get flatland_msgs::SpawnModels :response) flatland_msgs::SpawnModelsResponse)

(defmethod flatland_msgs::SpawnModelsRequest
  (:response () (instance flatland_msgs::SpawnModelsResponse :init)))

(setf (get flatland_msgs::SpawnModelsRequest :md5sum-) "25781a684ae71b6364dc4642097d5ed2")
(setf (get flatland_msgs::SpawnModelsRequest :datatype-) "flatland_msgs/SpawnModelsRequest")
(setf (get flatland_msgs::SpawnModelsRequest :definition-)
      "flatland_msgs/Model[] models

================================================================================
MSG: flatland_msgs/Model
string yaml_path
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

(setf (get flatland_msgs::SpawnModelsResponse :md5sum-) "25781a684ae71b6364dc4642097d5ed2")
(setf (get flatland_msgs::SpawnModelsResponse :datatype-) "flatland_msgs/SpawnModelsResponse")
(setf (get flatland_msgs::SpawnModelsResponse :definition-)
      "flatland_msgs/Model[] models

================================================================================
MSG: flatland_msgs/Model
string yaml_path
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



(provide :flatland_msgs/SpawnModels "25781a684ae71b6364dc4642097d5ed2")


