; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude RegisterRobot-request.msg.html

(cl:defclass <RegisterRobot-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (odom_topic
    :reader odom_topic
    :initarg :odom_topic
    :type cl:string
    :initform "")
   (yaml_path
    :reader yaml_path
    :initarg :yaml_path
    :type cl:string
    :initform ""))
)

(cl:defclass RegisterRobot-request (<RegisterRobot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterRobot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterRobot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<RegisterRobot-request> is deprecated: use pedsim_srvs-srv:RegisterRobot-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RegisterRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:name-val is deprecated.  Use pedsim_srvs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'odom_topic-val :lambda-list '(m))
(cl:defmethod odom_topic-val ((m <RegisterRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:odom_topic-val is deprecated.  Use pedsim_srvs-srv:odom_topic instead.")
  (odom_topic m))

(cl:ensure-generic-function 'yaml_path-val :lambda-list '(m))
(cl:defmethod yaml_path-val ((m <RegisterRobot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:yaml_path-val is deprecated.  Use pedsim_srvs-srv:yaml_path instead.")
  (yaml_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterRobot-request>) ostream)
  "Serializes a message object of type '<RegisterRobot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'odom_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'odom_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'yaml_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'yaml_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterRobot-request>) istream)
  "Deserializes a message object of type '<RegisterRobot-request>"
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
      (cl:setf (cl:slot-value msg 'odom_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'odom_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaml_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'yaml_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterRobot-request>)))
  "Returns string type for a service object of type '<RegisterRobot-request>"
  "pedsim_srvs/RegisterRobotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterRobot-request)))
  "Returns string type for a service object of type 'RegisterRobot-request"
  "pedsim_srvs/RegisterRobotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterRobot-request>)))
  "Returns md5sum for a message object of type '<RegisterRobot-request>"
  "647c18b52962c6a7651146d18ac24de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterRobot-request)))
  "Returns md5sum for a message object of type 'RegisterRobot-request"
  "647c18b52962c6a7651146d18ac24de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterRobot-request>)))
  "Returns full string definition for message of type '<RegisterRobot-request>"
  (cl:format cl:nil "string name~%string odom_topic~%string yaml_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterRobot-request)))
  "Returns full string definition for message of type 'RegisterRobot-request"
  (cl:format cl:nil "string name~%string odom_topic~%string yaml_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterRobot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'odom_topic))
     4 (cl:length (cl:slot-value msg 'yaml_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterRobot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterRobot-request
    (cl:cons ':name (name msg))
    (cl:cons ':odom_topic (odom_topic msg))
    (cl:cons ':yaml_path (yaml_path msg))
))
;//! \htmlinclude RegisterRobot-response.msg.html

(cl:defclass <RegisterRobot-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegisterRobot-response (<RegisterRobot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterRobot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterRobot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<RegisterRobot-response> is deprecated: use pedsim_srvs-srv:RegisterRobot-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegisterRobot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterRobot-response>) ostream)
  "Serializes a message object of type '<RegisterRobot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterRobot-response>) istream)
  "Deserializes a message object of type '<RegisterRobot-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterRobot-response>)))
  "Returns string type for a service object of type '<RegisterRobot-response>"
  "pedsim_srvs/RegisterRobotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterRobot-response)))
  "Returns string type for a service object of type 'RegisterRobot-response"
  "pedsim_srvs/RegisterRobotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterRobot-response>)))
  "Returns md5sum for a message object of type '<RegisterRobot-response>"
  "647c18b52962c6a7651146d18ac24de2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterRobot-response)))
  "Returns md5sum for a message object of type 'RegisterRobot-response"
  "647c18b52962c6a7651146d18ac24de2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterRobot-response>)))
  "Returns full string definition for message of type '<RegisterRobot-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterRobot-response)))
  "Returns full string definition for message of type 'RegisterRobot-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterRobot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterRobot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterRobot-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterRobot)))
  'RegisterRobot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterRobot)))
  'RegisterRobot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterRobot)))
  "Returns string type for a service object of type '<RegisterRobot>"
  "pedsim_srvs/RegisterRobot")