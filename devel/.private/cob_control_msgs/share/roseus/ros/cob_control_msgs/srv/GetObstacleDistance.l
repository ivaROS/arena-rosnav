;; Auto-generated. Do not edit!


(when (boundp 'cob_control_msgs::GetObstacleDistance)
  (if (not (find-package "COB_CONTROL_MSGS"))
    (make-package "COB_CONTROL_MSGS"))
  (shadow 'GetObstacleDistance (find-package "COB_CONTROL_MSGS")))
(unless (find-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCE")
  (make-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCE"))
(unless (find-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCEREQUEST")
  (make-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCEREQUEST"))
(unless (find-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCERESPONSE")
  (make-package "COB_CONTROL_MSGS::GETOBSTACLEDISTANCERESPONSE"))

(in-package "ROS")





(defclass cob_control_msgs::GetObstacleDistanceRequest
  :super ros::object
  :slots (_links _objects ))

(defmethod cob_control_msgs::GetObstacleDistanceRequest
  (:init
   (&key
    ((:links __links) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:objects __objects) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _links __links)
   (setq _objects __objects)
   self)
  (:links
   (&optional __links)
   (if __links (setq _links __links)) _links)
  (:objects
   (&optional __objects)
   (if __objects (setq _objects __objects)) _objects)
  (:serialization-length
   ()
   (+
    ;; string[] _links
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _links)) 4
    ;; string[] _objects
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _objects)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _links i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _objects i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass cob_control_msgs::GetObstacleDistanceResponse
  :super ros::object
  :slots (_link_to_object _distances ))

(defmethod cob_control_msgs::GetObstacleDistanceResponse
  (:init
   (&key
    ((:link_to_object __link_to_object) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:distances __distances) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _link_to_object __link_to_object)
   (setq _distances __distances)
   self)
  (:link_to_object
   (&optional __link_to_object)
   (if __link_to_object (setq _link_to_object __link_to_object)) _link_to_object)
  (:distances
   (&optional __distances)
   (if __distances (setq _distances __distances)) _distances)
  (:serialization-length
   ()
   (+
    ;; string[] _link_to_object
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _link_to_object)) 4
    ;; float64[] _distances
    (* 8    (length _distances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _link_to_object
     (write-long (length _link_to_object) s)
     (dolist (elem _link_to_object)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _distances
     (write-long (length _distances) s)
     (dotimes (i (length _distances))
       (sys::poke (elt _distances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _link_to_object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_to_object (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _link_to_object i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass cob_control_msgs::GetObstacleDistance
  :super ros::object
  :slots ())

(setf (get cob_control_msgs::GetObstacleDistance :md5sum-) "f7fa899b8b5bba2d5f4beecae1d4101b")
(setf (get cob_control_msgs::GetObstacleDistance :datatype-) "cob_control_msgs/GetObstacleDistance")
(setf (get cob_control_msgs::GetObstacleDistance :request) cob_control_msgs::GetObstacleDistanceRequest)
(setf (get cob_control_msgs::GetObstacleDistance :response) cob_control_msgs::GetObstacleDistanceResponse)

(defmethod cob_control_msgs::GetObstacleDistanceRequest
  (:response () (instance cob_control_msgs::GetObstacleDistanceResponse :init)))

(setf (get cob_control_msgs::GetObstacleDistanceRequest :md5sum-) "f7fa899b8b5bba2d5f4beecae1d4101b")
(setf (get cob_control_msgs::GetObstacleDistanceRequest :datatype-) "cob_control_msgs/GetObstacleDistanceRequest")
(setf (get cob_control_msgs::GetObstacleDistanceRequest :definition-)
      "string[] links
string[] objects
---
string[] link_to_object
float64[] distances
")

(setf (get cob_control_msgs::GetObstacleDistanceResponse :md5sum-) "f7fa899b8b5bba2d5f4beecae1d4101b")
(setf (get cob_control_msgs::GetObstacleDistanceResponse :datatype-) "cob_control_msgs/GetObstacleDistanceResponse")
(setf (get cob_control_msgs::GetObstacleDistanceResponse :definition-)
      "string[] links
string[] objects
---
string[] link_to_object
float64[] distances
")



(provide :cob_control_msgs/GetObstacleDistance "f7fa899b8b5bba2d5f4beecae1d4101b")


