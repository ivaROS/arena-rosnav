;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::StepWorld)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'StepWorld (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::STEPWORLD")
  (make-package "FLATLAND_MSGS::STEPWORLD"))

(in-package "ROS")
;;//! \htmlinclude StepWorld.msg.html


(defclass flatland_msgs::StepWorld
  :super ros::object
  :slots (_required_time ))

(defmethod flatland_msgs::StepWorld
  (:init
   (&key
    ((:required_time __required_time) 0.0)
    )
   (send-super :init)
   (setq _required_time (float __required_time))
   self)
  (:required_time
   (&optional __required_time)
   (if __required_time (setq _required_time __required_time)) _required_time)
  (:serialization-length
   ()
   (+
    ;; float32 _required_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _required_time
       (sys::poke _required_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _required_time
     (setq _required_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get flatland_msgs::StepWorld :md5sum-) "db98664cbe4523fcf94ecdf73a95fa46")
(setf (get flatland_msgs::StepWorld :datatype-) "flatland_msgs/StepWorld")
(setf (get flatland_msgs::StepWorld :definition-)
      "float32 required_time

")



(provide :flatland_msgs/StepWorld "db98664cbe4523fcf94ecdf73a95fa46")


