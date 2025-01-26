;; Auto-generated. Do not edit!


(when (boundp 'pedsim_msgs::Wall)
  (if (not (find-package "PEDSIM_MSGS"))
    (make-package "PEDSIM_MSGS"))
  (shadow 'Wall (find-package "PEDSIM_MSGS")))
(unless (find-package "PEDSIM_MSGS::WALL")
  (make-package "PEDSIM_MSGS::WALL"))

(in-package "ROS")
;;//! \htmlinclude Wall.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pedsim_msgs::Wall
  :super ros::object
  :slots (_start _end _layer ))

(defmethod pedsim_msgs::Wall
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:end __end) (instance geometry_msgs::Point :init))
    ((:layer __layer) 0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   (setq _layer (round __layer))
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _end
    (send _end :serialization-length)
    ;; uint8 _layer
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _end
       (send _end :serialize s)
     ;; uint8 _layer
       (write-byte _layer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; uint8 _layer
     (setq _layer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pedsim_msgs::Wall :md5sum-) "17c466210b91051d5119050ec1c785db")
(setf (get pedsim_msgs::Wall :datatype-) "pedsim_msgs/Wall")
(setf (get pedsim_msgs::Wall :definition-)
      "# A line obstacle in the simulator.

geometry_msgs/Point start
geometry_msgs/Point end
uint8 layer
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pedsim_msgs/Wall "17c466210b91051d5119050ec1c785db")


