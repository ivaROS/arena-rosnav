;; Auto-generated. Do not edit!


(when (boundp 'training::String)
  (if (not (find-package "TRAINING"))
    (make-package "TRAINING"))
  (shadow 'String (find-package "TRAINING")))
(unless (find-package "TRAINING::STRING")
  (make-package "TRAINING::STRING"))
(unless (find-package "TRAINING::STRINGREQUEST")
  (make-package "TRAINING::STRINGREQUEST"))
(unless (find-package "TRAINING::STRINGRESPONSE")
  (make-package "TRAINING::STRINGRESPONSE"))

(in-package "ROS")





(defclass training::StringRequest
  :super ros::object
  :slots ())

(defmethod training::StringRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass training::StringResponse
  :super ros::object
  :slots (_value ))

(defmethod training::StringResponse
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass training::String
  :super ros::object
  :slots ())

(setf (get training::String :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get training::String :datatype-) "training/String")
(setf (get training::String :request) training::StringRequest)
(setf (get training::String :response) training::StringResponse)

(defmethod training::StringRequest
  (:response () (instance training::StringResponse :init)))

(setf (get training::StringRequest :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get training::StringRequest :datatype-) "training/StringRequest")
(setf (get training::StringRequest :definition-)
      "---
string value
")

(setf (get training::StringResponse :md5sum-) "64e58419496c7248b4ef25731f88b8c3")
(setf (get training::StringResponse :datatype-) "training/StringResponse")
(setf (get training::StringResponse :definition-)
      "---
string value
")



(provide :training/String "64e58419496c7248b4ef25731f88b8c3")


