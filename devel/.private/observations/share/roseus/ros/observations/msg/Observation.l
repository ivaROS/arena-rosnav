;; Auto-generated. Do not edit!


(when (boundp 'observations::Observation)
  (if (not (find-package "OBSERVATIONS"))
    (make-package "OBSERVATIONS"))
  (shadow 'Observation (find-package "OBSERVATIONS")))
(unless (find-package "OBSERVATIONS::OBSERVATION")
  (make-package "OBSERVATIONS::OBSERVATION"))

(in-package "ROS")
;;//! \htmlinclude Observation.msg.html


(defclass observations::Observation
  :super ros::object
  :slots (_observation ))

(defmethod observations::Observation
  (:init
   (&key
    ((:observation __observation) (make-array 362 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _observation __observation)
   self)
  (:observation
   (&optional __observation)
   (if __observation (setq _observation __observation)) _observation)
  (:serialization-length
   ()
   (+
    ;; float32[362] _observation
    (* 4    362)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[362] _observation
     (dotimes (i 362)
       (sys::poke (elt _observation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[362] _observation
   (dotimes (i (length _observation))
     (setf (elt _observation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get observations::Observation :md5sum-) "7f736eba6ff4f01375d960ed884fae68")
(setf (get observations::Observation :datatype-) "observations/Observation")
(setf (get observations::Observation :definition-)
      "float32[362] observation

")



(provide :observations/Observation "7f736eba6ff4f01375d960ed884fae68")


