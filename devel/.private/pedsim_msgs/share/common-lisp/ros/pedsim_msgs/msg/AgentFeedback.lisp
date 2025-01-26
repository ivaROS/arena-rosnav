; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude AgentFeedback.msg.html

(cl:defclass <AgentFeedback> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (social_state
    :reader social_state
    :initarg :social_state
    :type cl:string
    :initform "")
   (vmax
    :reader vmax
    :initarg :vmax
    :type cl:float
    :initform 0.0))
)

(cl:defclass AgentFeedback (<AgentFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<AgentFeedback> is deprecated: use pedsim_msgs-msg:AgentFeedback instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AgentFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:id-val is deprecated.  Use pedsim_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <AgentFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:force-val is deprecated.  Use pedsim_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'social_state-val :lambda-list '(m))
(cl:defmethod social_state-val ((m <AgentFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:social_state-val is deprecated.  Use pedsim_msgs-msg:social_state instead.")
  (social_state m))

(cl:ensure-generic-function 'vmax-val :lambda-list '(m))
(cl:defmethod vmax-val ((m <AgentFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:vmax-val is deprecated.  Use pedsim_msgs-msg:vmax instead.")
  (vmax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentFeedback>) ostream)
  "Serializes a message object of type '<AgentFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'social_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'social_state))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentFeedback>) istream)
  "Deserializes a message object of type '<AgentFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'social_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'social_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vmax) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentFeedback>)))
  "Returns string type for a message object of type '<AgentFeedback>"
  "pedsim_msgs/AgentFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentFeedback)))
  "Returns string type for a message object of type 'AgentFeedback"
  "pedsim_msgs/AgentFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentFeedback>)))
  "Returns md5sum for a message object of type '<AgentFeedback>"
  "16b4e5ba3766183aa44251605e9788a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentFeedback)))
  "Returns md5sum for a message object of type 'AgentFeedback"
  "16b4e5ba3766183aa44251605e9788a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentFeedback>)))
  "Returns full string definition for message of type '<AgentFeedback>"
  (cl:format cl:nil "string id~%geometry_msgs/Vector3 force~%string social_state~%float64 vmax~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentFeedback)))
  "Returns full string definition for message of type 'AgentFeedback"
  (cl:format cl:nil "string id~%geometry_msgs/Vector3 force~%string social_state~%float64 vmax~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     4 (cl:length (cl:slot-value msg 'social_state))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentFeedback
    (cl:cons ':id (id msg))
    (cl:cons ':force (force msg))
    (cl:cons ':social_state (social_state msg))
    (cl:cons ':vmax (vmax msg))
))
