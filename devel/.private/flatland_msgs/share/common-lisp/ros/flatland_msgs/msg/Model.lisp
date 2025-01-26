; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-msg)


;//! \htmlinclude Model.msg.html

(cl:defclass <Model> (roslisp-msg-protocol:ros-message)
  ((yaml_path
    :reader yaml_path
    :initarg :yaml_path
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass Model (<Model>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Model>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Model)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-msg:<Model> is deprecated: use flatland_msgs-msg:Model instead.")))

(cl:ensure-generic-function 'yaml_path-val :lambda-list '(m))
(cl:defmethod yaml_path-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:yaml_path-val is deprecated.  Use flatland_msgs-msg:yaml_path instead.")
  (yaml_path m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:name-val is deprecated.  Use flatland_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:ns-val is deprecated.  Use flatland_msgs-msg:ns instead.")
  (ns m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Model>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-msg:pose-val is deprecated.  Use flatland_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Model>) ostream)
  "Serializes a message object of type '<Model>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yaml_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yaml_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Model>) istream)
  "Deserializes a message object of type '<Model>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaml_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yaml_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Model>)))
  "Returns string type for a message object of type '<Model>"
  "flatland_msgs/Model")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Model)))
  "Returns string type for a message object of type 'Model"
  "flatland_msgs/Model")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Model>)))
  "Returns md5sum for a message object of type '<Model>"
  "80a53491758229753f499a612e2e7065")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Model)))
  "Returns md5sum for a message object of type 'Model"
  "80a53491758229753f499a612e2e7065")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Model>)))
  "Returns full string definition for message of type '<Model>"
  (cl:format cl:nil "string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Model)))
  "Returns full string definition for message of type 'Model"
  (cl:format cl:nil "string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Model>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'yaml_path))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'ns))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Model>))
  "Converts a ROS message object to a list"
  (cl:list 'Model
    (cl:cons ':yaml_path (yaml_path msg))
    (cl:cons ':name (name msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':pose (pose msg))
))
