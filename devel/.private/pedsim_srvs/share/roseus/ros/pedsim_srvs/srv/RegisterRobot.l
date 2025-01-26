;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::RegisterRobot)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'RegisterRobot (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::REGISTERROBOT")
  (make-package "PEDSIM_SRVS::REGISTERROBOT"))
(unless (find-package "PEDSIM_SRVS::REGISTERROBOTREQUEST")
  (make-package "PEDSIM_SRVS::REGISTERROBOTREQUEST"))
(unless (find-package "PEDSIM_SRVS::REGISTERROBOTRESPONSE")
  (make-package "PEDSIM_SRVS::REGISTERROBOTRESPONSE"))

(in-package "ROS")





(defclass pedsim_srvs::RegisterRobotRequest
  :super ros::object
  :slots (_name _odom_topic _yaml_path ))

(defmethod pedsim_srvs::RegisterRobotRequest
  (:init
   (&key
    ((:name __name) "")
    ((:odom_topic __odom_topic) "")
    ((:yaml_path __yaml_path) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _odom_topic (string __odom_topic))
   (setq _yaml_path (string __yaml_path))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:odom_topic
   (&optional __odom_topic)
   (if __odom_topic (setq _odom_topic __odom_topic)) _odom_topic)
  (:yaml_path
   (&optional __yaml_path)
   (if __yaml_path (setq _yaml_path __yaml_path)) _yaml_path)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _odom_topic
    4 (length _odom_topic)
    ;; string _yaml_path
    4 (length _yaml_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _odom_topic
       (write-long (length _odom_topic) s) (princ _odom_topic s)
     ;; string _yaml_path
       (write-long (length _yaml_path) s) (princ _yaml_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _odom_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odom_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _yaml_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaml_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pedsim_srvs::RegisterRobotResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::RegisterRobotResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pedsim_srvs::RegisterRobot
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::RegisterRobot :md5sum-) "647c18b52962c6a7651146d18ac24de2")
(setf (get pedsim_srvs::RegisterRobot :datatype-) "pedsim_srvs/RegisterRobot")
(setf (get pedsim_srvs::RegisterRobot :request) pedsim_srvs::RegisterRobotRequest)
(setf (get pedsim_srvs::RegisterRobot :response) pedsim_srvs::RegisterRobotResponse)

(defmethod pedsim_srvs::RegisterRobotRequest
  (:response () (instance pedsim_srvs::RegisterRobotResponse :init)))

(setf (get pedsim_srvs::RegisterRobotRequest :md5sum-) "647c18b52962c6a7651146d18ac24de2")
(setf (get pedsim_srvs::RegisterRobotRequest :datatype-) "pedsim_srvs/RegisterRobotRequest")
(setf (get pedsim_srvs::RegisterRobotRequest :definition-)
      "string name
string odom_topic
string yaml_path
---
bool success

")

(setf (get pedsim_srvs::RegisterRobotResponse :md5sum-) "647c18b52962c6a7651146d18ac24de2")
(setf (get pedsim_srvs::RegisterRobotResponse :datatype-) "pedsim_srvs/RegisterRobotResponse")
(setf (get pedsim_srvs::RegisterRobotResponse :definition-)
      "string name
string odom_topic
string yaml_path
---
bool success

")



(provide :pedsim_srvs/RegisterRobot "647c18b52962c6a7651146d18ac24de2")


