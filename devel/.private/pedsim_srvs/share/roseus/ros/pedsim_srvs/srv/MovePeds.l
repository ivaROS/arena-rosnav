;; Auto-generated. Do not edit!


(when (boundp 'pedsim_srvs::MovePeds)
  (if (not (find-package "PEDSIM_SRVS"))
    (make-package "PEDSIM_SRVS"))
  (shadow 'MovePeds (find-package "PEDSIM_SRVS")))
(unless (find-package "PEDSIM_SRVS::MOVEPEDS")
  (make-package "PEDSIM_SRVS::MOVEPEDS"))
(unless (find-package "PEDSIM_SRVS::MOVEPEDSREQUEST")
  (make-package "PEDSIM_SRVS::MOVEPEDSREQUEST"))
(unless (find-package "PEDSIM_SRVS::MOVEPEDSRESPONSE")
  (make-package "PEDSIM_SRVS::MOVEPEDSRESPONSE"))

(in-package "ROS")





(defclass pedsim_srvs::MovePedsRequest
  :super ros::object
  :slots (_episode ))

(defmethod pedsim_srvs::MovePedsRequest
  (:init
   (&key
    ((:episode __episode) 0)
    )
   (send-super :init)
   (setq _episode (round __episode))
   self)
  (:episode
   (&optional __episode)
   (if __episode (setq _episode __episode)) _episode)
  (:serialization-length
   ()
   (+
    ;; int16 _episode
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _episode
       (write-word _episode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _episode
     (setq _episode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass pedsim_srvs::MovePedsResponse
  :super ros::object
  :slots (_success ))

(defmethod pedsim_srvs::MovePedsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pedsim_srvs::MovePeds
  :super ros::object
  :slots ())

(setf (get pedsim_srvs::MovePeds :md5sum-) "7e70f76cdefe8786e8c6f0a9a54a958a")
(setf (get pedsim_srvs::MovePeds :datatype-) "pedsim_srvs/MovePeds")
(setf (get pedsim_srvs::MovePeds :request) pedsim_srvs::MovePedsRequest)
(setf (get pedsim_srvs::MovePeds :response) pedsim_srvs::MovePedsResponse)

(defmethod pedsim_srvs::MovePedsRequest
  (:response () (instance pedsim_srvs::MovePedsResponse :init)))

(setf (get pedsim_srvs::MovePedsRequest :md5sum-) "7e70f76cdefe8786e8c6f0a9a54a958a")
(setf (get pedsim_srvs::MovePedsRequest :datatype-) "pedsim_srvs/MovePedsRequest")
(setf (get pedsim_srvs::MovePedsRequest :definition-)
      "# Added by Junhui Li
# For moving agents dynamically in pedsim
int16 episode
---
bool success

")

(setf (get pedsim_srvs::MovePedsResponse :md5sum-) "7e70f76cdefe8786e8c6f0a9a54a958a")
(setf (get pedsim_srvs::MovePedsResponse :datatype-) "pedsim_srvs/MovePedsResponse")
(setf (get pedsim_srvs::MovePedsResponse :definition-)
      "# Added by Junhui Li
# For moving agents dynamically in pedsim
int16 episode
---
bool success

")



(provide :pedsim_srvs/MovePeds "7e70f76cdefe8786e8c6f0a9a54a958a")


