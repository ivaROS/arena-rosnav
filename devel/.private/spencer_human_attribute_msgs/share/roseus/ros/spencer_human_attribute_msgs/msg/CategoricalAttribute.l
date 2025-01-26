;; Auto-generated. Do not edit!


(when (boundp 'spencer_human_attribute_msgs::CategoricalAttribute)
  (if (not (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS"))
    (make-package "SPENCER_HUMAN_ATTRIBUTE_MSGS"))
  (shadow 'CategoricalAttribute (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS")))
(unless (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE")
  (make-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude CategoricalAttribute.msg.html


(intern "*GENDER*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*GENDER* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*GENDER* "gender")
(intern "*AGE_GROUP*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP* "age_group")
(intern "*GENDER_MALE*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*GENDER_MALE* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*GENDER_MALE* "male")
(intern "*GENDER_FEMALE*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*GENDER_FEMALE* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*GENDER_FEMALE* "female")
(intern "*AGE_GROUP_0_TO_2*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_0_TO_2* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_0_TO_2* "0-2")
(intern "*AGE_GROUP_3_TO_7*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_3_TO_7* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_3_TO_7* "3-7")
(intern "*AGE_GROUP_8_TO_12*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_8_TO_12* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_8_TO_12* "8-12")
(intern "*AGE_GROUP_13_TO_19*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_13_TO_19* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_13_TO_19* "13-19")
(intern "*AGE_GROUP_20_TO_36*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_20_TO_36* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_20_TO_36* "20-36")
(intern "*AGE_GROUP_37_TO_65*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_37_TO_65* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_37_TO_65* "37-65")
(intern "*AGE_GROUP_66_TO_99*" (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(shadow '*AGE_GROUP_66_TO_99* (find-package "SPENCER_HUMAN_ATTRIBUTE_MSGS::CATEGORICALATTRIBUTE"))
(defconstant spencer_human_attribute_msgs::CategoricalAttribute::*AGE_GROUP_66_TO_99* "66-99")

(defun spencer_human_attribute_msgs::CategoricalAttribute-to-symbol (const)
  (cond
        (t nil)))

(defclass spencer_human_attribute_msgs::CategoricalAttribute
  :super ros::object
  :slots (_subject_id _type _values _confidences ))

(defmethod spencer_human_attribute_msgs::CategoricalAttribute
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:type __type) "")
    ((:values __values) (let (r) (dotimes (i 0) (push "" r)) r))
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
    ;; string[] _values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _values)) 4
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
     ;; string[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (write-long (length elem) s) (princ elem s)
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
   ;; string[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get spencer_human_attribute_msgs::CategoricalAttribute :md5sum-) "5532cab1a071685034cd6fae28718973")
(setf (get spencer_human_attribute_msgs::CategoricalAttribute :datatype-) "spencer_human_attribute_msgs/CategoricalAttribute")
(setf (get spencer_human_attribute_msgs::CategoricalAttribute :definition-)
      "string                  subject_id              # either an observation ID or a track ID (if information has been integrated over time); should be encoded in topic name
string                  type                    # type of the attribute, see constants below

string[]                values                  # values, each value also should have a confidence, highest-confidence attribute should come first
float32[]               confidences             # corresponding confidences should sum up to 1.0, highest confidence comes first


##################################################
### Constants for categorical attribute types. ###
##################################################

string      GENDER        = gender
string      AGE_GROUP     = age_group

###################################################
### Constants for categorical attribute values. ###
###################################################

string      GENDER_MALE             = male
string      GENDER_FEMALE           = female

# Age groups are based upon the categories from the \"Images Of Groups\" RGB database
string      AGE_GROUP_0_TO_2        = 0-2
string      AGE_GROUP_3_TO_7        = 3-7
string      AGE_GROUP_8_TO_12       = 8-12
string      AGE_GROUP_13_TO_19      = 13-19
string      AGE_GROUP_20_TO_36      = 20-36
string      AGE_GROUP_37_TO_65      = 37-65
string      AGE_GROUP_66_TO_99      = 66-99




")



(provide :spencer_human_attribute_msgs/CategoricalAttribute "5532cab1a071685034cd6fae28718973")


