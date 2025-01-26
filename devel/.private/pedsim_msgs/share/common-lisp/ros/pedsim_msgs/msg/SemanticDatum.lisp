; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude SemanticDatum.msg.html

(cl:defclass <SemanticDatum> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (evidence
    :reader evidence
    :initarg :evidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass SemanticDatum (<SemanticDatum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticDatum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticDatum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<SemanticDatum> is deprecated: use pedsim_msgs-msg:SemanticDatum instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <SemanticDatum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:location-val is deprecated.  Use pedsim_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'evidence-val :lambda-list '(m))
(cl:defmethod evidence-val ((m <SemanticDatum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:evidence-val is deprecated.  Use pedsim_msgs-msg:evidence instead.")
  (evidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticDatum>) ostream)
  "Serializes a message object of type '<SemanticDatum>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'evidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticDatum>) istream)
  "Deserializes a message object of type '<SemanticDatum>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'evidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticDatum>)))
  "Returns string type for a message object of type '<SemanticDatum>"
  "pedsim_msgs/SemanticDatum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticDatum)))
  "Returns string type for a message object of type 'SemanticDatum"
  "pedsim_msgs/SemanticDatum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticDatum>)))
  "Returns md5sum for a message object of type '<SemanticDatum>"
  "ad0a2aaed128f76f0b996bf1dd0aa14d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticDatum)))
  "Returns md5sum for a message object of type 'SemanticDatum"
  "ad0a2aaed128f76f0b996bf1dd0aa14d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticDatum>)))
  "Returns full string definition for message of type '<SemanticDatum>"
  (cl:format cl:nil "geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticDatum)))
  "Returns full string definition for message of type 'SemanticDatum"
  (cl:format cl:nil "geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticDatum>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticDatum>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticDatum
    (cl:cons ':location (location msg))
    (cl:cons ':evidence (evidence msg))
))
