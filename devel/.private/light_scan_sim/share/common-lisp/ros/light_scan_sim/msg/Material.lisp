; Auto-generated. Do not edit!


(cl:in-package light_scan_sim-msg)


;//! \htmlinclude Material.msg.html

(cl:defclass <Material> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (min_return
    :reader min_return
    :initarg :min_return
    :type cl:float
    :initform 0.0)
   (max_return
    :reader max_return
    :initarg :max_return
    :type cl:float
    :initform 0.0)
   (angular_return
    :reader angular_return
    :initarg :angular_return
    :type cl:float
    :initform 0.0))
)

(cl:defclass Material (<Material>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Material>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Material)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_scan_sim-msg:<Material> is deprecated: use light_scan_sim-msg:Material instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:name-val is deprecated.  Use light_scan_sim-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:type-val is deprecated.  Use light_scan_sim-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:color-val is deprecated.  Use light_scan_sim-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'min_return-val :lambda-list '(m))
(cl:defmethod min_return-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:min_return-val is deprecated.  Use light_scan_sim-msg:min_return instead.")
  (min_return m))

(cl:ensure-generic-function 'max_return-val :lambda-list '(m))
(cl:defmethod max_return-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:max_return-val is deprecated.  Use light_scan_sim-msg:max_return instead.")
  (max_return m))

(cl:ensure-generic-function 'angular_return-val :lambda-list '(m))
(cl:defmethod angular_return-val ((m <Material>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:angular_return-val is deprecated.  Use light_scan_sim-msg:angular_return instead.")
  (angular_return m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Material>) ostream)
  "Serializes a message object of type '<Material>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'color))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_return))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_return))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_return))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Material>) istream)
  "Deserializes a message object of type '<Material>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'color) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'color)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_return) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_return) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_return) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Material>)))
  "Returns string type for a message object of type '<Material>"
  "light_scan_sim/Material")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Material)))
  "Returns string type for a message object of type 'Material"
  "light_scan_sim/Material")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Material>)))
  "Returns md5sum for a message object of type '<Material>"
  "be27c5f5cd5a377e88aa33527ff882a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Material)))
  "Returns md5sum for a message object of type 'Material"
  "be27c5f5cd5a377e88aa33527ff882a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Material>)))
  "Returns full string definition for message of type '<Material>"
  (cl:format cl:nil "string name  # for descriptive purposes~%string type  # opaque or transparent ~%float32[3] color  # RGB for visualization node~%float32 min_return  # 0.0 to 1.0 representing the minimum chance of return~%float32 max_return  # 0.0 to 1.0 representing the maximum chance of return~%float32 angular_return  # the chance of return lost per degree from perpendicular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Material)))
  "Returns full string definition for message of type 'Material"
  (cl:format cl:nil "string name  # for descriptive purposes~%string type  # opaque or transparent ~%float32[3] color  # RGB for visualization node~%float32 min_return  # 0.0 to 1.0 representing the minimum chance of return~%float32 max_return  # 0.0 to 1.0 representing the maximum chance of return~%float32 angular_return  # the chance of return lost per degree from perpendicular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Material>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Material>))
  "Converts a ROS message object to a list"
  (cl:list 'Material
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':color (color msg))
    (cl:cons ':min_return (min_return msg))
    (cl:cons ':max_return (max_return msg))
    (cl:cons ':angular_return (angular_return msg))
))
