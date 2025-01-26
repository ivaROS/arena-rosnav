; Auto-generated. Do not edit!


(cl:in-package barn_msgs-msg)


;//! \htmlinclude BARN_data.msg.html

(cl:defclass <BARN_data> (roslisp-msg-protocol:ros-message)
  ((scan
    :reader scan
    :initarg :scan
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_cart
    :reader goal_cart
    :initarg :goal_cart
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BARN_data (<BARN_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BARN_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BARN_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name barn_msgs-msg:<BARN_data> is deprecated: use barn_msgs-msg:BARN_data instead.")))

(cl:ensure-generic-function 'scan-val :lambda-list '(m))
(cl:defmethod scan-val ((m <BARN_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader barn_msgs-msg:scan-val is deprecated.  Use barn_msgs-msg:scan instead.")
  (scan m))

(cl:ensure-generic-function 'goal_cart-val :lambda-list '(m))
(cl:defmethod goal_cart-val ((m <BARN_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader barn_msgs-msg:goal_cart-val is deprecated.  Use barn_msgs-msg:goal_cart instead.")
  (goal_cart m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BARN_data>) ostream)
  "Serializes a message object of type '<BARN_data>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'scan))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_cart))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'goal_cart))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BARN_data>) istream)
  "Deserializes a message object of type '<BARN_data>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scan)))
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
  (cl:setf (cl:slot-value msg 'goal_cart) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_cart)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BARN_data>)))
  "Returns string type for a message object of type '<BARN_data>"
  "barn_msgs/BARN_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BARN_data)))
  "Returns string type for a message object of type 'BARN_data"
  "barn_msgs/BARN_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BARN_data>)))
  "Returns md5sum for a message object of type '<BARN_data>"
  "68e5ba558e737ae344773180a6c37ce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BARN_data)))
  "Returns md5sum for a message object of type 'BARN_data"
  "68e5ba558e737ae344773180a6c37ce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BARN_data>)))
  "Returns full string definition for message of type '<BARN_data>"
  (cl:format cl:nil "float32[] scan	  	# 720 range data from the laser scan~%float32[] goal_cart     # current goal in robot frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BARN_data)))
  "Returns full string definition for message of type 'BARN_data"
  (cl:format cl:nil "float32[] scan	  	# 720 range data from the laser scan~%float32[] goal_cart     # current goal in robot frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BARN_data>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_cart) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BARN_data>))
  "Converts a ROS message object to a list"
  (cl:list 'BARN_data
    (cl:cons ':scan (scan msg))
    (cl:cons ':goal_cart (goal_cart msg))
))
