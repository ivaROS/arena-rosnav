;; Auto-generated. Do not edit!


(when (boundp 'spencer_tracking_msgs::DetectedPerson)
  (if (not (find-package "SPENCER_TRACKING_MSGS"))
    (make-package "SPENCER_TRACKING_MSGS"))
  (shadow 'DetectedPerson (find-package "SPENCER_TRACKING_MSGS")))
(unless (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON")
  (make-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))

(in-package "ROS")
;;//! \htmlinclude DetectedPerson.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*MODALITY_GENERIC_LASER_2D*" (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(shadow '*MODALITY_GENERIC_LASER_2D* (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(defconstant spencer_tracking_msgs::DetectedPerson::*MODALITY_GENERIC_LASER_2D* "laser2d")
(intern "*MODALITY_GENERIC_LASER_3D*" (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(shadow '*MODALITY_GENERIC_LASER_3D* (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(defconstant spencer_tracking_msgs::DetectedPerson::*MODALITY_GENERIC_LASER_3D* "laser3d")
(intern "*MODALITY_GENERIC_MONOCULAR_VISION*" (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(shadow '*MODALITY_GENERIC_MONOCULAR_VISION* (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(defconstant spencer_tracking_msgs::DetectedPerson::*MODALITY_GENERIC_MONOCULAR_VISION* "mono")
(intern "*MODALITY_GENERIC_STEREO_VISION*" (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(shadow '*MODALITY_GENERIC_STEREO_VISION* (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(defconstant spencer_tracking_msgs::DetectedPerson::*MODALITY_GENERIC_STEREO_VISION* "stereo")
(intern "*MODALITY_GENERIC_RGBD*" (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(shadow '*MODALITY_GENERIC_RGBD* (find-package "SPENCER_TRACKING_MSGS::DETECTEDPERSON"))
(defconstant spencer_tracking_msgs::DetectedPerson::*MODALITY_GENERIC_RGBD* "rgbd")

(defun spencer_tracking_msgs::DetectedPerson-to-symbol (const)
  (cond
        (t nil)))

(defclass spencer_tracking_msgs::DetectedPerson
  :super ros::object
  :slots (_detection_id _confidence _pose _modality ))

(defmethod spencer_tracking_msgs::DetectedPerson
  (:init
   (&key
    ((:detection_id __detection_id) "")
    ((:confidence __confidence) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:modality __modality) "")
    )
   (send-super :init)
   (setq _detection_id (string __detection_id))
   (setq _confidence (float __confidence))
   (setq _pose __pose)
   (setq _modality (string __modality))
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:modality
   (&optional __modality)
   (if __modality (setq _modality __modality)) _modality)
  (:serialization-length
   ()
   (+
    ;; string _detection_id
    4 (length _detection_id)
    ;; float64 _confidence
    8
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; string _modality
    4 (length _modality)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _detection_id
       (write-long (length _detection_id) s) (princ _detection_id s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; string _modality
       (write-long (length _modality) s) (princ _modality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _detection_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detection_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _modality
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modality (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get spencer_tracking_msgs::DetectedPerson :md5sum-) "980131d8ea4fa705580171b807cdbaca")
(setf (get spencer_tracking_msgs::DetectedPerson :datatype-) "spencer_tracking_msgs/DetectedPerson")
(setf (get spencer_tracking_msgs::DetectedPerson :definition-)
      "# Message describing a detection of a person
#

# Unique id of the detection, monotonically increasing over time
string          detection_id

# (Pseudo-)probabilistic value between 0.0 and 1.0 describing the detector's confidence in the detection
float64         confidence

# 3D pose (position + orientation) of the *center* of the detection
# check covariance to see which dimensions are actually set! unset dimensions shall have a covariance > 9999
geometry_msgs/PoseWithCovariance    pose    

# Sensor modality / detector type, see example constants below. 
# used e.g. later in tracking to check which tracks have been visually confirmed
string          modality            

                                    
string          MODALITY_GENERIC_LASER_2D = laser2d
string          MODALITY_GENERIC_LASER_3D = laser3d
string          MODALITY_GENERIC_MONOCULAR_VISION = mono
string          MODALITY_GENERIC_STEREO_VISION = stereo
string          MODALITY_GENERIC_RGBD = rgbd

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



(provide :spencer_tracking_msgs/DetectedPerson "980131d8ea4fa705580171b807cdbaca")


