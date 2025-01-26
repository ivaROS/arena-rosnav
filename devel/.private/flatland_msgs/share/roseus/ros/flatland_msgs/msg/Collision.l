;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::Collision)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'Collision (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::COLLISION")
  (make-package "FLATLAND_MSGS::COLLISION"))

(in-package "ROS")
;;//! \htmlinclude Collision.msg.html


(defclass flatland_msgs::Collision
  :super ros::object
  :slots (_entity_A _body_A _entity_B _body_B _magnitude_forces _contact_positions _contact_normals ))

(defmethod flatland_msgs::Collision
  (:init
   (&key
    ((:entity_A __entity_A) "")
    ((:body_A __body_A) "")
    ((:entity_B __entity_B) "")
    ((:body_B __body_B) "")
    ((:magnitude_forces __magnitude_forces) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:contact_positions __contact_positions) ())
    ((:contact_normals __contact_normals) ())
    )
   (send-super :init)
   (setq _entity_A (string __entity_A))
   (setq _body_A (string __body_A))
   (setq _entity_B (string __entity_B))
   (setq _body_B (string __body_B))
   (setq _magnitude_forces __magnitude_forces)
   (setq _contact_positions __contact_positions)
   (setq _contact_normals __contact_normals)
   self)
  (:entity_A
   (&optional __entity_A)
   (if __entity_A (setq _entity_A __entity_A)) _entity_A)
  (:body_A
   (&optional __body_A)
   (if __body_A (setq _body_A __body_A)) _body_A)
  (:entity_B
   (&optional __entity_B)
   (if __entity_B (setq _entity_B __entity_B)) _entity_B)
  (:body_B
   (&optional __body_B)
   (if __body_B (setq _body_B __body_B)) _body_B)
  (:magnitude_forces
   (&optional __magnitude_forces)
   (if __magnitude_forces (setq _magnitude_forces __magnitude_forces)) _magnitude_forces)
  (:contact_positions
   (&rest __contact_positions)
   (if (keywordp (car __contact_positions))
       (send* _contact_positions __contact_positions)
     (progn
       (if __contact_positions (setq _contact_positions (car __contact_positions)))
       _contact_positions)))
  (:contact_normals
   (&rest __contact_normals)
   (if (keywordp (car __contact_normals))
       (send* _contact_normals __contact_normals)
     (progn
       (if __contact_normals (setq _contact_normals (car __contact_normals)))
       _contact_normals)))
  (:serialization-length
   ()
   (+
    ;; string _entity_A
    4 (length _entity_A)
    ;; string _body_A
    4 (length _body_A)
    ;; string _entity_B
    4 (length _entity_B)
    ;; string _body_B
    4 (length _body_B)
    ;; float64[] _magnitude_forces
    (* 8    (length _magnitude_forces)) 4
    ;; flatland_msgs/Vector2[] _contact_positions
    (apply #'+ (send-all _contact_positions :serialization-length)) 4
    ;; flatland_msgs/Vector2[] _contact_normals
    (apply #'+ (send-all _contact_normals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _entity_A
       (write-long (length _entity_A) s) (princ _entity_A s)
     ;; string _body_A
       (write-long (length _body_A) s) (princ _body_A s)
     ;; string _entity_B
       (write-long (length _entity_B) s) (princ _entity_B s)
     ;; string _body_B
       (write-long (length _body_B) s) (princ _body_B s)
     ;; float64[] _magnitude_forces
     (write-long (length _magnitude_forces) s)
     (dotimes (i (length _magnitude_forces))
       (sys::poke (elt _magnitude_forces i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; flatland_msgs/Vector2[] _contact_positions
     (write-long (length _contact_positions) s)
     (dolist (elem _contact_positions)
       (send elem :serialize s)
       )
     ;; flatland_msgs/Vector2[] _contact_normals
     (write-long (length _contact_normals) s)
     (dolist (elem _contact_normals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _entity_A
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _entity_A (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _body_A
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_A (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _entity_B
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _entity_B (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _body_B
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_B (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _magnitude_forces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _magnitude_forces (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _magnitude_forces i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; flatland_msgs/Vector2[] _contact_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_positions (let (r) (dotimes (i n) (push (instance flatland_msgs::Vector2 :init) r)) r))
     (dolist (elem- _contact_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; flatland_msgs/Vector2[] _contact_normals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_normals (let (r) (dotimes (i n) (push (instance flatland_msgs::Vector2 :init) r)) r))
     (dolist (elem- _contact_normals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get flatland_msgs::Collision :md5sum-) "e6959bf91b31e42582e1328efe4e2953")
(setf (get flatland_msgs::Collision :datatype-) "flatland_msgs/Collision")
(setf (get flatland_msgs::Collision :definition-)
      "string entity_A
string body_A
string entity_B
string body_B
float64[] magnitude_forces
Vector2[] contact_positions
Vector2[] contact_normals
================================================================================
MSG: flatland_msgs/Vector2
float64 x
float64 y
")



(provide :flatland_msgs/Collision "e6959bf91b31e42582e1328efe4e2953")


