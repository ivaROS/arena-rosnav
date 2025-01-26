;; Auto-generated. Do not edit!


(when (boundp 'spencer_vision_msgs::PersonROI)
  (if (not (find-package "SPENCER_VISION_MSGS"))
    (make-package "SPENCER_VISION_MSGS"))
  (shadow 'PersonROI (find-package "SPENCER_VISION_MSGS")))
(unless (find-package "SPENCER_VISION_MSGS::PERSONROI")
  (make-package "SPENCER_VISION_MSGS::PERSONROI"))

(in-package "ROS")
;;//! \htmlinclude PersonROI.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass spencer_vision_msgs::PersonROI
  :super ros::object
  :slots (_detection_id _roi ))

(defmethod spencer_vision_msgs::PersonROI
  (:init
   (&key
    ((:detection_id __detection_id) "")
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _detection_id (string __detection_id))
   (setq _roi __roi)
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; string _detection_id
    4 (length _detection_id)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _detection_id
       (write-long (length _detection_id) s) (princ _detection_id s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _detection_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detection_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get spencer_vision_msgs::PersonROI :md5sum-) "f9f1991d1c55f9239db4a76294661291")
(setf (get spencer_vision_msgs::PersonROI :datatype-) "spencer_vision_msgs/PersonROI")
(setf (get spencer_vision_msgs::PersonROI :definition-)
      "# Message describing a rectangular region of interest in a depth or RGB image containing a part of a person (e.g. head, face, full body...), which is usually encoded in the topic title
#

string          detection_id

sensor_msgs/RegionOfInterest    roi


================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :spencer_vision_msgs/PersonROI "f9f1991d1c55f9239db4a76294661291")


