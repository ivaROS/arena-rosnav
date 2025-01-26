;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::DeleteModel)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'DeleteModel (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::DELETEMODEL")
  (make-package "FLATLAND_MSGS::DELETEMODEL"))
(unless (find-package "FLATLAND_MSGS::DELETEMODELREQUEST")
  (make-package "FLATLAND_MSGS::DELETEMODELREQUEST"))
(unless (find-package "FLATLAND_MSGS::DELETEMODELRESPONSE")
  (make-package "FLATLAND_MSGS::DELETEMODELRESPONSE"))

(in-package "ROS")





(defclass flatland_msgs::DeleteModelRequest
  :super ros::object
  :slots (_name ))

(defmethod flatland_msgs::DeleteModelRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass flatland_msgs::DeleteModelResponse
  :super ros::object
  :slots (_success _message ))

(defmethod flatland_msgs::DeleteModelResponse
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

(defclass flatland_msgs::DeleteModel
  :super ros::object
  :slots ())

(setf (get flatland_msgs::DeleteModel :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get flatland_msgs::DeleteModel :datatype-) "flatland_msgs/DeleteModel")
(setf (get flatland_msgs::DeleteModel :request) flatland_msgs::DeleteModelRequest)
(setf (get flatland_msgs::DeleteModel :response) flatland_msgs::DeleteModelResponse)

(defmethod flatland_msgs::DeleteModelRequest
  (:response () (instance flatland_msgs::DeleteModelResponse :init)))

(setf (get flatland_msgs::DeleteModelRequest :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get flatland_msgs::DeleteModelRequest :datatype-) "flatland_msgs/DeleteModelRequest")
(setf (get flatland_msgs::DeleteModelRequest :definition-)
      "string name
---
bool success
string message

")

(setf (get flatland_msgs::DeleteModelResponse :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get flatland_msgs::DeleteModelResponse :datatype-) "flatland_msgs/DeleteModelResponse")
(setf (get flatland_msgs::DeleteModelResponse :definition-)
      "string name
---
bool success
string message

")



(provide :flatland_msgs/DeleteModel "d82dc6474dd88dad5e1615ab1b2ca74c")


