; Auto-generated. Do not edit!


(cl:in-package rosnav-srv)


;//! \htmlinclude GetAction-request.msg.html

(cl:defclass <GetAction-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAction-request (<GetAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosnav-srv:<GetAction-request> is deprecated: use rosnav-srv:GetAction-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAction-request>) ostream)
  "Serializes a message object of type '<GetAction-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAction-request>) istream)
  "Deserializes a message object of type '<GetAction-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAction-request>)))
  "Returns string type for a service object of type '<GetAction-request>"
  "rosnav/GetActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAction-request)))
  "Returns string type for a service object of type 'GetAction-request"
  "rosnav/GetActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAction-request>)))
  "Returns md5sum for a message object of type '<GetAction-request>"
  "a70a7d92e0376dcb967914076f276ea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAction-request)))
  "Returns md5sum for a message object of type 'GetAction-request"
  "a70a7d92e0376dcb967914076f276ea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAction-request>)))
  "Returns full string definition for message of type '<GetAction-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAction-request)))
  "Returns full string definition for message of type 'GetAction-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAction-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAction-request
))
;//! \htmlinclude GetAction-response.msg.html

(cl:defclass <GetAction-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetAction-response (<GetAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosnav-srv:<GetAction-response> is deprecated: use rosnav-srv:GetAction-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <GetAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosnav-srv:action-val is deprecated.  Use rosnav-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAction-response>) ostream)
  "Serializes a message object of type '<GetAction-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAction-response>) istream)
  "Deserializes a message object of type '<GetAction-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAction-response>)))
  "Returns string type for a service object of type '<GetAction-response>"
  "rosnav/GetActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAction-response)))
  "Returns string type for a service object of type 'GetAction-response"
  "rosnav/GetActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAction-response>)))
  "Returns md5sum for a message object of type '<GetAction-response>"
  "a70a7d92e0376dcb967914076f276ea6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAction-response)))
  "Returns md5sum for a message object of type 'GetAction-response"
  "a70a7d92e0376dcb967914076f276ea6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAction-response>)))
  "Returns full string definition for message of type '<GetAction-response>"
  (cl:format cl:nil "float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAction-response)))
  "Returns full string definition for message of type 'GetAction-response"
  (cl:format cl:nil "float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAction-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAction-response
    (cl:cons ':action (action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAction)))
  'GetAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAction)))
  'GetAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAction)))
  "Returns string type for a service object of type '<GetAction>"
  "rosnav/GetAction")