;; Auto-generated. Do not edit!


(when (boundp 'light_scan_sim::Material)
  (if (not (find-package "LIGHT_SCAN_SIM"))
    (make-package "LIGHT_SCAN_SIM"))
  (shadow 'Material (find-package "LIGHT_SCAN_SIM")))
(unless (find-package "LIGHT_SCAN_SIM::MATERIAL")
  (make-package "LIGHT_SCAN_SIM::MATERIAL"))

(in-package "ROS")
;;//! \htmlinclude Material.msg.html


(defclass light_scan_sim::Material
  :super ros::object
  :slots (_name _type _color _min_return _max_return _angular_return ))

(defmethod light_scan_sim::Material
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:color __color) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:min_return __min_return) 0.0)
    ((:max_return __max_return) 0.0)
    ((:angular_return __angular_return) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _color __color)
   (setq _min_return (float __min_return))
   (setq _max_return (float __max_return))
   (setq _angular_return (float __angular_return))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:min_return
   (&optional __min_return)
   (if __min_return (setq _min_return __min_return)) _min_return)
  (:max_return
   (&optional __max_return)
   (if __max_return (setq _max_return __max_return)) _max_return)
  (:angular_return
   (&optional __angular_return)
   (if __angular_return (setq _angular_return __angular_return)) _angular_return)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; float32[3] _color
    (* 4    3)
    ;; float32 _min_return
    4
    ;; float32 _max_return
    4
    ;; float32 _angular_return
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32[3] _color
     (dotimes (i 3)
       (sys::poke (elt _color i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _min_return
       (sys::poke _min_return (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_return
       (sys::poke _max_return (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_return
       (sys::poke _angular_return (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[3] _color
   (dotimes (i (length _color))
     (setf (elt _color i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _min_return
     (setq _min_return (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_return
     (setq _max_return (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_return
     (setq _angular_return (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get light_scan_sim::Material :md5sum-) "be27c5f5cd5a377e88aa33527ff882a1")
(setf (get light_scan_sim::Material :datatype-) "light_scan_sim/Material")
(setf (get light_scan_sim::Material :definition-)
      "string name  # for descriptive purposes
string type  # opaque or transparent 
float32[3] color  # RGB for visualization node
float32 min_return  # 0.0 to 1.0 representing the minimum chance of return
float32 max_return  # 0.0 to 1.0 representing the maximum chance of return
float32 angular_return  # the chance of return lost per degree from perpendicular

")



(provide :light_scan_sim/Material "be27c5f5cd5a377e88aa33527ff882a1")


