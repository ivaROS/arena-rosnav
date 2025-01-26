; Auto-generated. Do not edit!


(cl:in-package all_in_one_local_planner_interface-srv)


;//! \htmlinclude GetVelCmd-request.msg.html

(cl:defclass <GetVelCmd-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVelCmd-request (<GetVelCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVelCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVelCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<GetVelCmd-request> is deprecated: use all_in_one_local_planner_interface-srv:GetVelCmd-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVelCmd-request>) ostream)
  "Serializes a message object of type '<GetVelCmd-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVelCmd-request>) istream)
  "Deserializes a message object of type '<GetVelCmd-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVelCmd-request>)))
  "Returns string type for a service object of type '<GetVelCmd-request>"
  "all_in_one_local_planner_interface/GetVelCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmd-request)))
  "Returns string type for a service object of type 'GetVelCmd-request"
  "all_in_one_local_planner_interface/GetVelCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVelCmd-request>)))
  "Returns md5sum for a message object of type '<GetVelCmd-request>"
  "374e901b019d93b77917983b7fa0d888")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVelCmd-request)))
  "Returns md5sum for a message object of type 'GetVelCmd-request"
  "374e901b019d93b77917983b7fa0d888")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVelCmd-request>)))
  "Returns full string definition for message of type '<GetVelCmd-request>"
  (cl:format cl:nil "# request fields~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVelCmd-request)))
  "Returns full string definition for message of type 'GetVelCmd-request"
  (cl:format cl:nil "# request fields~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVelCmd-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVelCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVelCmd-request
))
;//! \htmlinclude GetVelCmd-response.msg.html

(cl:defclass <GetVelCmd-response> (roslisp-msg-protocol:ros-message)
  ((vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (costmaps_resetted
    :reader costmaps_resetted
    :initarg :costmaps_resetted
    :type cl:boolean
    :initform cl:nil)
   (successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetVelCmd-response (<GetVelCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVelCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVelCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<GetVelCmd-response> is deprecated: use all_in_one_local_planner_interface-srv:GetVelCmd-response instead.")))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <GetVelCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:vel-val is deprecated.  Use all_in_one_local_planner_interface-srv:vel instead.")
  (vel m))

(cl:ensure-generic-function 'costmaps_resetted-val :lambda-list '(m))
(cl:defmethod costmaps_resetted-val ((m <GetVelCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:costmaps_resetted-val is deprecated.  Use all_in_one_local_planner_interface-srv:costmaps_resetted instead.")
  (costmaps_resetted m))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <GetVelCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:successful-val is deprecated.  Use all_in_one_local_planner_interface-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVelCmd-response>) ostream)
  "Serializes a message object of type '<GetVelCmd-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'costmaps_resetted) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVelCmd-response>) istream)
  "Deserializes a message object of type '<GetVelCmd-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
    (cl:setf (cl:slot-value msg 'costmaps_resetted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVelCmd-response>)))
  "Returns string type for a service object of type '<GetVelCmd-response>"
  "all_in_one_local_planner_interface/GetVelCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmd-response)))
  "Returns string type for a service object of type 'GetVelCmd-response"
  "all_in_one_local_planner_interface/GetVelCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVelCmd-response>)))
  "Returns md5sum for a message object of type '<GetVelCmd-response>"
  "374e901b019d93b77917983b7fa0d888")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVelCmd-response)))
  "Returns md5sum for a message object of type 'GetVelCmd-response"
  "374e901b019d93b77917983b7fa0d888")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVelCmd-response>)))
  "Returns full string definition for message of type '<GetVelCmd-response>"
  (cl:format cl:nil "# response fields~%geometry_msgs/Twist vel~%bool costmaps_resetted~%bool successful~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVelCmd-response)))
  "Returns full string definition for message of type 'GetVelCmd-response"
  (cl:format cl:nil "# response fields~%geometry_msgs/Twist vel~%bool costmaps_resetted~%bool successful~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVelCmd-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVelCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVelCmd-response
    (cl:cons ':vel (vel msg))
    (cl:cons ':costmaps_resetted (costmaps_resetted msg))
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVelCmd)))
  'GetVelCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVelCmd)))
  'GetVelCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelCmd)))
  "Returns string type for a service object of type '<GetVelCmd>"
  "all_in_one_local_planner_interface/GetVelCmd")