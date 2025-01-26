; Auto-generated. Do not edit!


(cl:in-package light_scan_sim-msg)


;//! \htmlinclude MaterialList.msg.html

(cl:defclass <MaterialList> (roslisp-msg-protocol:ros-message)
  ((materials
    :reader materials
    :initarg :materials
    :type (cl:vector light_scan_sim-msg:Material)
   :initform (cl:make-array 0 :element-type 'light_scan_sim-msg:Material :initial-element (cl:make-instance 'light_scan_sim-msg:Material))))
)

(cl:defclass MaterialList (<MaterialList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaterialList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaterialList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_scan_sim-msg:<MaterialList> is deprecated: use light_scan_sim-msg:MaterialList instead.")))

(cl:ensure-generic-function 'materials-val :lambda-list '(m))
(cl:defmethod materials-val ((m <MaterialList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_scan_sim-msg:materials-val is deprecated.  Use light_scan_sim-msg:materials instead.")
  (materials m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaterialList>) ostream)
  "Serializes a message object of type '<MaterialList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'materials))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'materials))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaterialList>) istream)
  "Deserializes a message object of type '<MaterialList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'materials) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'materials)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'light_scan_sim-msg:Material))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaterialList>)))
  "Returns string type for a message object of type '<MaterialList>"
  "light_scan_sim/MaterialList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaterialList)))
  "Returns string type for a message object of type 'MaterialList"
  "light_scan_sim/MaterialList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaterialList>)))
  "Returns md5sum for a message object of type '<MaterialList>"
  "3044149dcb81d0fb9254bae26c379855")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaterialList)))
  "Returns md5sum for a message object of type 'MaterialList"
  "3044149dcb81d0fb9254bae26c379855")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaterialList>)))
  "Returns full string definition for message of type '<MaterialList>"
  (cl:format cl:nil "Material[] materials~%~%================================================================================~%MSG: light_scan_sim/Material~%string name  # for descriptive purposes~%string type  # opaque or transparent ~%float32[3] color  # RGB for visualization node~%float32 min_return  # 0.0 to 1.0 representing the minimum chance of return~%float32 max_return  # 0.0 to 1.0 representing the maximum chance of return~%float32 angular_return  # the chance of return lost per degree from perpendicular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaterialList)))
  "Returns full string definition for message of type 'MaterialList"
  (cl:format cl:nil "Material[] materials~%~%================================================================================~%MSG: light_scan_sim/Material~%string name  # for descriptive purposes~%string type  # opaque or transparent ~%float32[3] color  # RGB for visualization node~%float32 min_return  # 0.0 to 1.0 representing the minimum chance of return~%float32 max_return  # 0.0 to 1.0 representing the maximum chance of return~%float32 angular_return  # the chance of return lost per degree from perpendicular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaterialList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'materials) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaterialList>))
  "Converts a ROS message object to a list"
  (cl:list 'MaterialList
    (cl:cons ':materials (materials msg))
))
