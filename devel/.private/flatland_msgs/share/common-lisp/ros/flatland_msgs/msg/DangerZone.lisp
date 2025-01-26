; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-msg)


;//! \htmlinclude DangerZone.msg.html

(cl:defclass <DangerZone> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dangerZoneRadius
    :reader dangerZoneRadius
    :initarg :dangerZoneRadius
    :type cl:float
    :initform 0.0)
   (dangerZoneAngle
    :reader dangerZoneAngle
    :initarg :dangerZoneAngle
    :type cl:float
    :initform 0.0)
   (dangerZoneCenter
    :reader dangerZoneCenter
    :initarg :dangerZoneCenter
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DangerZone (<DangerZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DangerZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DangerZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-msg:<DangerZone> is deprecated: use flatland_msgs-msg:DangerZone instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DangerZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:header-val is deprecated.  Use flatland_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dangerZoneRadius-val :lambda-list '(m))
(cl:defmethod dangerZoneRadius-val ((m <DangerZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:dangerZoneRadius-val is deprecated.  Use flatland_msgs-msg:dangerZoneRadius instead.")
  (dangerZoneRadius m))

(cl:ensure-generic-function 'dangerZoneAngle-val :lambda-list '(m))
(cl:defmethod dangerZoneAngle-val ((m <DangerZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:dangerZoneAngle-val is deprecated.  Use flatland_msgs-msg:dangerZoneAngle instead.")
  (dangerZoneAngle m))

(cl:ensure-generic-function 'dangerZoneCenter-val :lambda-list '(m))
(cl:defmethod dangerZoneCenter-val ((m <DangerZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:dangerZoneCenter-val is deprecated.  Use flatland_msgs-msg:dangerZoneCenter instead.")
  (dangerZoneCenter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DangerZone>) ostream)
  "Serializes a message object of type '<DangerZone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dangerZoneRadius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dangerZoneAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dangerZoneCenter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'dangerZoneCenter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DangerZone>) istream)
  "Deserializes a message object of type '<DangerZone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dangerZoneRadius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dangerZoneAngle) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dangerZoneCenter) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dangerZoneCenter)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DangerZone>)))
  "Returns string type for a message object of type '<DangerZone>"
  "flatland_msgs/DangerZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DangerZone)))
  "Returns string type for a message object of type 'DangerZone"
  "flatland_msgs/DangerZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DangerZone>)))
  "Returns md5sum for a message object of type '<DangerZone>"
  "817c5f50a4ebcc8474eeb2680eb5429a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DangerZone)))
  "Returns md5sum for a message object of type 'DangerZone"
  "817c5f50a4ebcc8474eeb2680eb5429a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DangerZone>)))
  "Returns full string definition for message of type '<DangerZone>"
  (cl:format cl:nil "std_msgs/Header header~%float64 dangerZoneRadius~%float64 dangerZoneAngle~%float64[] dangerZoneCenter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DangerZone)))
  "Returns full string definition for message of type 'DangerZone"
  (cl:format cl:nil "std_msgs/Header header~%float64 dangerZoneRadius~%float64 dangerZoneAngle~%float64[] dangerZoneCenter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DangerZone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dangerZoneCenter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DangerZone>))
  "Converts a ROS message object to a list"
  (cl:list 'DangerZone
    (cl:cons ':header (header msg))
    (cl:cons ':dangerZoneRadius (dangerZoneRadius msg))
    (cl:cons ':dangerZoneAngle (dangerZoneAngle msg))
    (cl:cons ':dangerZoneCenter (dangerZoneCenter msg))
))
