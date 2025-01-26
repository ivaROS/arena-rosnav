; Auto-generated. Do not edit!


(cl:in-package rosnav-msg)


;//! \htmlinclude ResetStackedObs.msg.html

(cl:defclass <ResetStackedObs> (roslisp-msg-protocol:ros-message)
  ((laser_scan
    :reader laser_scan
    :initarg :laser_scan
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_in_robot_frame
    :reader goal_in_robot_frame
    :initarg :goal_in_robot_frame
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (last_action
    :reader last_action
    :initarg :last_action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ResetStackedObs (<ResetStackedObs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetStackedObs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetStackedObs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosnav-msg:<ResetStackedObs> is deprecated: use rosnav-msg:ResetStackedObs instead.")))

(cl:ensure-generic-function 'laser_scan-val :lambda-list '(m))
(cl:defmethod laser_scan-val ((m <ResetStackedObs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosnav-msg:laser_scan-val is deprecated.  Use rosnav-msg:laser_scan instead.")
  (laser_scan m))

(cl:ensure-generic-function 'goal_in_robot_frame-val :lambda-list '(m))
(cl:defmethod goal_in_robot_frame-val ((m <ResetStackedObs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosnav-msg:goal_in_robot_frame-val is deprecated.  Use rosnav-msg:goal_in_robot_frame instead.")
  (goal_in_robot_frame m))

(cl:ensure-generic-function 'last_action-val :lambda-list '(m))
(cl:defmethod last_action-val ((m <ResetStackedObs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosnav-msg:last_action-val is deprecated.  Use rosnav-msg:last_action instead.")
  (last_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetStackedObs>) ostream)
  "Serializes a message object of type '<ResetStackedObs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laser_scan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'laser_scan))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_in_robot_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal_in_robot_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'last_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'last_action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetStackedObs>) istream)
  "Deserializes a message object of type '<ResetStackedObs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laser_scan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laser_scan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_in_robot_frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_in_robot_frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'last_action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'last_action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetStackedObs>)))
  "Returns string type for a message object of type '<ResetStackedObs>"
  "rosnav/ResetStackedObs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetStackedObs)))
  "Returns string type for a message object of type 'ResetStackedObs"
  "rosnav/ResetStackedObs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetStackedObs>)))
  "Returns md5sum for a message object of type '<ResetStackedObs>"
  "ac16969c4d699f9151949bedcb64bec9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetStackedObs)))
  "Returns md5sum for a message object of type 'ResetStackedObs"
  "ac16969c4d699f9151949bedcb64bec9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetStackedObs>)))
  "Returns full string definition for message of type '<ResetStackedObs>"
  (cl:format cl:nil "float32[] laser_scan~%float32[] goal_in_robot_frame~%float32[] last_action~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetStackedObs)))
  "Returns full string definition for message of type 'ResetStackedObs"
  (cl:format cl:nil "float32[] laser_scan~%float32[] goal_in_robot_frame~%float32[] last_action~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetStackedObs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laser_scan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_in_robot_frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'last_action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetStackedObs>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetStackedObs
    (cl:cons ':laser_scan (laser_scan msg))
    (cl:cons ':goal_in_robot_frame (goal_in_robot_frame msg))
    (cl:cons ':last_action (last_action msg))
))
