; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude MovePeds-request.msg.html

(cl:defclass <MovePeds-request> (roslisp-msg-protocol:ros-message)
  ((episode
    :reader episode
    :initarg :episode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MovePeds-request (<MovePeds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePeds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePeds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<MovePeds-request> is deprecated: use pedsim_srvs-srv:MovePeds-request instead.")))

(cl:ensure-generic-function 'episode-val :lambda-list '(m))
(cl:defmethod episode-val ((m <MovePeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:episode-val is deprecated.  Use pedsim_srvs-srv:episode instead.")
  (episode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePeds-request>) ostream)
  "Serializes a message object of type '<MovePeds-request>"
  (cl:let* ((signed (cl:slot-value msg 'episode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePeds-request>) istream)
  "Deserializes a message object of type '<MovePeds-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'episode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePeds-request>)))
  "Returns string type for a service object of type '<MovePeds-request>"
  "pedsim_srvs/MovePedsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePeds-request)))
  "Returns string type for a service object of type 'MovePeds-request"
  "pedsim_srvs/MovePedsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePeds-request>)))
  "Returns md5sum for a message object of type '<MovePeds-request>"
  "7e70f76cdefe8786e8c6f0a9a54a958a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePeds-request)))
  "Returns md5sum for a message object of type 'MovePeds-request"
  "7e70f76cdefe8786e8c6f0a9a54a958a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePeds-request>)))
  "Returns full string definition for message of type '<MovePeds-request>"
  (cl:format cl:nil "# Added by Junhui Li~%# For moving agents dynamically in pedsim~%int16 episode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePeds-request)))
  "Returns full string definition for message of type 'MovePeds-request"
  (cl:format cl:nil "# Added by Junhui Li~%# For moving agents dynamically in pedsim~%int16 episode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePeds-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePeds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePeds-request
    (cl:cons ':episode (episode msg))
))
;//! \htmlinclude MovePeds-response.msg.html

(cl:defclass <MovePeds-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MovePeds-response (<MovePeds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovePeds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovePeds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<MovePeds-response> is deprecated: use pedsim_srvs-srv:MovePeds-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MovePeds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovePeds-response>) ostream)
  "Serializes a message object of type '<MovePeds-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovePeds-response>) istream)
  "Deserializes a message object of type '<MovePeds-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovePeds-response>)))
  "Returns string type for a service object of type '<MovePeds-response>"
  "pedsim_srvs/MovePedsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePeds-response)))
  "Returns string type for a service object of type 'MovePeds-response"
  "pedsim_srvs/MovePedsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovePeds-response>)))
  "Returns md5sum for a message object of type '<MovePeds-response>"
  "7e70f76cdefe8786e8c6f0a9a54a958a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovePeds-response)))
  "Returns md5sum for a message object of type 'MovePeds-response"
  "7e70f76cdefe8786e8c6f0a9a54a958a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovePeds-response>)))
  "Returns full string definition for message of type '<MovePeds-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovePeds-response)))
  "Returns full string definition for message of type 'MovePeds-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovePeds-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovePeds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MovePeds-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MovePeds)))
  'MovePeds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MovePeds)))
  'MovePeds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovePeds)))
  "Returns string type for a service object of type '<MovePeds>"
  "pedsim_srvs/MovePeds")