; Auto-generated. Do not edit!


(cl:in-package pedsim_srvs-srv)


;//! \htmlinclude SpawnPeds-request.msg.html

(cl:defclass <SpawnPeds-request> (roslisp-msg-protocol:ros-message)
  ((peds
    :reader peds
    :initarg :peds
    :type (cl:vector pedsim_msgs-msg:Ped)
   :initform (cl:make-array 0 :element-type 'pedsim_msgs-msg:Ped :initial-element (cl:make-instance 'pedsim_msgs-msg:Ped))))
)

(cl:defclass SpawnPeds-request (<SpawnPeds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnPeds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnPeds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnPeds-request> is deprecated: use pedsim_srvs-srv:SpawnPeds-request instead.")))

(cl:ensure-generic-function 'peds-val :lambda-list '(m))
(cl:defmethod peds-val ((m <SpawnPeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:peds-val is deprecated.  Use pedsim_srvs-srv:peds instead.")
  (peds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnPeds-request>) ostream)
  "Serializes a message object of type '<SpawnPeds-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'peds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'peds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnPeds-request>) istream)
  "Deserializes a message object of type '<SpawnPeds-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'peds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'peds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pedsim_msgs-msg:Ped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnPeds-request>)))
  "Returns string type for a service object of type '<SpawnPeds-request>"
  "pedsim_srvs/SpawnPedsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPeds-request)))
  "Returns string type for a service object of type 'SpawnPeds-request"
  "pedsim_srvs/SpawnPedsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnPeds-request>)))
  "Returns md5sum for a message object of type '<SpawnPeds-request>"
  "1a418c9646b48a91fc86313fb280ad3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnPeds-request)))
  "Returns md5sum for a message object of type 'SpawnPeds-request"
  "1a418c9646b48a91fc86313fb280ad3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnPeds-request>)))
  "Returns full string definition for message of type '<SpawnPeds-request>"
  (cl:format cl:nil "# Added by Ronja Gueldenring~%# For spawning an agent array dynamically in pedsim and forwarding them to flatland~%pedsim_msgs/Ped[] peds~%~%================================================================================~%MSG: pedsim_msgs/Ped~%# Added by Ronja Gueldenring~%# For spawning agents dynamically in pedsim and forwarding them to flatland~%string id~%geometry_msgs/Point pos~%string type  # \"adult\", \"child\", \"elder\", \"vehicle\", \"servicerobot\"~%string yaml_file~%int16 number_of_peds~%float64 vmax~%~%string start_up_mode  # \"default\", \"wait_timer\", \"trigger_zone\"~%float64 wait_time~%float64 trigger_zone_radius~%~%float64 max_talking_distance~%float64 max_servicing_radius~%~%float64 chatting_probability~%float64 tell_story_probability~%float64 group_talking_probability~%float64 talking_and_walking_probability~%float64 requesting_service_probability~%float64 requesting_guide_probability~%float64 requesting_follower_probability~%~%float64 talking_base_time~%float64 tell_story_base_time~%float64 group_talking_base_time~%float64 talking_and_walking_base_time~%float64 receiving_service_base_time~%float64 requesting_service_base_time~%~%# forces~%float64 force_factor_desired~%float64 force_factor_obstacle~%float64 force_factor_social~%float64 force_factor_robot~%~%geometry_msgs/Point[] waypoints~%int16 waypoint_mode~%~%string configuration~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnPeds-request)))
  "Returns full string definition for message of type 'SpawnPeds-request"
  (cl:format cl:nil "# Added by Ronja Gueldenring~%# For spawning an agent array dynamically in pedsim and forwarding them to flatland~%pedsim_msgs/Ped[] peds~%~%================================================================================~%MSG: pedsim_msgs/Ped~%# Added by Ronja Gueldenring~%# For spawning agents dynamically in pedsim and forwarding them to flatland~%string id~%geometry_msgs/Point pos~%string type  # \"adult\", \"child\", \"elder\", \"vehicle\", \"servicerobot\"~%string yaml_file~%int16 number_of_peds~%float64 vmax~%~%string start_up_mode  # \"default\", \"wait_timer\", \"trigger_zone\"~%float64 wait_time~%float64 trigger_zone_radius~%~%float64 max_talking_distance~%float64 max_servicing_radius~%~%float64 chatting_probability~%float64 tell_story_probability~%float64 group_talking_probability~%float64 talking_and_walking_probability~%float64 requesting_service_probability~%float64 requesting_guide_probability~%float64 requesting_follower_probability~%~%float64 talking_base_time~%float64 tell_story_base_time~%float64 group_talking_base_time~%float64 talking_and_walking_base_time~%float64 receiving_service_base_time~%float64 requesting_service_base_time~%~%# forces~%float64 force_factor_desired~%float64 force_factor_obstacle~%float64 force_factor_social~%float64 force_factor_robot~%~%geometry_msgs/Point[] waypoints~%int16 waypoint_mode~%~%string configuration~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnPeds-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'peds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnPeds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnPeds-request
    (cl:cons ':peds (peds msg))
))
;//! \htmlinclude SpawnPeds-response.msg.html

(cl:defclass <SpawnPeds-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpawnPeds-response (<SpawnPeds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnPeds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnPeds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_srvs-srv:<SpawnPeds-response> is deprecated: use pedsim_srvs-srv:SpawnPeds-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SpawnPeds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_srvs-srv:success-val is deprecated.  Use pedsim_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnPeds-response>) ostream)
  "Serializes a message object of type '<SpawnPeds-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnPeds-response>) istream)
  "Deserializes a message object of type '<SpawnPeds-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnPeds-response>)))
  "Returns string type for a service object of type '<SpawnPeds-response>"
  "pedsim_srvs/SpawnPedsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPeds-response)))
  "Returns string type for a service object of type 'SpawnPeds-response"
  "pedsim_srvs/SpawnPedsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnPeds-response>)))
  "Returns md5sum for a message object of type '<SpawnPeds-response>"
  "1a418c9646b48a91fc86313fb280ad3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnPeds-response)))
  "Returns md5sum for a message object of type 'SpawnPeds-response"
  "1a418c9646b48a91fc86313fb280ad3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnPeds-response>)))
  "Returns full string definition for message of type '<SpawnPeds-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnPeds-response)))
  "Returns full string definition for message of type 'SpawnPeds-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnPeds-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnPeds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnPeds-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpawnPeds)))
  'SpawnPeds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpawnPeds)))
  'SpawnPeds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnPeds)))
  "Returns string type for a service object of type '<SpawnPeds>"
  "pedsim_srvs/SpawnPeds")