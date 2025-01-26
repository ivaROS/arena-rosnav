;; Auto-generated. Do not edit!


(when (boundp 'light_scan_sim::SegmentList)
  (if (not (find-package "LIGHT_SCAN_SIM"))
    (make-package "LIGHT_SCAN_SIM"))
  (shadow 'SegmentList (find-package "LIGHT_SCAN_SIM")))
(unless (find-package "LIGHT_SCAN_SIM::SEGMENTLIST")
  (make-package "LIGHT_SCAN_SIM::SEGMENTLIST"))

(in-package "ROS")
;;//! \htmlinclude SegmentList.msg.html


(defclass light_scan_sim::SegmentList
  :super ros::object
  :slots (_frame_id _segments ))

(defmethod light_scan_sim::SegmentList
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:segments __segments) ())
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _segments __segments)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; light_scan_sim/Segment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; light_scan_sim/Segment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; light_scan_sim/Segment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance light_scan_sim::Segment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get light_scan_sim::SegmentList :md5sum-) "5500c4eb6ea115455652f791f8dfcdc1")
(setf (get light_scan_sim::SegmentList :datatype-) "light_scan_sim/SegmentList")
(setf (get light_scan_sim::SegmentList :definition-)
      "string frame_id  # TF frame that 
Segment[] segments

================================================================================
MSG: light_scan_sim/Segment
uint8 type
float32[2] start
float32[2] end

")



(provide :light_scan_sim/SegmentList "5500c4eb6ea115455652f791f8dfcdc1")


