;; Auto-generated. Do not edit!


(when (boundp 'cob_srvs::Dock)
  (if (not (find-package "COB_SRVS"))
    (make-package "COB_SRVS"))
  (shadow 'Dock (find-package "COB_SRVS")))
(unless (find-package "COB_SRVS::DOCK")
  (make-package "COB_SRVS::DOCK"))
(unless (find-package "COB_SRVS::DOCKREQUEST")
  (make-package "COB_SRVS::DOCKREQUEST"))
(unless (find-package "COB_SRVS::DOCKRESPONSE")
  (make-package "COB_SRVS::DOCKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass cob_srvs::DockRequest
  :super ros::object
  :slots (_frame_id _poses _stop_topic _stop_message_field _stop_compare_value _dist_threshold ))

(defmethod cob_srvs::DockRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:poses __poses) ())
    ((:stop_topic __stop_topic) "")
    ((:stop_message_field __stop_message_field) "")
    ((:stop_compare_value __stop_compare_value) nil)
    ((:dist_threshold __dist_threshold) 0.0)
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _poses __poses)
   (setq _stop_topic (string __stop_topic))
   (setq _stop_message_field (string __stop_message_field))
   (setq _stop_compare_value __stop_compare_value)
   (setq _dist_threshold (float __dist_threshold))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:stop_topic
   (&optional __stop_topic)
   (if __stop_topic (setq _stop_topic __stop_topic)) _stop_topic)
  (:stop_message_field
   (&optional __stop_message_field)
   (if __stop_message_field (setq _stop_message_field __stop_message_field)) _stop_message_field)
  (:stop_compare_value
   (&optional (__stop_compare_value :null))
   (if (not (eq __stop_compare_value :null)) (setq _stop_compare_value __stop_compare_value)) _stop_compare_value)
  (:dist_threshold
   (&optional __dist_threshold)
   (if __dist_threshold (setq _dist_threshold __dist_threshold)) _dist_threshold)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; string _stop_topic
    4 (length _stop_topic)
    ;; string _stop_message_field
    4 (length _stop_message_field)
    ;; bool _stop_compare_value
    1
    ;; float32 _dist_threshold
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; string _stop_topic
       (write-long (length _stop_topic) s) (princ _stop_topic s)
     ;; string _stop_message_field
       (write-long (length _stop_message_field) s) (princ _stop_message_field s)
     ;; bool _stop_compare_value
       (if _stop_compare_value (write-byte -1 s) (write-byte 0 s))
     ;; float32 _dist_threshold
       (sys::poke _dist_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _stop_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stop_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _stop_message_field
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stop_message_field (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _stop_compare_value
     (setq _stop_compare_value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _dist_threshold
     (setq _dist_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cob_srvs::DockResponse
  :super ros::object
  :slots (_success _message ))

(defmethod cob_srvs::DockResponse
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

(defclass cob_srvs::Dock
  :super ros::object
  :slots ())

(setf (get cob_srvs::Dock :md5sum-) "c80e493964d9d49f37dbb6ac87283f34")
(setf (get cob_srvs::Dock :datatype-) "cob_srvs/Dock")
(setf (get cob_srvs::Dock :request) cob_srvs::DockRequest)
(setf (get cob_srvs::Dock :response) cob_srvs::DockResponse)

(defmethod cob_srvs::DockRequest
  (:response () (instance cob_srvs::DockResponse :init)))

(setf (get cob_srvs::DockRequest :md5sum-) "c80e493964d9d49f37dbb6ac87283f34")
(setf (get cob_srvs::DockRequest :datatype-) "cob_srvs/DockRequest")
(setf (get cob_srvs::DockRequest :definition-)
      "string frame_id
geometry_msgs/Pose[] poses
string stop_topic
string stop_message_field
bool stop_compare_value
float32 dist_threshold

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
string message

")

(setf (get cob_srvs::DockResponse :md5sum-) "c80e493964d9d49f37dbb6ac87283f34")
(setf (get cob_srvs::DockResponse :datatype-) "cob_srvs/DockResponse")
(setf (get cob_srvs::DockResponse :definition-)
      "string frame_id
geometry_msgs/Pose[] poses
string stop_topic
string stop_message_field
bool stop_compare_value
float32 dist_threshold

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
string message

")



(provide :cob_srvs/Dock "c80e493964d9d49f37dbb6ac87283f34")


