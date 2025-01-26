; Auto-generated. Do not edit!


(cl:in-package light_scan_sim-msg)


;//! \htmlinclude Segment.msg.html

(cl:defclass <Segment> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (end
    :reader end
    :initarg :end
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Segment (<Segment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_scan_sim-msg:<Segment> is deprecated: use light_scan_sim-msg:Segment instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:type-val is deprecated.  Use light_scan_sim-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:start-val is deprecated.  Use light_scan_sim-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:end-val is deprecated.  Use light_scan_sim-msg:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segment>) ostream)
  "Serializes a message object of type '<Segment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'start))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'end))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segment>) istream)
  "Deserializes a message object of type '<Segment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'start)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'end) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'end)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segment>)))
  "Returns string type for a message object of type '<Segment>"
  "light_scan_sim/Segment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segment)))
  "Returns string type for a message object of type 'Segment"
  "light_scan_sim/Segment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segment>)))
  "Returns md5sum for a message object of type '<Segment>"
  "a729512fcf7d3d835538035b772a6e15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segment)))
  "Returns md5sum for a message object of type 'Segment"
  "a729512fcf7d3d835538035b772a6e15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segment>)))
  "Returns full string definition for message of type '<Segment>"
  (cl:format cl:nil "uint8 type~%float32[2] start~%float32[2] end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segment)))
  "Returns full string definition for message of type 'Segment"
  (cl:format cl:nil "uint8 type~%float32[2] start~%float32[2] end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segment>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'start) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'end) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segment>))
  "Converts a ROS message object to a list"
  (cl:list 'Segment
    (cl:cons ':type (type msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
))
