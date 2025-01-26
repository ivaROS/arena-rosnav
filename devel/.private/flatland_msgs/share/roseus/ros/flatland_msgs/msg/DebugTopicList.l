;; Auto-generated. Do not edit!


(when (boundp 'flatland_msgs::DebugTopicList)
  (if (not (find-package "FLATLAND_MSGS"))
    (make-package "FLATLAND_MSGS"))
  (shadow 'DebugTopicList (find-package "FLATLAND_MSGS")))
(unless (find-package "FLATLAND_MSGS::DEBUGTOPICLIST")
  (make-package "FLATLAND_MSGS::DEBUGTOPICLIST"))

(in-package "ROS")
;;//! \htmlinclude DebugTopicList.msg.html


(defclass flatland_msgs::DebugTopicList
  :super ros::object
  :slots (_topics ))

(defmethod flatland_msgs::DebugTopicList
  (:init
   (&key
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _topics __topics)
   self)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:serialization-length
   ()
   (+
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flatland_msgs::DebugTopicList :md5sum-) "b0eef9a05d4e829092fc2f2c3c2aad3d")
(setf (get flatland_msgs::DebugTopicList :datatype-) "flatland_msgs/DebugTopicList")
(setf (get flatland_msgs::DebugTopicList :definition-)
      "string[] topics
")



(provide :flatland_msgs/DebugTopicList "b0eef9a05d4e829092fc2f2c3c2aad3d")


