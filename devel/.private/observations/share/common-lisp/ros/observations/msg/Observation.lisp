; Auto-generated. Do not edit!


(cl:in-package observations-msg)


;//! \htmlinclude Observation.msg.html

(cl:defclass <Observation> (roslisp-msg-protocol:ros-message)
  ((observation
    :reader observation
    :initarg :observation
    :type (cl:vector cl:float)
   :initform (cl:make-array 362 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Observation (<Observation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Observation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Observation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name observations-msg:<Observation> is deprecated: use observations-msg:Observation instead.")))

(cl:ensure-generic-function 'observation-val :lambda-list '(m))
(cl:defmethod observation-val ((m <Observation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader observations-msg:observation-val is deprecated.  Use observations-msg:observation instead.")
  (observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Observation>) ostream)
  "Serializes a message object of type '<Observation>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'observation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Observation>) istream)
  "Deserializes a message object of type '<Observation>"
  (cl:setf (cl:slot-value msg 'observation) (cl:make-array 362))
  (cl:let ((vals (cl:slot-value msg 'observation)))
    (cl:dotimes (i 362)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Observation>)))
  "Returns string type for a message object of type '<Observation>"
  "observations/Observation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Observation)))
  "Returns string type for a message object of type 'Observation"
  "observations/Observation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Observation>)))
  "Returns md5sum for a message object of type '<Observation>"
  "7f736eba6ff4f01375d960ed884fae68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Observation)))
  "Returns md5sum for a message object of type 'Observation"
  "7f736eba6ff4f01375d960ed884fae68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Observation>)))
  "Returns full string definition for message of type '<Observation>"
  (cl:format cl:nil "float32[362] observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Observation)))
  "Returns full string definition for message of type 'Observation"
  (cl:format cl:nil "float32[362] observation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Observation>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'observation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Observation>))
  "Converts a ROS message object to a list"
  (cl:list 'Observation
    (cl:cons ':observation (observation msg))
))
