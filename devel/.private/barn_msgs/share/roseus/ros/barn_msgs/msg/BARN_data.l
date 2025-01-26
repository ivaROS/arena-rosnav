;; Auto-generated. Do not edit!


(when (boundp 'barn_msgs::BARN_data)
  (if (not (find-package "BARN_MSGS"))
    (make-package "BARN_MSGS"))
  (shadow 'BARN_data (find-package "BARN_MSGS")))
(unless (find-package "BARN_MSGS::BARN_DATA")
  (make-package "BARN_MSGS::BARN_DATA"))

(in-package "ROS")
;;//! \htmlinclude BARN_data.msg.html


(defclass barn_msgs::BARN_data
  :super ros::object
  :slots (_scan _goal_cart ))

(defmethod barn_msgs::BARN_data
  (:init
   (&key
    ((:scan __scan) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_cart __goal_cart) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _scan __scan)
   (setq _goal_cart __goal_cart)
   self)
  (:scan
   (&optional __scan)
   (if __scan (setq _scan __scan)) _scan)
  (:goal_cart
   (&optional __goal_cart)
   (if __goal_cart (setq _goal_cart __goal_cart)) _goal_cart)
  (:serialization-length
   ()
   (+
    ;; float32[] _scan
    (* 4    (length _scan)) 4
    ;; float32[] _goal_cart
    (* 4    (length _goal_cart)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _scan
     (write-long (length _scan) s)
     (dotimes (i (length _scan))
       (sys::poke (elt _scan i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _goal_cart
     (write-long (length _goal_cart) s)
     (dotimes (i (length _goal_cart))
       (sys::poke (elt _goal_cart i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _scan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scan i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _goal_cart
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_cart (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_cart i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get barn_msgs::BARN_data :md5sum-) "68e5ba558e737ae344773180a6c37ce7")
(setf (get barn_msgs::BARN_data :datatype-) "barn_msgs/BARN_data")
(setf (get barn_msgs::BARN_data :definition-)
      "float32[] scan	  	# 720 range data from the laser scan
float32[] goal_cart     # current goal in robot frame

")



(provide :barn_msgs/BARN_data "68e5ba558e737ae344773180a6c37ce7")


