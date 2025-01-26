;; Auto-generated. Do not edit!


(when (boundp 'light_scan_sim::MaterialList)
  (if (not (find-package "LIGHT_SCAN_SIM"))
    (make-package "LIGHT_SCAN_SIM"))
  (shadow 'MaterialList (find-package "LIGHT_SCAN_SIM")))
(unless (find-package "LIGHT_SCAN_SIM::MATERIALLIST")
  (make-package "LIGHT_SCAN_SIM::MATERIALLIST"))

(in-package "ROS")
;;//! \htmlinclude MaterialList.msg.html


(defclass light_scan_sim::MaterialList
  :super ros::object
  :slots (_materials ))

(defmethod light_scan_sim::MaterialList
  (:init
   (&key
    ((:materials __materials) ())
    )
   (send-super :init)
   (setq _materials __materials)
   self)
  (:materials
   (&rest __materials)
   (if (keywordp (car __materials))
       (send* _materials __materials)
     (progn
       (if __materials (setq _materials (car __materials)))
       _materials)))
  (:serialization-length
   ()
   (+
    ;; light_scan_sim/Material[] _materials
    (apply #'+ (send-all _materials :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; light_scan_sim/Material[] _materials
     (write-long (length _materials) s)
     (dolist (elem _materials)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; light_scan_sim/Material[] _materials
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _materials (let (r) (dotimes (i n) (push (instance light_scan_sim::Material :init) r)) r))
     (dolist (elem- _materials)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get light_scan_sim::MaterialList :md5sum-) "3044149dcb81d0fb9254bae26c379855")
(setf (get light_scan_sim::MaterialList :datatype-) "light_scan_sim/MaterialList")
(setf (get light_scan_sim::MaterialList :definition-)
      "Material[] materials

================================================================================
MSG: light_scan_sim/Material
string name  # for descriptive purposes
string type  # opaque or transparent 
float32[3] color  # RGB for visualization node
float32 min_return  # 0.0 to 1.0 representing the minimum chance of return
float32 max_return  # 0.0 to 1.0 representing the maximum chance of return
float32 angular_return  # the chance of return lost per degree from perpendicular

")



(provide :light_scan_sim/MaterialList "3044149dcb81d0fb9254bae26c379855")


