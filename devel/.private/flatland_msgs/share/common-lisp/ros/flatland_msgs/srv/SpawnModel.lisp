; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-srv)


;//! \htmlinclude SpawnModel-request.msg.html

(cl:defclass <SpawnModel-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpawnModel-request (<SpawnModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<SpawnModel-request> is deprecated: use flatland_msgs-srv:SpawnModel-request instead.")))

(cl:ensure-generic-function 'yaml_path-val :lambda-list '(m))
(cl:defmethod yaml_path-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:yaml_path-val is deprecated.  Use flatland_msgs-srv:yaml_path instead.")
  (yaml_path m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:name-val is deprecated.  Use flatland_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:ns-val is deprecated.  Use flatland_msgs-srv:ns instead.")
  (ns m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SpawnModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:pose-val is deprecated.  Use flatland_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModel-request>) ostream)
  "Serializes a message object of type '<SpawnModel-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModel-request>) istream)
  "Deserializes a message object of type '<SpawnModel-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModel-request>)))
  "Returns string type for a service object of type '<SpawnModel-request>"
  "flatland_msgs/SpawnModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel-request)))
  "Returns string type for a service object of type 'SpawnModel-request"
  "flatland_msgs/SpawnModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModel-request>)))
  "Returns md5sum for a message object of type '<SpawnModel-request>"
  "952237af09cbedc354d376afc6d2fc71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModel-request)))
  "Returns md5sum for a message object of type 'SpawnModel-request"
  "952237af09cbedc354d376afc6d2fc71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModel-request>)))
  "Returns full string definition for message of type '<SpawnModel-request>"
  (cl:format cl:nil "string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModel-request)))
  "Returns full string definition for message of type 'SpawnModel-request"
  (cl:format cl:nil "string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'yaml_path))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'ns))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModel-request
    (cl:cons ':yaml_path (yaml_path msg))
    (cl:cons ':name (name msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SpawnModel-response.msg.html

(cl:defclass <SpawnModel-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpawnModel-response (<SpawnModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<SpawnModel-response> is deprecated: use flatland_msgs-srv:SpawnModel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:success-val is deprecated.  Use flatland_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SpawnModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:message-val is deprecated.  Use flatland_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModel-response>) ostream)
  "Serializes a message object of type '<SpawnModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModel-response>) istream)
  "Deserializes a message object of type '<SpawnModel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModel-response>)))
  "Returns string type for a service object of type '<SpawnModel-response>"
  "flatland_msgs/SpawnModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel-response)))
  "Returns string type for a service object of type 'SpawnModel-response"
  "flatland_msgs/SpawnModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModel-response>)))
  "Returns md5sum for a message object of type '<SpawnModel-response>"
  "952237af09cbedc354d376afc6d2fc71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModel-response)))
  "Returns md5sum for a message object of type 'SpawnModel-response"
  "952237af09cbedc354d376afc6d2fc71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModel-response>)))
  "Returns full string definition for message of type '<SpawnModel-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModel-response)))
  "Returns full string definition for message of type 'SpawnModel-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModel-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnModel)))
  'SpawnModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnModel)))
  'SpawnModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModel)))
  "Returns string type for a service object of type '<SpawnModel>"
  "flatland_msgs/SpawnModel")