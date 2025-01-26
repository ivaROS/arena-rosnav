; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude SemanticData.msg.html

(cl:defclass <SemanticData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector pedsim_msgs-msg:SemanticDatum)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:SemanticDatum :initial-element (cl:make-instance 'pedsim_msgs-msg:SemanticDatum)))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass SemanticData (<SemanticData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<SemanticData> is deprecated: use pedsim_msgs-msg:SemanticData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SemanticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:header-val is deprecated.  Use pedsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <SemanticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:points-val is deprecated.  Use pedsim_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SemanticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:type-val is deprecated.  Use pedsim_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticData>) ostream)
  "Serializes a message object of type '<SemanticData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticData>) istream)
  "Deserializes a message object of type '<SemanticData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:SemanticDatum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticData>)))
  "Returns string type for a message object of type '<SemanticData>"
  "pedsim_msgs/SemanticData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticData)))
  "Returns string type for a message object of type 'SemanticData"
  "pedsim_msgs/SemanticData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticData>)))
  "Returns md5sum for a message object of type '<SemanticData>"
  "48872e6617331fa37bf40eb7c0a3cccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticData)))
  "Returns md5sum for a message object of type 'SemanticData"
  "48872e6617331fa37bf40eb7c0a3cccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticData>)))
  "Returns full string definition for message of type '<SemanticData>"
  (cl:format cl:nil "std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticData)))
  "Returns full string definition for message of type 'SemanticData"
  (cl:format cl:nil "std_msgs/Header header~%pedsim_msgs/SemanticDatum[] points~%string type~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pedsim_msgs/SemanticDatum~%geometry_msgs/Point location~%float32 evidence~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticData>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticData
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
    (cl:cons ':type (type msg))
))
