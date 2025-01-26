; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude Dock-request.msg.html

(cl:defclass <Dock-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (stop_topic
    :reader stop_topic
    :initarg :stop_topic
    :type cl:string
    :initform "")
   (stop_message_field
    :reader stop_message_field
    :initarg :stop_message_field
    :type cl:string
    :initform "")
   (stop_compare_value
    :reader stop_compare_value
    :initarg :stop_compare_value
    :type cl:boolean
    :initform cl:nil)
   (dist_threshold
    :reader dist_threshold
    :initarg :dist_threshold
    :type cl:float
    :initform 0.0))
)

(cl:defclass Dock-request (<Dock-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dock-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dock-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<Dock-request> is deprecated: use cob_srvs-srv:Dock-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:frame_id-val is deprecated.  Use cob_srvs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:poses-val is deprecated.  Use cob_srvs-srv:poses instead.")
  (poses m))

(cl:ensure-generic-function 'stop_topic-val :lambda-list '(m))
(cl:defmethod stop_topic-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:stop_topic-val is deprecated.  Use cob_srvs-srv:stop_topic instead.")
  (stop_topic m))

(cl:ensure-generic-function 'stop_message_field-val :lambda-list '(m))
(cl:defmethod stop_message_field-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:stop_message_field-val is deprecated.  Use cob_srvs-srv:stop_message_field instead.")
  (stop_message_field m))

(cl:ensure-generic-function 'stop_compare_value-val :lambda-list '(m))
(cl:defmethod stop_compare_value-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:stop_compare_value-val is deprecated.  Use cob_srvs-srv:stop_compare_value instead.")
  (stop_compare_value m))

(cl:ensure-generic-function 'dist_threshold-val :lambda-list '(m))
(cl:defmethod dist_threshold-val ((m <Dock-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:dist_threshold-val is deprecated.  Use cob_srvs-srv:dist_threshold instead.")
  (dist_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dock-request>) ostream)
  "Serializes a message object of type '<Dock-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stop_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stop_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stop_message_field))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stop_message_field))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_compare_value) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dock-request>) istream)
  "Deserializes a message object of type '<Dock-request>"
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
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stop_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_message_field) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stop_message_field) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'stop_compare_value) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_threshold) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dock-request>)))
  "Returns string type for a service object of type '<Dock-request>"
  "cob_srvs/DockRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dock-request)))
  "Returns string type for a service object of type 'Dock-request"
  "cob_srvs/DockRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dock-request>)))
  "Returns md5sum for a message object of type '<Dock-request>"
  "c80e493964d9d49f37dbb6ac87283f34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dock-request)))
  "Returns md5sum for a message object of type 'Dock-request"
  "c80e493964d9d49f37dbb6ac87283f34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dock-request>)))
  "Returns full string definition for message of type '<Dock-request>"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Pose[] poses~%string stop_topic~%string stop_message_field~%bool stop_compare_value~%float32 dist_threshold~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dock-request)))
  "Returns full string definition for message of type 'Dock-request"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Pose[] poses~%string stop_topic~%string stop_message_field~%bool stop_compare_value~%float32 dist_threshold~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dock-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'stop_topic))
     4 (cl:length (cl:slot-value msg 'stop_message_field))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dock-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Dock-request
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':poses (poses msg))
    (cl:cons ':stop_topic (stop_topic msg))
    (cl:cons ':stop_message_field (stop_message_field msg))
    (cl:cons ':stop_compare_value (stop_compare_value msg))
    (cl:cons ':dist_threshold (dist_threshold msg))
))
;//! \htmlinclude Dock-response.msg.html

(cl:defclass <Dock-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Dock-response (<Dock-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dock-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dock-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<Dock-response> is deprecated: use cob_srvs-srv:Dock-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Dock-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Dock-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:message-val is deprecated.  Use cob_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dock-response>) ostream)
  "Serializes a message object of type '<Dock-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dock-response>) istream)
  "Deserializes a message object of type '<Dock-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dock-response>)))
  "Returns string type for a service object of type '<Dock-response>"
  "cob_srvs/DockResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dock-response)))
  "Returns string type for a service object of type 'Dock-response"
  "cob_srvs/DockResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dock-response>)))
  "Returns md5sum for a message object of type '<Dock-response>"
  "c80e493964d9d49f37dbb6ac87283f34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dock-response)))
  "Returns md5sum for a message object of type 'Dock-response"
  "c80e493964d9d49f37dbb6ac87283f34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dock-response>)))
  "Returns full string definition for message of type '<Dock-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dock-response)))
  "Returns full string definition for message of type 'Dock-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dock-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dock-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Dock-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Dock)))
  'Dock-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Dock)))
  'Dock-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dock)))
  "Returns string type for a service object of type '<Dock>"
  "cob_srvs/Dock")