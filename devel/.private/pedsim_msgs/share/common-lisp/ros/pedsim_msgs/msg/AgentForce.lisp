; Auto-generated. Do not edit!


(cl:in-package pedsim_msgs-msg)


;//! \htmlinclude AgentForce.msg.html

(cl:defclass <AgentForce> (roslisp-msg-protocol:ros-message)
  ((vmax
    :reader vmax
    :initarg :vmax
    :type cl:float
    :initform 0.0)
   (desired_ffactor
    :reader desired_ffactor
    :initarg :desired_ffactor
    :type cl:float
    :initform 0.0)
   (obstacle_ffactor
    :reader obstacle_ffactor
    :initarg :obstacle_ffactor
    :type cl:float
    :initform 0.0)
   (social_ffactor
    :reader social_ffactor
    :initarg :social_ffactor
    :type cl:float
    :initform 0.0)
   (robot_ffactor
    :reader robot_ffactor
    :initarg :robot_ffactor
    :type cl:float
    :initform 0.0)
   (desired_force
    :reader desired_force
    :initarg :desired_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (obstacle_force
    :reader obstacle_force
    :initarg :obstacle_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (social_force
    :reader social_force
    :initarg :social_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (group_coherence_force
    :reader group_coherence_force
    :initarg :group_coherence_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (group_gaze_force
    :reader group_gaze_force
    :initarg :group_gaze_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (group_repulsion_force
    :reader group_repulsion_force
    :initarg :group_repulsion_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (random_force
    :reader random_force
    :initarg :random_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (keep_distance_force
    :reader keep_distance_force
    :initarg :keep_distance_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (robot_force
    :reader robot_force
    :initarg :robot_force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass AgentForce (<AgentForce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentForce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentForce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pedsim_msgs-msg:<AgentForce> is deprecated: use pedsim_msgs-msg:AgentForce instead.")))

(cl:ensure-generic-function 'vmax-val :lambda-list '(m))
(cl:defmethod vmax-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:vmax-val is deprecated.  Use pedsim_msgs-msg:vmax instead.")
  (vmax m))

(cl:ensure-generic-function 'desired_ffactor-val :lambda-list '(m))
(cl:defmethod desired_ffactor-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:desired_ffactor-val is deprecated.  Use pedsim_msgs-msg:desired_ffactor instead.")
  (desired_ffactor m))

(cl:ensure-generic-function 'obstacle_ffactor-val :lambda-list '(m))
(cl:defmethod obstacle_ffactor-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:obstacle_ffactor-val is deprecated.  Use pedsim_msgs-msg:obstacle_ffactor instead.")
  (obstacle_ffactor m))

(cl:ensure-generic-function 'social_ffactor-val :lambda-list '(m))
(cl:defmethod social_ffactor-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:social_ffactor-val is deprecated.  Use pedsim_msgs-msg:social_ffactor instead.")
  (social_ffactor m))

(cl:ensure-generic-function 'robot_ffactor-val :lambda-list '(m))
(cl:defmethod robot_ffactor-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:robot_ffactor-val is deprecated.  Use pedsim_msgs-msg:robot_ffactor instead.")
  (robot_ffactor m))

(cl:ensure-generic-function 'desired_force-val :lambda-list '(m))
(cl:defmethod desired_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:desired_force-val is deprecated.  Use pedsim_msgs-msg:desired_force instead.")
  (desired_force m))

(cl:ensure-generic-function 'obstacle_force-val :lambda-list '(m))
(cl:defmethod obstacle_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:obstacle_force-val is deprecated.  Use pedsim_msgs-msg:obstacle_force instead.")
  (obstacle_force m))

(cl:ensure-generic-function 'social_force-val :lambda-list '(m))
(cl:defmethod social_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:social_force-val is deprecated.  Use pedsim_msgs-msg:social_force instead.")
  (social_force m))

(cl:ensure-generic-function 'group_coherence_force-val :lambda-list '(m))
(cl:defmethod group_coherence_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:group_coherence_force-val is deprecated.  Use pedsim_msgs-msg:group_coherence_force instead.")
  (group_coherence_force m))

(cl:ensure-generic-function 'group_gaze_force-val :lambda-list '(m))
(cl:defmethod group_gaze_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:group_gaze_force-val is deprecated.  Use pedsim_msgs-msg:group_gaze_force instead.")
  (group_gaze_force m))

(cl:ensure-generic-function 'group_repulsion_force-val :lambda-list '(m))
(cl:defmethod group_repulsion_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:group_repulsion_force-val is deprecated.  Use pedsim_msgs-msg:group_repulsion_force instead.")
  (group_repulsion_force m))

(cl:ensure-generic-function 'random_force-val :lambda-list '(m))
(cl:defmethod random_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:random_force-val is deprecated.  Use pedsim_msgs-msg:random_force instead.")
  (random_force m))

(cl:ensure-generic-function 'keep_distance_force-val :lambda-list '(m))
(cl:defmethod keep_distance_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:keep_distance_force-val is deprecated.  Use pedsim_msgs-msg:keep_distance_force instead.")
  (keep_distance_force m))

(cl:ensure-generic-function 'robot_force-val :lambda-list '(m))
(cl:defmethod robot_force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:robot_force-val is deprecated.  Use pedsim_msgs-msg:robot_force instead.")
  (robot_force m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <AgentForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pedsim_msgs-msg:force-val is deprecated.  Use pedsim_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentForce>) ostream)
  "Serializes a message object of type '<AgentForce>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_ffactor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'obstacle_ffactor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'social_ffactor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robot_ffactor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'social_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_coherence_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_gaze_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_repulsion_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'random_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'keep_distance_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentForce>) istream)
  "Deserializes a message object of type '<AgentForce>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vmax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_ffactor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_ffactor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'social_ffactor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robot_ffactor) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'social_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_coherence_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_gaze_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_repulsion_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'random_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'keep_distance_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentForce>)))
  "Returns string type for a message object of type '<AgentForce>"
  "pedsim_msgs/AgentForce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentForce)))
  "Returns string type for a message object of type 'AgentForce"
  "pedsim_msgs/AgentForce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentForce>)))
  "Returns md5sum for a message object of type '<AgentForce>"
  "661b76c3cc3cc690dfae53c8d9dd9da9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentForce)))
  "Returns md5sum for a message object of type 'AgentForce"
  "661b76c3cc3cc690dfae53c8d9dd9da9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentForce>)))
  "Returns full string definition for message of type '<AgentForce>"
  (cl:format cl:nil "# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentForce)))
  "Returns full string definition for message of type 'AgentForce"
  (cl:format cl:nil "# Forces acting on an agent.~%~%# Max Speed~%float64 vmax~%~%# Force Factors~%float64 desired_ffactor~%float64 obstacle_ffactor~%float64 social_ffactor~%float64 robot_ffactor~%~%# Basic SFM forces.~%geometry_msgs/Vector3 desired_force~%geometry_msgs/Vector3 obstacle_force~%geometry_msgs/Vector3 social_force~%~%# Additional Group Forces~%geometry_msgs/Vector3 group_coherence_force~%geometry_msgs/Vector3 group_gaze_force~%geometry_msgs/Vector3 group_repulsion_force~%~%# Extra stabilization/custom forces.~%geometry_msgs/Vector3 random_force~%geometry_msgs/Vector3 keep_distance_force~%geometry_msgs/Vector3 robot_force~%~%# Total forces~%geometry_msgs/Vector3 force~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentForce>))
  (cl:+ 0
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'social_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_coherence_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_gaze_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_repulsion_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'random_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'keep_distance_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentForce>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentForce
    (cl:cons ':vmax (vmax msg))
    (cl:cons ':desired_ffactor (desired_ffactor msg))
    (cl:cons ':obstacle_ffactor (obstacle_ffactor msg))
    (cl:cons ':social_ffactor (social_ffactor msg))
    (cl:cons ':robot_ffactor (robot_ffactor msg))
    (cl:cons ':desired_force (desired_force msg))
    (cl:cons ':obstacle_force (obstacle_force msg))
    (cl:cons ':social_force (social_force msg))
    (cl:cons ':group_coherence_force (group_coherence_force msg))
    (cl:cons ':group_gaze_force (group_gaze_force msg))
    (cl:cons ':group_repulsion_force (group_repulsion_force msg))
    (cl:cons ':random_force (random_force msg))
    (cl:cons ':keep_distance_force (keep_distance_force msg))
    (cl:cons ':robot_force (robot_force msg))
    (cl:cons ':force (force msg))
))
