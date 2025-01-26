;; Auto-generated. Do not edit!


(when (boundp 'all_in_one_local_planner_interface::ResetCostmap)
  (if (not (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
    (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE"))
  (shadow 'ResetCostmap (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE")))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAP")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAP"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAPREQUEST")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAPREQUEST"))
(unless (find-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAPRESPONSE")
  (make-package "ALL_IN_ONE_LOCAL_PLANNER_INTERFACE::RESETCOSTMAPRESPONSE"))

(in-package "ROS")





(defclass all_in_one_local_planner_interface::ResetCostmapRequest
  :super ros::object
  :slots ())

(defmethod all_in_one_local_planner_interface::ResetCostmapRequest
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

(defclass all_in_one_local_planner_interface::ResetCostmapResponse
  :super ros::object
  :slots (_costmaps_resetted ))

(defmethod all_in_one_local_planner_interface::ResetCostmapResponse
  (:init
   (&key
    ((:costmaps_resetted __costmaps_resetted) nil)
    )
   (send-super :init)
   (setq _costmaps_resetted __costmaps_resetted)
   self)
  (:costmaps_resetted
   (&optional (__costmaps_resetted :null))
   (if (not (eq __costmaps_resetted :null)) (setq _costmaps_resetted __costmaps_resetted)) _costmaps_resetted)
  (:serialization-length
   ()
   (+
    ;; bool _costmaps_resetted
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _costmaps_resetted
       (if _costmaps_resetted (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _costmaps_resetted
     (setq _costmaps_resetted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass all_in_one_local_planner_interface::ResetCostmap
  :super ros::object
  :slots ())

(setf (get all_in_one_local_planner_interface::ResetCostmap :md5sum-) "c267a3b326f2460cbd8963b5e7db09b6")
(setf (get all_in_one_local_planner_interface::ResetCostmap :datatype-) "all_in_one_local_planner_interface/ResetCostmap")
(setf (get all_in_one_local_planner_interface::ResetCostmap :request) all_in_one_local_planner_interface::ResetCostmapRequest)
(setf (get all_in_one_local_planner_interface::ResetCostmap :response) all_in_one_local_planner_interface::ResetCostmapResponse)

(defmethod all_in_one_local_planner_interface::ResetCostmapRequest
  (:response () (instance all_in_one_local_planner_interface::ResetCostmapResponse :init)))

(setf (get all_in_one_local_planner_interface::ResetCostmapRequest :md5sum-) "c267a3b326f2460cbd8963b5e7db09b6")
(setf (get all_in_one_local_planner_interface::ResetCostmapRequest :datatype-) "all_in_one_local_planner_interface/ResetCostmapRequest")
(setf (get all_in_one_local_planner_interface::ResetCostmapRequest :definition-)
      "# request fields
---
# response fields
bool costmaps_resetted
")

(setf (get all_in_one_local_planner_interface::ResetCostmapResponse :md5sum-) "c267a3b326f2460cbd8963b5e7db09b6")
(setf (get all_in_one_local_planner_interface::ResetCostmapResponse :datatype-) "all_in_one_local_planner_interface/ResetCostmapResponse")
(setf (get all_in_one_local_planner_interface::ResetCostmapResponse :definition-)
      "# request fields
---
# response fields
bool costmaps_resetted
")



(provide :all_in_one_local_planner_interface/ResetCostmap "c267a3b326f2460cbd8963b5e7db09b6")


