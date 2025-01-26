;; Auto-generated. Do not edit!


(when (boundp 'arena_evaluation_msgs::ChangeDirectory)
  (if (not (find-package "ARENA_EVALUATION_MSGS"))
    (make-package "ARENA_EVALUATION_MSGS"))
  (shadow 'ChangeDirectory (find-package "ARENA_EVALUATION_MSGS")))
(unless (find-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORY")
  (make-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORY"))
(unless (find-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORYREQUEST")
  (make-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORYREQUEST"))
(unless (find-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORYRESPONSE")
  (make-package "ARENA_EVALUATION_MSGS::CHANGEDIRECTORYRESPONSE"))

(in-package "ROS")





(defclass arena_evaluation_msgs::ChangeDirectoryRequest
  :super ros::object
  :slots (_data ))

(defmethod arena_evaluation_msgs::ChangeDirectoryRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass arena_evaluation_msgs::ChangeDirectoryResponse
  :super ros::object
  :slots (_result ))

(defmethod arena_evaluation_msgs::ChangeDirectoryResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass arena_evaluation_msgs::ChangeDirectory
  :super ros::object
  :slots ())

(setf (get arena_evaluation_msgs::ChangeDirectory :md5sum-) "cf7f66ec69e8f7a3a02023f271c1213d")
(setf (get arena_evaluation_msgs::ChangeDirectory :datatype-) "arena_evaluation_msgs/ChangeDirectory")
(setf (get arena_evaluation_msgs::ChangeDirectory :request) arena_evaluation_msgs::ChangeDirectoryRequest)
(setf (get arena_evaluation_msgs::ChangeDirectory :response) arena_evaluation_msgs::ChangeDirectoryResponse)

(defmethod arena_evaluation_msgs::ChangeDirectoryRequest
  (:response () (instance arena_evaluation_msgs::ChangeDirectoryResponse :init)))

(setf (get arena_evaluation_msgs::ChangeDirectoryRequest :md5sum-) "cf7f66ec69e8f7a3a02023f271c1213d")
(setf (get arena_evaluation_msgs::ChangeDirectoryRequest :datatype-) "arena_evaluation_msgs/ChangeDirectoryRequest")
(setf (get arena_evaluation_msgs::ChangeDirectoryRequest :definition-)
      "string data
---
bool result
")

(setf (get arena_evaluation_msgs::ChangeDirectoryResponse :md5sum-) "cf7f66ec69e8f7a3a02023f271c1213d")
(setf (get arena_evaluation_msgs::ChangeDirectoryResponse :datatype-) "arena_evaluation_msgs/ChangeDirectoryResponse")
(setf (get arena_evaluation_msgs::ChangeDirectoryResponse :definition-)
      "string data
---
bool result
")



(provide :arena_evaluation_msgs/ChangeDirectory "cf7f66ec69e8f7a3a02023f271c1213d")


