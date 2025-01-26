;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::MoveModel)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'MoveModel (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::MOVEMODEL")
  (make-package "FLATLAND_MSGS::MOVEMODEL"))
(unless (find-package "FLATLAND_MSGS::MOVEMODELREQUEST")
  (make-package "FLATLAND_MSGS::MOVEMODELREQUEST"))
(unless (find-package "FLATLAND_MSGS::MOVEMODELRESPONSE")
  (make-package "FLATLAND_MSGS::MOVEMODELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass flatland_msgs::MoveModelRequest
  :super ros::object
  :slots (_name _pose ))

(defmethod flatland_msgs::MoveModelRequest
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass flatland_msgs::MoveModelResponse
  :super ros::object
  :slots (_success _message ))

(defmethod flatland_msgs::MoveModelResponse
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

(defclass flatland_msgs::MoveModel
  :super ros::object
  :slots ())

(setf (get flatland_msgs::MoveModel :md5sum-) "47b5f16cf15e326c7400f4504d3a0f75")
(setf (get flatland_msgs::MoveModel :datatype-) "flatland_msgs/MoveModel")
(setf (get flatland_msgs::MoveModel :request) flatland_msgs::MoveModelRequest)
(setf (get flatland_msgs::MoveModel :response) flatland_msgs::MoveModelResponse)

(defmethod flatland_msgs::MoveModelRequest
  (:response () (instance flatland_msgs::MoveModelResponse :init)))

(setf (get flatland_msgs::MoveModelRequest :md5sum-) "47b5f16cf15e326c7400f4504d3a0f75")
(setf (get flatland_msgs::MoveModelRequest :datatype-) "flatland_msgs/MoveModelRequest")
(setf (get flatland_msgs::MoveModelRequest :definition-)
      "string name
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

(setf (get flatland_msgs::MoveModelResponse :md5sum-) "47b5f16cf15e326c7400f4504d3a0f75")
(setf (get flatland_msgs::MoveModelResponse :datatype-) "flatland_msgs/MoveModelResponse")
(setf (get flatland_msgs::MoveModelResponse :definition-)
      "string name
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



(provide :flatland_msgs/MoveModel "47b5f16cf15e326c7400f4504d3a0f75")


