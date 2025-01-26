;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::AgentFeedback)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'AgentFeedback (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::AGENTFEEDBACK")
  (make-package "PEDSIM_MSGS::AGENTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude AgentFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pedsim_msgs::AgentFeedback
  :super ros::object
  :slots (_id _force _social_state _vmax ))

(defmethod pedsim_msgs::AgentFeedback
  (:init
   (&key
    ((:id __id) "")
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:social_state __social_state) "")
    ((:vmax __vmax) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _force __force)
   (setq _social_state (string __social_state))
   (setq _vmax (float __vmax))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:social_state
   (&optional __social_state)
   (if __social_state (setq _social_state __social_state)) _social_state)
  (:vmax
   (&optional __vmax)
   (if __vmax (setq _vmax __vmax)) _vmax)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; string _social_state
    4 (length _social_state)
    ;; float64 _vmax
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; string _social_state
       (write-long (length _social_state) s) (princ _social_state s)
     ;; float64 _vmax
       (sys::poke _vmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; string _social_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _social_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _vmax
     (setq _vmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pedsim_msgs::AgentFeedback :md5sum-) "16b4e5ba3766183aa44251605e9788a6")
(setf (get pedsim_msgs::AgentFeedback :datatype-) "pedsim_msgs/AgentFeedback")
(setf (get pedsim_msgs::AgentFeedback :definition-)
      "string id
geometry_msgs/Vector3 force
string social_state
float64 vmax
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



(provide :pedsim_msgs/AgentFeedback "16b4e5ba3766183aa44251605e9788a6")


