; Auto-generated. Do not edit!


(cl:in-package light_scan_sim-msg)


;//! \htmlinclude SegmentList.msg.html

(cl:defclass <SegmentList> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector light_scan_sim-msg:Segment)
   :initform (cl:make-array 0 :element-type 'light_scan_sim-msg:Segment :initial-element (cl:make-instance 'light_scan_sim-msg:Segment))))
)

(cl:defclass SegmentList (<SegmentList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_scan_sim-msg:<SegmentList> is deprecated: use light_scan_sim-msg:SegmentList instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SegmentList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:frame_id-val is deprecated.  Use light_scan_sim-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <SegmentList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:segments-val is deprecated.  Use light_scan_sim-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentList>) ostream)
  "Serializes a message object of type '<SegmentList>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentList>) istream)
  "Deserializes a message object of type '<SegmentList>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'light_scan_sim-msg:Segment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentList>)))
  "Returns string type for a message object of type '<SegmentList>"
  "light_scan_sim/SegmentList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentList)))
  "Returns string type for a message object of type 'SegmentList"
  "light_scan_sim/SegmentList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentList>)))
  "Returns md5sum for a message object of type '<SegmentList>"
  "5500c4eb6ea115455652f791f8dfcdc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentList)))
  "Returns md5sum for a message object of type 'SegmentList"
  "5500c4eb6ea115455652f791f8dfcdc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentList>)))
  "Returns full string definition for message of type '<SegmentList>"
  (cl:format cl:nil "string frame_id  # TF frame that ~%Segment[] segments~%~%================================================================================~%MSG: light_scan_sim/Segment~%uint8 type~%float32[2] start~%float32[2] end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentList)))
  "Returns full string definition for message of type 'SegmentList"
  (cl:format cl:nil "string frame_id  # TF frame that ~%Segment[] segments~%~%================================================================================~%MSG: light_scan_sim/Segment~%uint8 type~%float32[2] start~%float32[2] end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentList>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentList>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentList
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':segments (segments msg))
))
