;; Auto-generated. Do not edit!


(when (boundp 'light_scan_sim::Segment)
  (if (not (find-package "LIGHT_SCAN_SIM"))
    (make-package "LIGHT_SCAN_SIM"))
  (shadow 'Segment (find-package "LIGHT_SCAN_SIM")))
(unless (find-package "LIGHT_SCAN_SIM::SEGMENT")
  (make-package "LIGHT_SCAN_SIM::SEGMENT"))

(in-package "ROS")
;;//! \htmlinclude Segment.msg.html


(defclass light_scan_sim::Segment
  :super ros::object
  :slots (_type _start _end ))

(defmethod light_scan_sim::Segment
  (:init
   (&key
    ((:type __type) 0)
    ((:start __start) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:end __end) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _start __start)
   (setq _end __end)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; float32[2] _start
    (* 4    2)
    ;; float32[2] _end
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; float32[2] _start
     (dotimes (i 2)
       (sys::poke (elt _start i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _end
     (dotimes (i 2)
       (sys::poke (elt _end i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[2] _start
   (dotimes (i (length _start))
     (setf (elt _start i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _end
   (dotimes (i (length _end))
     (setf (elt _end i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get light_scan_sim::Segment :md5sum-) "a729512fcf7d3d835538035b772a6e15")
(setf (get light_scan_sim::Segment :datatype-) "light_scan_sim/Segment")
(setf (get light_scan_sim::Segment :definition-)
      "uint8 type
float32[2] start
float32[2] end

")



(provide :light_scan_sim/Segment "a729512fcf7d3d835538035b772a6e15")


