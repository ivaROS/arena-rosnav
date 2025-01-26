; Auto-generated. Do not edit!


(cl:in-package arena_evaluation_msgs-srv)


;//! \htmlinclude ChangeDirectory-request.msg.html

(cl:defclass <ChangeDirectory-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeDirectory-request (<ChangeDirectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeDirectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeDirectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_evaluation_msgs-srv:<ChangeDirectory-request> is deprecated: use arena_evaluation_msgs-srv:ChangeDirectory-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ChangeDirectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_evaluation_msgs-srv:data-val is deprecated.  Use arena_evaluation_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeDirectory-request>) ostream)
  "Serializes a message object of type '<ChangeDirectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeDirectory-request>) istream)
  "Deserializes a message object of type '<ChangeDirectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeDirectory-request>)))
  "Returns string type for a service object of type '<ChangeDirectory-request>"
  "arena_evaluation_msgs/ChangeDirectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeDirectory-request)))
  "Returns string type for a service object of type 'ChangeDirectory-request"
  "arena_evaluation_msgs/ChangeDirectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeDirectory-request>)))
  "Returns md5sum for a message object of type '<ChangeDirectory-request>"
  "cf7f66ec69e8f7a3a02023f271c1213d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeDirectory-request)))
  "Returns md5sum for a message object of type 'ChangeDirectory-request"
  "cf7f66ec69e8f7a3a02023f271c1213d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeDirectory-request>)))
  "Returns full string definition for message of type '<ChangeDirectory-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeDirectory-request)))
  "Returns full string definition for message of type 'ChangeDirectory-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeDirectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeDirectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeDirectory-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ChangeDirectory-response.msg.html

(cl:defclass <ChangeDirectory-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeDirectory-response (<ChangeDirectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeDirectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeDirectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arena_evaluation_msgs-srv:<ChangeDirectory-response> is deprecated: use arena_evaluation_msgs-srv:ChangeDirectory-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangeDirectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arena_evaluation_msgs-srv:result-val is deprecated.  Use arena_evaluation_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeDirectory-response>) ostream)
  "Serializes a message object of type '<ChangeDirectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeDirectory-response>) istream)
  "Deserializes a message object of type '<ChangeDirectory-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeDirectory-response>)))
  "Returns string type for a service object of type '<ChangeDirectory-response>"
  "arena_evaluation_msgs/ChangeDirectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeDirectory-response)))
  "Returns string type for a service object of type 'ChangeDirectory-response"
  "arena_evaluation_msgs/ChangeDirectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeDirectory-response>)))
  "Returns md5sum for a message object of type '<ChangeDirectory-response>"
  "cf7f66ec69e8f7a3a02023f271c1213d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeDirectory-response)))
  "Returns md5sum for a message object of type 'ChangeDirectory-response"
  "cf7f66ec69e8f7a3a02023f271c1213d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeDirectory-response>)))
  "Returns full string definition for message of type '<ChangeDirectory-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeDirectory-response)))
  "Returns full string definition for message of type 'ChangeDirectory-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeDirectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeDirectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeDirectory-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeDirectory)))
  'ChangeDirectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeDirectory)))
  'ChangeDirectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeDirectory)))
  "Returns string type for a service object of type '<ChangeDirectory>"
  "arena_evaluation_msgs/ChangeDirectory")