; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-msg)


;//! \htmlinclude DebugTopicList.msg.html

(cl:defclass <DebugTopicList> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DebugTopicList (<DebugTopicList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugTopicList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugTopicList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-msg:<DebugTopicList> is deprecated: use flatland_msgs-msg:DebugTopicList instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <DebugTopicList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:topics-val is deprecated.  Use flatland_msgs-msg:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugTopicList>) ostream)
  "Serializes a message object of type '<DebugTopicList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'topics))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugTopicList>) istream)
  "Deserializes a message object of type '<DebugTopicList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugTopicList>)))
  "Returns string type for a message object of type '<DebugTopicList>"
  "flatland_msgs/DebugTopicList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugTopicList)))
  "Returns string type for a message object of type 'DebugTopicList"
  "flatland_msgs/DebugTopicList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugTopicList>)))
  "Returns md5sum for a message object of type '<DebugTopicList>"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugTopicList)))
  "Returns md5sum for a message object of type 'DebugTopicList"
  "b0eef9a05d4e829092fc2f2c3c2aad3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugTopicList>)))
  "Returns full string definition for message of type '<DebugTopicList>"
  (cl:format cl:nil "string[] topics~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugTopicList)))
  "Returns full string definition for message of type 'DebugTopicList"
  (cl:format cl:nil "string[] topics~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugTopicList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugTopicList>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugTopicList
    (cl:cons ':topics (topics msg))
))
