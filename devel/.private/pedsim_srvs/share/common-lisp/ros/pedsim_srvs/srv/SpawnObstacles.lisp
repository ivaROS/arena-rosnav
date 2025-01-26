; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SpawnObstacles-request.msg.html

(cl:defclass <SpawnObstacles-request> (roslisp-msg-protocol:ros-message)
  ((obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector pedsim_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Obstacle :initial-element (cl:make-instance 'pedsim_msgs-msg:Obstacle))))
)

(cl:defclass SpawnObstacles-request (<SpawnObstacles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnObstacles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnObstacles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnObstacles-request> is deprecated: use pedsim_srvs-srv:SpawnObstacles-request instead.")))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <SpawnObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:obstacles-val is deprecated.  Use pedsim_srvs-srv:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnObstacles-request>) ostream)
  "Serializes a message object of type '<SpawnObstacles-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnObstacles-request>) istream)
  "Deserializes a message object of type '<SpawnObstacles-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnObstacles-request>)))
  "Returns string type for a service object of type '<SpawnObstacles-request>"
  "pedsim_srvs/SpawnObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnObstacles-request)))
  "Returns string type for a service object of type 'SpawnObstacles-request"
  "pedsim_srvs/SpawnObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnObstacles-request>)))
  "Returns md5sum for a message object of type '<SpawnObstacles-request>"
  "70ba2207d643e7ef873b86272b010369")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnObstacles-request)))
  "Returns md5sum for a message object of type 'SpawnObstacles-request"
  "70ba2207d643e7ef873b86272b010369")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnObstacles-request>)))
  "Returns full string definition for message of type '<SpawnObstacles-request>"
  (cl:format cl:nil "pedsim_msgs/Obstacle[] obstacles~%~%================================================================================~%MSG: pedsim_msgs/Obstacle~%string name~%# type can be one of the following: \"shelf\"~%string type~%geometry_msgs/Pose pose~%float64 interaction_radius~%string yaml_path~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnObstacles-request)))
  "Returns full string definition for message of type 'SpawnObstacles-request"
  (cl:format cl:nil "pedsim_msgs/Obstacle[] obstacles~%~%================================================================================~%MSG: pedsim_msgs/Obstacle~%string name~%# type can be one of the following: \"shelf\"~%string type~%geometry_msgs/Pose pose~%float64 interaction_radius~%string yaml_path~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnObstacles-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnObstacles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnObstacles-request
    (cl:cons ':obstacles (obstacles msg))
))
;//! \htmlinclude SpawnObstacles-response.msg.html

(cl:defclass <SpawnObstacles-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpawnObstacles-response (<SpawnObstacles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnObstacles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnObstacles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnObstacles-response> is deprecated: use pedsim_srvs-srv:SpawnObstacles-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnObstacles-response>) ostream)
  "Serializes a message object of type '<SpawnObstacles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnObstacles-response>) istream)
  "Deserializes a message object of type '<SpawnObstacles-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnObstacles-response>)))
  "Returns string type for a service object of type '<SpawnObstacles-response>"
  "pedsim_srvs/SpawnObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnObstacles-response)))
  "Returns string type for a service object of type 'SpawnObstacles-response"
  "pedsim_srvs/SpawnObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnObstacles-response>)))
  "Returns md5sum for a message object of type '<SpawnObstacles-response>"
  "70ba2207d643e7ef873b86272b010369")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnObstacles-response)))
  "Returns md5sum for a message object of type 'SpawnObstacles-response"
  "70ba2207d643e7ef873b86272b010369")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnObstacles-response>)))
  "Returns full string definition for message of type '<SpawnObstacles-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnObstacles-response)))
  "Returns full string definition for message of type 'SpawnObstacles-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnObstacles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnObstacles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnObstacles-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnObstacles)))
  'SpawnObstacles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnObstacles)))
  'SpawnObstacles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnObstacles)))
  "Returns string type for a service object of type '<SpawnObstacles>"
  "pedsim_srvs/SpawnObstacles")