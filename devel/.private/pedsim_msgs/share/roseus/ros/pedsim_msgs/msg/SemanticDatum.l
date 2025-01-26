;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::SemanticDatum)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'SemanticDatum (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::SEMANTICDATUM")
  (make-package "PEDSIM_MSGS::SEMANTICDATUM"))

(in-package "ROS")
;;//! \htmlinclude SemanticDatum.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pedsim_msgs::SemanticDatum
  :super ros::object
  :slots (_location _evidence ))

(defmethod pedsim_msgs::SemanticDatum
  (:init
   (&key
    ((:location __location) (instance geometry_msgs::Point :init))
    ((:evidence __evidence) 0.0)
    )
   (send-super :init)
   (setq _location __location)
   (setq _evidence (float __evidence))
   self)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:evidence
   (&optional __evidence)
   (if __evidence (setq _evidence __evidence)) _evidence)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _location
    (send _location :serialization-length)
    ;; float32 _evidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _location
       (send _location :serialize s)
     ;; float32 _evidence
       (sys::poke _evidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; float32 _evidence
     (setq _evidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pedsim_msgs::SemanticDatum :md5sum-) "ad0a2aaed128f76f0b996bf1dd0aa14d")
(setf (get pedsim_msgs::SemanticDatum :datatype-) "pedsim_msgs/SemanticDatum")
(setf (get pedsim_msgs::SemanticDatum :definition-)
      "geometry_msgs/Point location
float32 evidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pedsim_msgs/SemanticDatum "ad0a2aaed128f76f0b996bf1dd0aa14d")


