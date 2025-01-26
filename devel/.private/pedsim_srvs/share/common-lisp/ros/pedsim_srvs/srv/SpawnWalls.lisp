; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SpawnWalls-request.msg.html

(cl:defclass <SpawnWalls-request> (roslisp-msg-protocol:ros-message)
  ((walls
    :reader walls
    :initarg :walls
    :type (cl:vector pedsim_msgs-msg:Wall)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Wall :initial-element (cl:make-instance 'pedsim_msgs-msg:Wall))))
)

(cl:defclass SpawnWalls-request (<SpawnWalls-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnWalls-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnWalls-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnWalls-request> is deprecated: use pedsim_srvs-srv:SpawnWalls-request instead.")))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <SpawnWalls-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:walls-val is deprecated.  Use pedsim_srvs-srv:walls instead.")
  (walls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnWalls-request>) ostream)
  "Serializes a message object of type '<SpawnWalls-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnWalls-request>) istream)
  "Deserializes a message object of type '<SpawnWalls-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Wall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnWalls-request>)))
  "Returns string type for a service object of type '<SpawnWalls-request>"
  "pedsim_srvs/SpawnWallsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnWalls-request)))
  "Returns string type for a service object of type 'SpawnWalls-request"
  "pedsim_srvs/SpawnWallsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnWalls-request>)))
  "Returns md5sum for a message object of type '<SpawnWalls-request>"
  "9b670e9e5b58056b6a66595c998a154d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnWalls-request)))
  "Returns md5sum for a message object of type 'SpawnWalls-request"
  "9b670e9e5b58056b6a66595c998a154d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnWalls-request>)))
  "Returns full string definition for message of type '<SpawnWalls-request>"
  (cl:format cl:nil "# Junhui Li~%# info the pedsim_ros the position of static obstacles~%pedsim_msgs/Wall[] walls~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnWalls-request)))
  "Returns full string definition for message of type 'SpawnWalls-request"
  (cl:format cl:nil "# Junhui Li~%# info the pedsim_ros the position of static obstacles~%pedsim_msgs/Wall[] walls~%~%================================================================================~%MSG: pedsim_msgs/Wall~%# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnWalls-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnWalls-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnWalls-request
    (cl:cons ':walls (walls msg))
))
;//! \htmlinclude SpawnWalls-response.msg.html

(cl:defclass <SpawnWalls-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpawnWalls-response (<SpawnWalls-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnWalls-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnWalls-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnWalls-response> is deprecated: use pedsim_srvs-srv:SpawnWalls-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnWalls-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnWalls-response>) ostream)
  "Serializes a message object of type '<SpawnWalls-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnWalls-response>) istream)
  "Deserializes a message object of type '<SpawnWalls-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnWalls-response>)))
  "Returns string type for a service object of type '<SpawnWalls-response>"
  "pedsim_srvs/SpawnWallsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnWalls-response)))
  "Returns string type for a service object of type 'SpawnWalls-response"
  "pedsim_srvs/SpawnWallsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnWalls-response>)))
  "Returns md5sum for a message object of type '<SpawnWalls-response>"
  "9b670e9e5b58056b6a66595c998a154d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnWalls-response)))
  "Returns md5sum for a message object of type 'SpawnWalls-response"
  "9b670e9e5b58056b6a66595c998a154d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnWalls-response>)))
  "Returns full string definition for message of type '<SpawnWalls-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnWalls-response)))
  "Returns full string definition for message of type 'SpawnWalls-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnWalls-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnWalls-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnWalls-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnWalls)))
  'SpawnWalls-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnWalls)))
  'SpawnWalls-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnWalls)))
  "Returns string type for a service object of type '<SpawnWalls>"
  "pedsim_srvs/SpawnWalls")