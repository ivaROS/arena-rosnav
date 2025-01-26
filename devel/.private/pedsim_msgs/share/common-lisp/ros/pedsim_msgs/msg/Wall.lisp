; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude Wall.msg.html

(cl:defclass <Wall> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (layer
    :reader layer
    :initarg :layer
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Wall (<Wall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<Wall> is deprecated: use pedsim_msgs-msg:Wall instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:start-val is deprecated.  Use pedsim_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:end-val is deprecated.  Use pedsim_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:layer-val is deprecated.  Use pedsim_msgs-msg:layer instead.")
  (layer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wall>) ostream)
  "Serializes a message object of type '<Wall>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wall>) istream)
  "Deserializes a message object of type '<Wall>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wall>)))
  "Returns string type for a message object of type '<Wall>"
  "pedsim_msgs/Wall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wall)))
  "Returns string type for a message object of type 'Wall"
  "pedsim_msgs/Wall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wall>)))
  "Returns md5sum for a message object of type '<Wall>"
  "17c466210b91051d5119050ec1c785db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wall)))
  "Returns md5sum for a message object of type 'Wall"
  "17c466210b91051d5119050ec1c785db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wall>)))
  "Returns full string definition for message of type '<Wall>"
  (cl:format cl:nil "# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wall)))
  "Returns full string definition for message of type 'Wall"
  (cl:format cl:nil "# A line obstacle in the simulator.~%~%geometry_msgs/Point start~%geometry_msgs/Point end~%uint8 layer~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wall>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wall>))
  "Converts a ROS message object to a list"
  (cl:list 'Wall
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':layer (layer msg))
))
