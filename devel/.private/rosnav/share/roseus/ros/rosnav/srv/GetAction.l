;; Auto-generated. Do not edit!


(when (boundp 'rosnav::GetAction)
  (if (not (find-package "ROSNAV"))
    (make-package "ROSNAV"))
  (shadow 'GetAction (find-package "ROSNAV")))
(unless (find-package "ROSNAV::GETACTION")
  (make-package "ROSNAV::GETACTION"))
(unless (find-package "ROSNAV::GETACTIONREQUEST")
  (make-package "ROSNAV::GETACTIONREQUEST"))
(unless (find-package "ROSNAV::GETACTIONRESPONSE")
  (make-package "ROSNAV::GETACTIONRESPONSE"))

(in-package "ROS")





(defclass rosnav::GetActionRequest
  :super ros::object
  :slots ())

(defmethod rosnav::GetActionRequest
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

(defclass rosnav::GetActionResponse
  :super ros::object
  :slots (_action ))

(defmethod rosnav::GetActionResponse
  (:init
   (&key
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float32[] _action
    (* 4    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rosnav::GetAction
  :super ros::object
  :slots ())

(setf (get rosnav::GetAction :md5sum-) "a70a7d92e0376dcb967914076f276ea6")
(setf (get rosnav::GetAction :datatype-) "rosnav/GetAction")
(setf (get rosnav::GetAction :request) rosnav::GetActionRequest)
(setf (get rosnav::GetAction :response) rosnav::GetActionResponse)

(defmethod rosnav::GetActionRequest
  (:response () (instance rosnav::GetActionResponse :init)))

(setf (get rosnav::GetActionRequest :md5sum-) "a70a7d92e0376dcb967914076f276ea6")
(setf (get rosnav::GetActionRequest :datatype-) "rosnav/GetActionRequest")
(setf (get rosnav::GetActionRequest :definition-)
      "---
float32[] action
")

(setf (get rosnav::GetActionResponse :md5sum-) "a70a7d92e0376dcb967914076f276ea6")
(setf (get rosnav::GetActionResponse :datatype-) "rosnav/GetActionResponse")
(setf (get rosnav::GetActionResponse :definition-)
      "---
float32[] action
")



(provide :rosnav/GetAction "a70a7d92e0376dcb967914076f276ea6")


