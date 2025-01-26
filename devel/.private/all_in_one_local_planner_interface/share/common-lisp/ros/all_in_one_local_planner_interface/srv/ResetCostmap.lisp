; Auto-generated. Do not edit!


(cl:in-package all_in_one_local_planner_interface-srv)


;//! \htmlinclude ResetCostmap-request.msg.html

(cl:defclass <ResetCostmap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetCostmap-request (<ResetCostmap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCostmap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCostmap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<ResetCostmap-request> is deprecated: use all_in_one_local_planner_interface-srv:ResetCostmap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCostmap-request>) ostream)
  "Serializes a message object of type '<ResetCostmap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCostmap-request>) istream)
  "Deserializes a message object of type '<ResetCostmap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCostmap-request>)))
  "Returns string type for a service object of type '<ResetCostmap-request>"
  "all_in_one_local_planner_interface/ResetCostmapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCostmap-request)))
  "Returns string type for a service object of type 'ResetCostmap-request"
  "all_in_one_local_planner_interface/ResetCostmapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCostmap-request>)))
  "Returns md5sum for a message object of type '<ResetCostmap-request>"
  "c267a3b326f2460cbd8963b5e7db09b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCostmap-request)))
  "Returns md5sum for a message object of type 'ResetCostmap-request"
  "c267a3b326f2460cbd8963b5e7db09b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCostmap-request>)))
  "Returns full string definition for message of type '<ResetCostmap-request>"
  (cl:format cl:nil "# request fields~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCostmap-request)))
  "Returns full string definition for message of type 'ResetCostmap-request"
  (cl:format cl:nil "# request fields~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCostmap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCostmap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCostmap-request
))
;//! \htmlinclude ResetCostmap-response.msg.html

(cl:defclass <ResetCostmap-response> (roslisp-msg-protocol:ros-message)
  ((costmaps_resetted
    :reader costmaps_resetted
    :initarg :costmaps_resetted
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetCostmap-response (<ResetCostmap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetCostmap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetCostmap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name all_in_one_local_planner_interface-srv:<ResetCostmap-response> is deprecated: use all_in_one_local_planner_interface-srv:ResetCostmap-response instead.")))

(cl:ensure-generic-function 'costmaps_resetted-val :lambda-list '(m))
(cl:defmethod costmaps_resetted-val ((m <ResetCostmap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader all_in_one_local_planner_interface-srv:costmaps_resetted-val is deprecated.  Use all_in_one_local_planner_interface-srv:costmaps_resetted instead.")
  (costmaps_resetted m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetCostmap-response>) ostream)
  "Serializes a message object of type '<ResetCostmap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'costmaps_resetted) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetCostmap-response>) istream)
  "Deserializes a message object of type '<ResetCostmap-response>"
    (cl:setf (cl:slot-value msg 'costmaps_resetted) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetCostmap-response>)))
  "Returns string type for a service object of type '<ResetCostmap-response>"
  "all_in_one_local_planner_interface/ResetCostmapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCostmap-response)))
  "Returns string type for a service object of type 'ResetCostmap-response"
  "all_in_one_local_planner_interface/ResetCostmapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetCostmap-response>)))
  "Returns md5sum for a message object of type '<ResetCostmap-response>"
  "c267a3b326f2460cbd8963b5e7db09b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetCostmap-response)))
  "Returns md5sum for a message object of type 'ResetCostmap-response"
  "c267a3b326f2460cbd8963b5e7db09b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetCostmap-response>)))
  "Returns full string definition for message of type '<ResetCostmap-response>"
  (cl:format cl:nil "# response fields~%bool costmaps_resetted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetCostmap-response)))
  "Returns full string definition for message of type 'ResetCostmap-response"
  (cl:format cl:nil "# response fields~%bool costmaps_resetted~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetCostmap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetCostmap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetCostmap-response
    (cl:cons ':costmaps_resetted (costmaps_resetted msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetCostmap)))
  'ResetCostmap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetCostmap)))
  'ResetCostmap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetCostmap)))
  "Returns string type for a service object of type '<ResetCostmap>"
  "all_in_one_local_planner_interface/ResetCostmap")