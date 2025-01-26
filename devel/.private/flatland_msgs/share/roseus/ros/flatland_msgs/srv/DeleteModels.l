;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::DeleteModels)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'DeleteModels (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::DELETEMODELS")
  (make-package "FLATLAND_MSGS::DELETEMODELS"))
(unless (find-package "FLATLAND_MSGS::DELETEMODELSREQUEST")
  (make-package "FLATLAND_MSGS::DELETEMODELSREQUEST"))
(unless (find-package "FLATLAND_MSGS::DELETEMODELSRESPONSE")
  (make-package "FLATLAND_MSGS::DELETEMODELSRESPONSE"))

(in-package "ROS")





(defclass flatland_msgs::DeleteModelsRequest
  :super ros::object
  :slots (_name ))

(defmethod flatland_msgs::DeleteModelsRequest
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name __name)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass flatland_msgs::DeleteModelsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod flatland_msgs::DeleteModelsResponse
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

(defclass flatland_msgs::DeleteModels
  :super ros::object
  :slots ())

(setf (get flatland_msgs::DeleteModels :md5sum-) "f17f88999ecf79098437ce7d74e28572")
(setf (get flatland_msgs::DeleteModels :datatype-) "flatland_msgs/DeleteModels")
(setf (get flatland_msgs::DeleteModels :request) flatland_msgs::DeleteModelsRequest)
(setf (get flatland_msgs::DeleteModels :response) flatland_msgs::DeleteModelsResponse)

(defmethod flatland_msgs::DeleteModelsRequest
  (:response () (instance flatland_msgs::DeleteModelsResponse :init)))

(setf (get flatland_msgs::DeleteModelsRequest :md5sum-) "f17f88999ecf79098437ce7d74e28572")
(setf (get flatland_msgs::DeleteModelsRequest :datatype-) "flatland_msgs/DeleteModelsRequest")
(setf (get flatland_msgs::DeleteModelsRequest :definition-)
      "string[] name
---
bool success
string message

")

(setf (get flatland_msgs::DeleteModelsResponse :md5sum-) "f17f88999ecf79098437ce7d74e28572")
(setf (get flatland_msgs::DeleteModelsResponse :datatype-) "flatland_msgs/DeleteModelsResponse")
(setf (get flatland_msgs::DeleteModelsResponse :definition-)
      "string[] name
---
bool success
string message

")



(provide :flatland_msgs/DeleteModels "f17f88999ecf79098437ce7d74e28572")


