;; Auto-generated. Do not edit!


(when (boundp 'spencer_tracking_msgs::TrackedGroup)
  (if (not (find-package "SPENCER_TRACKING_MSGS"))
    (make-package "SPENCER_TRACKING_MSGS"))
  (shadow 'TrackedGroup (find-package "SPENCER_TRACKING_MSGS")))
(unless (find-package "SPENCER_TRACKING_MSGS::TRACKEDGROUP")
  (make-package "SPENCER_TRACKING_MSGS::TRACKEDGROUP"))

(in-package "ROS")
;;//! \htmlinclude TrackedGroup.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass spencer_tracking_msgs::TrackedGroup
  :super ros::object
  :slots (_group_id _age _centerOfGravity _track_ids ))

(defmethod spencer_tracking_msgs::TrackedGroup
  (:init
   (&key
    ((:group_id __group_id) "")
    ((:age __age) (instance ros::time :init))
    ((:centerOfGravity __centerOfGravity) (instance geometry_msgs::PoseWithCovariance :init))
    ((:track_ids __track_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _group_id (string __group_id))
   (setq _age __age)
   (setq _centerOfGravity __centerOfGravity)
   (setq _track_ids __track_ids)
   self)
  (:group_id
   (&optional __group_id)
   (if __group_id (setq _group_id __group_id)) _group_id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:centerOfGravity
   (&rest __centerOfGravity)
   (if (keywordp (car __centerOfGravity))
       (send* _centerOfGravity __centerOfGravity)
     (progn
       (if __centerOfGravity (setq _centerOfGravity (car __centerOfGravity)))
       _centerOfGravity)))
  (:track_ids
   (&optional __track_ids)
   (if __track_ids (setq _track_ids __track_ids)) _track_ids)
  (:serialization-length
   ()
   (+
    ;; string _group_id
    4 (length _group_id)
    ;; duration _age
    8
    ;; geometry_msgs/PoseWithCovariance _centerOfGravity
    (send _centerOfGravity :serialization-length)
    ;; string[] _track_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _track_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_id
       (write-long (length _group_id) s) (princ _group_id s)
     ;; duration _age
       (write-long (send _age :sec) s) (write-long (send _age :nsec) s)
     ;; geometry_msgs/PoseWithCovariance _centerOfGravity
       (send _centerOfGravity :serialize s)
     ;; string[] _track_ids
     (write-long (length _track_ids) s)
     (dolist (elem _track_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _age
     (send _age :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _age :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovariance _centerOfGravity
     (send _centerOfGravity :deserialize buf ptr-) (incf ptr- (send _centerOfGravity :serialization-length))
   ;; string[] _track_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _track_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get spencer_tracking_msgs::TrackedGroup :md5sum-) "307666ffcb71239d6f69e386ce760e7a")
(setf (get spencer_tracking_msgs::TrackedGroup :datatype-) "spencer_tracking_msgs/TrackedGroup")
(setf (get spencer_tracking_msgs::TrackedGroup :definition-)
      "# Message defining a tracked group
#

string      group_id        # unique identifier of the target, consistent over time

duration    age             # age of the group

geometry_msgs/PoseWithCovariance    centerOfGravity   # mean and covariance of the group (calculated from its person tracks)

string[]    track_ids       # IDs of the tracked persons in this group. See srl_tracking_msgs/TrackedPersons
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :spencer_tracking_msgs/TrackedGroup "307666ffcb71239d6f69e386ce760e7a")


