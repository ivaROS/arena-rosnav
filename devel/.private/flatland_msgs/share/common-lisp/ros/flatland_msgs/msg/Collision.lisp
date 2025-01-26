; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-msg)


;//! \htmlinclude Collision.msg.html

(cl:defclass <Collision> (roslisp-msg-protocol:ros-message)
  ((entity_A
    :reader entity_A
    :initarg :entity_A
    :type cl:string
    :initform "")
   (body_A
    :reader body_A
    :initarg :body_A
    :type cl:string
    :initform "")
   (entity_B
    :reader entity_B
    :initarg :entity_B
    :type cl:string
    :initform "")
   (body_B
    :reader body_B
    :initarg :body_B
    :type cl:string
    :initform "")
   (magnitude_forces
    :reader magnitude_forces
    :initarg :magnitude_forces
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (contact_positions
    :reader contact_positions
    :initarg :contact_positions
    :type (cl:vector flatland_msgs-msg:Vector2)
   :initform (cl:make-array 0 :element-type 'flatland_msgs-msg:Vector2 :initial-element (cl:make-instance 'flatland_msgs-msg:Vector2)))
   (contact_normals
    :reader contact_normals
    :initarg :contact_normals
    :type (cl:vector flatland_msgs-msg:Vector2)
   :initform (cl:make-array 0 :element-type 'flatland_msgs-msg:Vector2 :initial-element (cl:make-instance 'flatland_msgs-msg:Vector2))))
)

(cl:defclass Collision (<Collision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Collision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Collision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-msg:<Collision> is deprecated: use flatland_msgs-msg:Collision instead.")))

(cl:ensure-generic-function 'entity_A-val :lambda-list '(m))
(cl:defmethod entity_A-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:entity_A-val is deprecated.  Use flatland_msgs-msg:entity_A instead.")
  (entity_A m))

(cl:ensure-generic-function 'body_A-val :lambda-list '(m))
(cl:defmethod body_A-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:body_A-val is deprecated.  Use flatland_msgs-msg:body_A instead.")
  (body_A m))

(cl:ensure-generic-function 'entity_B-val :lambda-list '(m))
(cl:defmethod entity_B-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:entity_B-val is deprecated.  Use flatland_msgs-msg:entity_B instead.")
  (entity_B m))

(cl:ensure-generic-function 'body_B-val :lambda-list '(m))
(cl:defmethod body_B-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:body_B-val is deprecated.  Use flatland_msgs-msg:body_B instead.")
  (body_B m))

(cl:ensure-generic-function 'magnitude_forces-val :lambda-list '(m))
(cl:defmethod magnitude_forces-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:magnitude_forces-val is deprecated.  Use flatland_msgs-msg:magnitude_forces instead.")
  (magnitude_forces m))

(cl:ensure-generic-function 'contact_positions-val :lambda-list '(m))
(cl:defmethod contact_positions-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:contact_positions-val is deprecated.  Use flatland_msgs-msg:contact_positions instead.")
  (contact_positions m))

(cl:ensure-generic-function 'contact_normals-val :lambda-list '(m))
(cl:defmethod contact_normals-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:contact_normals-val is deprecated.  Use flatland_msgs-msg:contact_normals instead.")
  (contact_normals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Collision>) ostream)
  "Serializes a message object of type '<Collision>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'entity_A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'entity_A))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_A))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'entity_B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'entity_B))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body_B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body_B))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'magnitude_forces))))
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
   (cl:slot-value msg 'magnitude_forces))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_normals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_normals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Collision>) istream)
  "Deserializes a message object of type '<Collision>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'entity_A) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'entity_A) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_A) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_A) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'entity_B) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'entity_B) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body_B) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body_B) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'magnitude_forces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'magnitude_forces)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flatland_msgs-msg:Vector2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_normals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_normals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flatland_msgs-msg:Vector2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Collision>)))
  "Returns string type for a message object of type '<Collision>"
  "flatland_msgs/Collision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Collision)))
  "Returns string type for a message object of type 'Collision"
  "flatland_msgs/Collision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Collision>)))
  "Returns md5sum for a message object of type '<Collision>"
  "e6959bf91b31e42582e1328efe4e2953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Collision)))
  "Returns md5sum for a message object of type 'Collision"
  "e6959bf91b31e42582e1328efe4e2953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Collision>)))
  "Returns full string definition for message of type '<Collision>"
  (cl:format cl:nil "string entity_A~%string body_A~%string entity_B~%string body_B~%float64[] magnitude_forces~%Vector2[] contact_positions~%Vector2[] contact_normals~%================================================================================~%MSG: flatland_msgs/Vector2~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Collision)))
  "Returns full string definition for message of type 'Collision"
  (cl:format cl:nil "string entity_A~%string body_A~%string entity_B~%string body_B~%float64[] magnitude_forces~%Vector2[] contact_positions~%Vector2[] contact_normals~%================================================================================~%MSG: flatland_msgs/Vector2~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Collision>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'entity_A))
     4 (cl:length (cl:slot-value msg 'body_A))
     4 (cl:length (cl:slot-value msg 'entity_B))
     4 (cl:length (cl:slot-value msg 'body_B))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'magnitude_forces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_normals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Collision>))
  "Converts a ROS message object to a list"
  (cl:list 'Collision
    (cl:cons ':entity_A (entity_A msg))
    (cl:cons ':body_A (body_A msg))
    (cl:cons ':entity_B (entity_B msg))
    (cl:cons ':body_B (body_B msg))
    (cl:cons ':magnitude_forces (magnitude_forces msg))
    (cl:cons ':contact_positions (contact_positions msg))
    (cl:cons ':contact_normals (contact_normals msg))
))
