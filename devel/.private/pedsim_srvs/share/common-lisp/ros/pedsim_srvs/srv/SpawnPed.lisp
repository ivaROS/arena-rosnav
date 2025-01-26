; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SpawnPed-request.msg.html

(cl:defclass <SpawnPed-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (number_of_peds
    :reader number_of_peds
    :initarg :number_of_peds
    :type cl:fixnum
    :initform 0)
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass SpawnPed-request (<SpawnPed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnPed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnPed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnPed-request> is deprecated: use pedsim_srvs-srv:SpawnPed-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SpawnPed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:id-val is deprecated.  Use pedsim_srvs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <SpawnPed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:pos-val is deprecated.  Use pedsim_srvs-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SpawnPed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:type-val is deprecated.  Use pedsim_srvs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'number_of_peds-val :lambda-list '(m))
(cl:defmethod number_of_peds-val ((m <SpawnPed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:number_of_peds-val is deprecated.  Use pedsim_srvs-srv:number_of_peds instead.")
  (number_of_peds m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <SpawnPed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:waypoints-val is deprecated.  Use pedsim_srvs-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnPed-request>) ostream)
  "Serializes a message object of type '<SpawnPed-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'number_of_peds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnPed-request>) istream)
  "Deserializes a message object of type '<SpawnPed-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_peds) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnPed-request>)))
  "Returns string type for a service object of type '<SpawnPed-request>"
  "pedsim_srvs/SpawnPedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPed-request)))
  "Returns string type for a service object of type 'SpawnPed-request"
  "pedsim_srvs/SpawnPedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnPed-request>)))
  "Returns md5sum for a message object of type '<SpawnPed-request>"
  "dad6de4944e873f2a2559273751d6b69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnPed-request)))
  "Returns md5sum for a message object of type 'SpawnPed-request"
  "dad6de4944e873f2a2559273751d6b69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnPed-request>)))
  "Returns full string definition for message of type '<SpawnPed-request>"
  (cl:format cl:nil "# Added by Ronja Gueldenring~%# For spawning agents dynamically in pedsim and forwarding them to flatland~%string id~%geometry_msgs/Point pos~%int16 type~%int16 number_of_peds~%geometry_msgs/Point[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnPed-request)))
  "Returns full string definition for message of type 'SpawnPed-request"
  (cl:format cl:nil "# Added by Ronja Gueldenring~%# For spawning agents dynamically in pedsim and forwarding them to flatland~%string id~%geometry_msgs/Point pos~%int16 type~%int16 number_of_peds~%geometry_msgs/Point[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnPed-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnPed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnPed-request
    (cl:cons ':id (id msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':type (type msg))
    (cl:cons ':number_of_peds (number_of_peds msg))
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude SpawnPed-response.msg.html

(cl:defclass <SpawnPed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpawnPed-response (<SpawnPed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnPed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnPed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnPed-response> is deprecated: use pedsim_srvs-srv:SpawnPed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnPed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnPed-response>) ostream)
  "Serializes a message object of type '<SpawnPed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnPed-response>) istream)
  "Deserializes a message object of type '<SpawnPed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnPed-response>)))
  "Returns string type for a service object of type '<SpawnPed-response>"
  "pedsim_srvs/SpawnPedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPed-response)))
  "Returns string type for a service object of type 'SpawnPed-response"
  "pedsim_srvs/SpawnPedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnPed-response>)))
  "Returns md5sum for a message object of type '<SpawnPed-response>"
  "dad6de4944e873f2a2559273751d6b69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnPed-response)))
  "Returns md5sum for a message object of type 'SpawnPed-response"
  "dad6de4944e873f2a2559273751d6b69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnPed-response>)))
  "Returns full string definition for message of type '<SpawnPed-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnPed-response)))
  "Returns full string definition for message of type 'SpawnPed-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnPed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnPed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnPed-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnPed)))
  'SpawnPed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnPed)))
  'SpawnPed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPed)))
  "Returns string type for a service object of type '<SpawnPed>"
  "pedsim_srvs/SpawnPed")