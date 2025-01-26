;; Auto-generated. Do not edit!


(when (boundp 'spencer_human_attribute_msgs::ScalarAttribute)
  (if (not (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS"))
    (make-package "SPENCER_HUMAN_ATTRIBUTE_MSGS"))
  (shadow 'ScalarAttribute (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS")))
(unless (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::SCALARATTRIBUTE")
  (make-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::SCALARATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude ScalarAttribute.msg.html


(intern "*PERSON_HEIGHT*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::SCALARATTRIBUTE"))
(shadow '*PERSON_HEIGHT* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::SCALARATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::ScalarAttribute::*PERSON_HEIGHT* "person_height")

(defun spencer_human_attribute_msgs::ScalarAttribute-to-symbol (const)
  (cond
        (t nil)))

(defclass spencer_human_attribute_msgs::ScalarAttribute
  :super ros::object
  :slots (_subject_id _type _values _confidences ))

(defmethod spencer_human_attribute_msgs::ScalarAttribute
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:type __type) "")
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:confidences __confidences) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _type (string __type))
   (setq _values __values)
   (setq _confidences __confidences)
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:confidences
   (&optional __confidences)
   (if __confidences (setq _confidences __confidences)) _confidences)
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; string _type
    4 (length _type)
    ;; float32[] _values
    (* 4    (length _values)) 4
    ;; float32[] _confidences
    (* 4    (length _confidences)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _confidences
     (write-long (length _confidences) s)
     (dotimes (i (length _confidences))
       (sys::poke (elt _confidences i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _confidences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidences (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidences i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get spencer_human_attribute_msgs::ScalarAttribute :md5sum-) "16a46ad49f6ca8d5afb1b788b63260f7")
(setf (get spencer_human_attribute_msgs::ScalarAttribute :datatype-) "spencer_human_attribute_msgs/ScalarAttribute")
(setf (get spencer_human_attribute_msgs::ScalarAttribute :definition-)
      "string                  subject_id              # either an observation ID or a track ID (if information has been integrated over time); should be encoded in topic name
string                  type                    # type of the attribute, see constants below

float32[]               values                  # values, each value also should have a confidence; highest-confidence value comes first!
float32[]               confidences             # corresponding confidences should sum up to 1.0


###########################################
### Constants for scalar attribute types. #
###########################################

string      PERSON_HEIGHT        = person_height

")



(provide :spencer_human_attribute_msgs/ScalarAttribute "16a46ad49f6ca8d5afb1b788b63260f7")


