;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::SocialActivity)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'SocialActivity (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::SOCIALACTIVITY")
  (make-package "PEDSIM_MSGS::SOCIALACTIVITY"))

(in-package "ROS")
;;//! \htmlinclude SocialActivity.msg.html


(intern "*TYPE_SHOPPING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_SHOPPING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_SHOPPING* "shopping")
(intern "*TYPE_STANDING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_STANDING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_STANDING* "standing")
(intern "*TYPE_TALKING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_TALKING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_TALKING* "talking")
(intern "*TYPE_RUNNING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_RUNNING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_RUNNING* "running")
(intern "*TYPE_INDIVIDUAL_MOVING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_INDIVIDUAL_MOVING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_INDIVIDUAL_MOVING* "individual_moving")
(intern "*TYPE_WAITING_IN_QUEUE*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_WAITING_IN_QUEUE* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_WAITING_IN_QUEUE* "waiting_in_queue")
(intern "*TYPE_LOOKING_AT_INFORMATION_SCREEN*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_LOOKING_AT_INFORMATION_SCREEN* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_LOOKING_AT_INFORMATION_SCREEN* "looking_at_information_screen")
(intern "*TYPE_LOOKING_AT_KIOSK*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_LOOKING_AT_KIOSK* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_LOOKING_AT_KIOSK* "looking_at_kiosk")
(intern "*TYPE_GROUP_ASSEMBLING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_GROUP_ASSEMBLING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_GROUP_ASSEMBLING* "group_assembling")
(intern "*TYPE_GROUP_MOVING*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_GROUP_MOVING* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_GROUP_MOVING* "group_moving")
(intern "*TYPE_FLOW_WITH_ROBOT*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_FLOW_WITH_ROBOT* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_FLOW_WITH_ROBOT* "flow")
(intern "*TYPE_ANTIFLOW_AGAINST_ROBOT*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_ANTIFLOW_AGAINST_ROBOT* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_ANTIFLOW_AGAINST_ROBOT* "antiflow")
(intern "*TYPE_WAITING_FOR_OTHERS*" (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(shadow '*TYPE_WAITING_FOR_OTHERS* (find-package "PEDSIM_MSGS::SOCIALACTIVITY"))
(defconstant pedsim_msgs::SocialActivity::*TYPE_WAITING_FOR_OTHERS* "waiting_for_others")

(defun pedsim_msgs::SocialActivity-to-symbol (const)
  (cond
        (t nil)))

(defclass pedsim_msgs::SocialActivity
  :super ros::object
  :slots (_type _confidence _track_ids ))

(defmethod pedsim_msgs::SocialActivity
  (:init
   (&key
    ((:type __type) "")
    ((:confidence __confidence) 0.0)
    ((:track_ids __track_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _confidence (float __confidence))
   (setq _track_ids __track_ids)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:track_ids
   (&optional __track_ids)
   (if __track_ids (setq _track_ids __track_ids)) _track_ids)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; float32 _confidence
    4
    ;; string[] _track_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _track_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string[] _track_ids
     (write-long (length _track_ids) s)
     (dolist (elem _track_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get pedsim_msgs::SocialActivity :md5sum-) "926c276149c97e1f57878642fe67da28")
(setf (get pedsim_msgs::SocialActivity :datatype-) "pedsim_msgs/SocialActivity")
(setf (get pedsim_msgs::SocialActivity :definition-)
      "string      type        # see constants below
float32     confidence  # detection confidence

string[]      track_ids   # IDs of all person tracks involved in the activity, might be one or multiple


# Constants for social activity type (just examples at the moment)
string      TYPE_SHOPPING = shopping
string      TYPE_STANDING = standing
string      TYPE_TALKING = talking
string      TYPE_RUNNING = running
string      TYPE_INDIVIDUAL_MOVING = individual_moving
string      TYPE_WAITING_IN_QUEUE = waiting_in_queue
string      TYPE_LOOKING_AT_INFORMATION_SCREEN = looking_at_information_screen
string      TYPE_LOOKING_AT_KIOSK = looking_at_kiosk
string      TYPE_GROUP_ASSEMBLING = group_assembling
string      TYPE_GROUP_MOVING = group_moving
string      TYPE_FLOW_WITH_ROBOT = flow
string      TYPE_ANTIFLOW_AGAINST_ROBOT = antiflow
string      TYPE_WAITING_FOR_OTHERS = waiting_for_others

#string      TYPE_COMMUNICATING = communicating
#string      TYPE_TAKING_PHOTOGRAPH = taking_photograph
#string      TYPE_TALKING_ON_PHONE = talking_on_phone

")



(provide :pedsim_msgs/SocialActivity "926c276149c97e1f57878642fe67da28")


