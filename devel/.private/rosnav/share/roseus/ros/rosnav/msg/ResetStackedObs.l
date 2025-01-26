;; Auto-generated. Do not edit!


(when (boundp 'rosnav::ResetStackedObs)
  (if (not (find-package "ROSNAV"))
    (make-package "ROSNAV"))
  (shadow 'ResetStackedObs (find-package "ROSNAV")))
(unless (find-package "ROSNAV::RESETSTACKEDOBS")
  (make-package "ROSNAV::RESETSTACKEDOBS"))

(in-package "ROS")
;;//! \htmlinclude ResetStackedObs.msg.html


(defclass rosnav::ResetStackedObs
  :super ros::object
  :slots (_laser_scan _goal_in_robot_frame _last_action ))

(defmethod rosnav::ResetStackedObs
  (:init
   (&key
    ((:laser_scan __laser_scan) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_in_robot_frame __goal_in_robot_frame) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:last_action __last_action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _laser_scan __laser_scan)
   (setq _goal_in_robot_frame __goal_in_robot_frame)
   (setq _last_action __last_action)
   self)
  (:laser_scan
   (&optional __laser_scan)
   (if __laser_scan (setq _laser_scan __laser_scan)) _laser_scan)
  (:goal_in_robot_frame
   (&optional __goal_in_robot_frame)
   (if __goal_in_robot_frame (setq _goal_in_robot_frame __goal_in_robot_frame)) _goal_in_robot_frame)
  (:last_action
   (&optional __last_action)
   (if __last_action (setq _last_action __last_action)) _last_action)
  (:serialization-length
   ()
   (+
    ;; float32[] _laser_scan
    (* 4    (length _laser_scan)) 4
    ;; float32[] _goal_in_robot_frame
    (* 4    (length _goal_in_robot_frame)) 4
    ;; float32[] _last_action
    (* 4    (length _last_action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _laser_scan
     (write-long (length _laser_scan) s)
     (dotimes (i (length _laser_scan))
       (sys::poke (elt _laser_scan i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _goal_in_robot_frame
     (write-long (length _goal_in_robot_frame) s)
     (dotimes (i (length _goal_in_robot_frame))
       (sys::poke (elt _goal_in_robot_frame i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _last_action
     (write-long (length _last_action) s)
     (dotimes (i (length _last_action))
       (sys::poke (elt _last_action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _laser_scan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laser_scan (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _laser_scan i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _goal_in_robot_frame
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_in_robot_frame (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_in_robot_frame i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _last_action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _last_action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _last_action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosnav::ResetStackedObs :md5sum-) "ac16969c4d699f9151949bedcb64bec9")
(setf (get rosnav::ResetStackedObs :datatype-) "rosnav/ResetStackedObs")
(setf (get rosnav::ResetStackedObs :definition-)
      "float32[] laser_scan
float32[] goal_in_robot_frame
float32[] last_action
")



(provide :rosnav/ResetStackedObs "ac16969c4d699f9151949bedcb64bec9")


