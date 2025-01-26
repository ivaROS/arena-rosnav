; Auto-generated. Do not edit!


(cl:in-package flatland_msgs-srv)


;//! \htmlinclude DeleteModels-request.msg.html

(cl:defclass <DeleteModels-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DeleteModels-request (<DeleteModels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteModels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteModels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<DeleteModels-request> is deprecated: use flatland_msgs-srv:DeleteModels-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteModels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:name-val is deprecated.  Use flatland_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteModels-request>) ostream)
  "Serializes a message object of type '<DeleteModels-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteModels-request>) istream)
  "Deserializes a message object of type '<DeleteModels-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteModels-request>)))
  "Returns string type for a service object of type '<DeleteModels-request>"
  "flatland_msgs/DeleteModelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModels-request)))
  "Returns string type for a service object of type 'DeleteModels-request"
  "flatland_msgs/DeleteModelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteModels-request>)))
  "Returns md5sum for a message object of type '<DeleteModels-request>"
  "f17f88999ecf79098437ce7d74e28572")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteModels-request)))
  "Returns md5sum for a message object of type 'DeleteModels-request"
  "f17f88999ecf79098437ce7d74e28572")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteModels-request>)))
  "Returns full string definition for message of type '<DeleteModels-request>"
  (cl:format cl:nil "string[] name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteModels-request)))
  "Returns full string definition for message of type 'DeleteModels-request"
  (cl:format cl:nil "string[] name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteModels-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteModels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteModels-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteModels-response.msg.html

(cl:defclass <DeleteModels-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteModels-response (<DeleteModels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteModels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteModels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flatland_msgs-srv:<DeleteModels-response> is deprecated: use flatland_msgs-srv:DeleteModels-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteModels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:success-val is deprecated.  Use flatland_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteModels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flatland_msgs-srv:message-val is deprecated.  Use flatland_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteModels-response>) ostream)
  "Serializes a message object of type '<DeleteModels-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteModels-response>) istream)
  "Deserializes a message object of type '<DeleteModels-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteModels-response>)))
  "Returns string type for a service object of type '<DeleteModels-response>"
  "flatland_msgs/DeleteModelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModels-response)))
  "Returns string type for a service object of type 'DeleteModels-response"
  "flatland_msgs/DeleteModelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteModels-response>)))
  "Returns md5sum for a message object of type '<DeleteModels-response>"
  "f17f88999ecf79098437ce7d74e28572")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteModels-response)))
  "Returns md5sum for a message object of type 'DeleteModels-response"
  "f17f88999ecf79098437ce7d74e28572")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteModels-response>)))
  "Returns full string definition for message of type '<DeleteModels-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteModels-response)))
  "Returns full string definition for message of type 'DeleteModels-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteModels-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteModels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteModels-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteModels)))
  'DeleteModels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteModels)))
  'DeleteModels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteModels)))
  "Returns string type for a service object of type '<DeleteModels>"
  "flatland_msgs/DeleteModels")