; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-srv)


;//! \htmlinclude SpawnModels-request.msg.html

(cl:defclass <SpawnModels-request> (roslisp-msg-protocol:ros-message)
  ((models
    :reader models
    :initarg :models
    :type (cl:vector flatland_msgs-msg:Model)
   :initform (cl:make-array 0 :element-type 'flatland_msgs-msg:Model :initial-element (cl:make-instance 'flatland_msgs-msg:Model))))
)

(cl:defclass SpawnModels-request (<SpawnModels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<SpawnModels-request> is deprecated: use flatland_msgs-srv:SpawnModels-request instead.")))

(cl:ensure-generic-function 'models-val :lambda-list '(m))
(cl:defmethod models-val ((m <SpawnModels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:models-val is deprecated.  Use flatland_msgs-srv:models instead.")
  (models m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModels-request>) ostream)
  "Serializes a message object of type '<SpawnModels-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'models))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'models))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModels-request>) istream)
  "Deserializes a message object of type '<SpawnModels-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'models) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'models)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flatland_msgs-msg:Model))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModels-request>)))
  "Returns string type for a service object of type '<SpawnModels-request>"
  "flatland_msgs/SpawnModelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModels-request)))
  "Returns string type for a service object of type 'SpawnModels-request"
  "flatland_msgs/SpawnModelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModels-request>)))
  "Returns md5sum for a message object of type '<SpawnModels-request>"
  "25781a684ae71b6364dc4642097d5ed2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModels-request)))
  "Returns md5sum for a message object of type 'SpawnModels-request"
  "25781a684ae71b6364dc4642097d5ed2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModels-request>)))
  "Returns full string definition for message of type '<SpawnModels-request>"
  (cl:format cl:nil "flatland_msgs/Model[] models~%~%================================================================================~%MSG: flatland_msgs/Model~%string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModels-request)))
  "Returns full string definition for message of type 'SpawnModels-request"
  (cl:format cl:nil "flatland_msgs/Model[] models~%~%================================================================================~%MSG: flatland_msgs/Model~%string yaml_path~%string name~%string ns~%geometry_msgs/Pose2D pose~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModels-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'models) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModels-request
    (cl:cons ':models (models msg))
))
;//! \htmlinclude SpawnModels-response.msg.html

(cl:defclass <SpawnModels-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SpawnModels-response (<SpawnModels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnModels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnModels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<SpawnModels-response> is deprecated: use flatland_msgs-srv:SpawnModels-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnModels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:success-val is deprecated.  Use flatland_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SpawnModels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:message-val is deprecated.  Use flatland_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnModels-response>) ostream)
  "Serializes a message object of type '<SpawnModels-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnModels-response>) istream)
  "Deserializes a message object of type '<SpawnModels-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnModels-response>)))
  "Returns string type for a service object of type '<SpawnModels-response>"
  "flatland_msgs/SpawnModelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModels-response)))
  "Returns string type for a service object of type 'SpawnModels-response"
  "flatland_msgs/SpawnModelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnModels-response>)))
  "Returns md5sum for a message object of type '<SpawnModels-response>"
  "25781a684ae71b6364dc4642097d5ed2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnModels-response)))
  "Returns md5sum for a message object of type 'SpawnModels-response"
  "25781a684ae71b6364dc4642097d5ed2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnModels-response>)))
  "Returns full string definition for message of type '<SpawnModels-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnModels-response)))
  "Returns full string definition for message of type 'SpawnModels-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnModels-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnModels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnModels-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnModels)))
  'SpawnModels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnModels)))
  'SpawnModels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnModels)))
  "Returns string type for a service object of type '<SpawnModels>"
  "flatland_msgs/SpawnModels")