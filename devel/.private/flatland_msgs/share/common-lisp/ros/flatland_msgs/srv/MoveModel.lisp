; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-srv)


;//! \htmlinclude MoveModel-request.msg.html

(cl:defclass <MoveModel-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass MoveModel-request (<MoveModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<MoveModel-request> is deprecated: use flatland_msgs-srv:MoveModel-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MoveModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:name-val is deprecated.  Use flatland_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:pose-val is deprecated.  Use flatland_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveModel-request>) ostream)
  "Serializes a message object of type '<MoveModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveModel-request>) istream)
  "Deserializes a message object of type '<MoveModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveModel-request>)))
  "Returns string type for a service object of type '<MoveModel-request>"
  "flatland_msgs/MoveModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveModel-request)))
  "Returns string type for a service object of type 'MoveModel-request"
  "flatland_msgs/MoveModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveModel-request>)))
  "Returns md5sum for a message object of type '<MoveModel-request>"
  "47b5f16cf15e326c7400f4504d3a0f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveModel-request)))
  "Returns md5sum for a message object of type 'MoveModel-request"
  "47b5f16cf15e326c7400f4504d3a0f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveModel-request>)))
  "Returns full string definition for message of type '<MoveModel-request>"
  (cl:format cl:nil "string name~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveModel-request)))
  "Returns full string definition for message of type 'MoveModel-request"
  (cl:format cl:nil "string name~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveModel-request
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude MoveModel-response.msg.html

(cl:defclass <MoveModel-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MoveModel-response (<MoveModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<MoveModel-response> is deprecated: use flatland_msgs-srv:MoveModel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:success-val is deprecated.  Use flatland_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MoveModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:message-val is deprecated.  Use flatland_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveModel-response>) ostream)
  "Serializes a message object of type '<MoveModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveModel-response>) istream)
  "Deserializes a message object of type '<MoveModel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveModel-response>)))
  "Returns string type for a service object of type '<MoveModel-response>"
  "flatland_msgs/MoveModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveModel-response)))
  "Returns string type for a service object of type 'MoveModel-response"
  "flatland_msgs/MoveModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveModel-response>)))
  "Returns md5sum for a message object of type '<MoveModel-response>"
  "47b5f16cf15e326c7400f4504d3a0f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveModel-response)))
  "Returns md5sum for a message object of type 'MoveModel-response"
  "47b5f16cf15e326c7400f4504d3a0f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveModel-response>)))
  "Returns full string definition for message of type '<MoveModel-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveModel-response)))
  "Returns full string definition for message of type 'MoveModel-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveModel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveModel-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveModel)))
  'MoveModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveModel)))
  'MoveModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveModel)))
  "Returns string type for a service object of type '<MoveModel>"
  "flatland_msgs/MoveModel")