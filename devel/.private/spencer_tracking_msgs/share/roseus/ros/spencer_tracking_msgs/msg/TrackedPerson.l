;; Auto-generated. Do not edit!


(when (boundp 'spencer_tracking_msgs::TrackedPerson)
  (if (not (find-package "SPENCER_TRACKING_MSGS"))
    (make-package "SPENCER_TRACKING_MSGS"))
  (shadow 'TrackedPerson (find-package "SPENCER_TRACKING_MSGS")))
(unless (find-package "SPENCER_TRACKING_MSGS::TRACKEDPERSON")
  (make-package "SPENCER_TRACKING_MSGS::TRACKEDPERSON"))

(in-package "ROS")
;;//! \htmlinclude TrackedPerson.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass spencer_tracking_msgs::TrackedPerson
  :super ros::object
  :slots (_track_id _is_occluded _is_matched _detection_id _age _pose _twist ))

(defmethod spencer_tracking_msgs::TrackedPerson
  (:init
   (&key
    ((:track_id __track_id) "")
    ((:is_occluded __is_occluded) nil)
    ((:is_matched __is_matched) nil)
    ((:detection_id __detection_id) "")
    ((:age __age) (instance ros::time :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    )
   (send-super :init)
   (setq _track_id (string __track_id))
   (setq _is_occluded __is_occluded)
   (setq _is_matched __is_matched)
   (setq _detection_id (string __detection_id))
   (setq _age __age)
   (setq _pose __pose)
   (setq _twist __twist)
   self)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:is_occluded
   (&optional (__is_occluded :null))
   (if (not (eq __is_occluded :null)) (setq _is_occluded __is_occluded)) _is_occluded)
  (:is_matched
   (&optional (__is_matched :null))
   (if (not (eq __is_matched :null)) (setq _is_matched __is_matched)) _is_matched)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; string _track_id
    4 (length _track_id)
    ;; bool _is_occluded
    1
    ;; bool _is_matched
    1
    ;; string _detection_id
    4 (length _detection_id)
    ;; duration _age
    8
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _track_id
       (write-long (length _track_id) s) (princ _track_id s)
     ;; bool _is_occluded
       (if _is_occluded (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_matched
       (if _is_matched (write-byte -1 s) (write-byte 0 s))
     ;; string _detection_id
       (write-long (length _detection_id) s) (princ _detection_id s)
     ;; duration _age
       (write-long (send _age :sec) s) (write-long (send _age :nsec) s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _track_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _track_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_occluded
     (setq _is_occluded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_matched
     (setq _is_matched (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _detection_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detection_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _age
     (send _age :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _age :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get spencer_tracking_msgs::TrackedPerson :md5sum-) "dfee8dc4f56ab077cc2c1d8a3061db31")
(setf (get spencer_tracking_msgs::TrackedPerson :datatype-) "spencer_tracking_msgs/TrackedPerson")
(setf (get spencer_tracking_msgs::TrackedPerson :definition-)
      "# Message defining a tracked person
#

string      track_id        # unique identifier of the target, consistent over time
bool        is_occluded     # if the track is currently not observable in a physical way
bool        is_matched      # if the track is currently matched by a detection
string      detection_id    # id of the corresponding detection in the current cycle (undefined if occluded)
duration    age             # age of the track

# The following fields are extracted from the Kalman state x and its covariance C

geometry_msgs/PoseWithCovariance       pose   # pose of the track (z value and orientation might not be set, check if corresponding variance on diagonal is > 99999)

geometry_msgs/TwistWithCovariance   twist     # velocity of the track (z value and rotational velocities might not be set, check if corresponding variance on diagonal is > 99999)

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :spencer_tracking_msgs/TrackedPerson "dfee8dc4f56ab077cc2c1d8a3061db31")


