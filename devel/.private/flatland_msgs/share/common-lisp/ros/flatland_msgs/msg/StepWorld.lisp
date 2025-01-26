; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-msg)


;//! \htmlinclude StepWorld.msg.html

(cl:defclass <StepWorld> (roslisp-msg-protocol:ros-message)
  ((required_time
    :reader required_time
    :initarg :required_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass StepWorld (<StepWorld>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepWorld>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepWorld)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-msg:<StepWorld> is deprecated: use flatland_msgs-msg:StepWorld instead.")))

(cl:ensure-generic-function 'required_time-val :lambda-list '(m))
(cl:defmethod required_time-val ((m <StepWorld>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:required_time-val is deprecated.  Use flatland_msgs-msg:required_time instead.")
  (required_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepWorld>) ostream)
  "Serializes a message object of type '<StepWorld>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'required_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepWorld>) istream)
  "Deserializes a message object of type '<StepWorld>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'required_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepWorld>)))
  "Returns string type for a message object of type '<StepWorld>"
  "flatland_msgs/StepWorld")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepWorld)))
  "Returns string type for a message object of type 'StepWorld"
  "flatland_msgs/StepWorld")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepWorld>)))
  "Returns md5sum for a message object of type '<StepWorld>"
  "db98664cbe4523fcf94ecdf73a95fa46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepWorld)))
  "Returns md5sum for a message object of type 'StepWorld"
  "db98664cbe4523fcf94ecdf73a95fa46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepWorld>)))
  "Returns full string definition for message of type '<StepWorld>"
  (cl:format cl:nil "float32 required_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepWorld)))
  "Returns full string definition for message of type 'StepWorld"
  (cl:format cl:nil "float32 required_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepWorld>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepWorld>))
  "Converts a ROS message object to a list"
  (cl:list 'StepWorld
    (cl:cons ':required_time (required_time msg))
))
