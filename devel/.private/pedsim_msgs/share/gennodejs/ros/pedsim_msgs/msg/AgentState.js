// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgentForce = require('./AgentForce.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgentState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.type = null;
      this.social_state = null;
      this.pose = null;
      this.twist = null;
      this.forces = null;
      this.talking_to_id = null;
      this.listening_to_id = null;
      this.acceleration = null;
      this.destination = null;
      this.direction = null;
      this.configuration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('social_state')) {
        this.social_state = initObj.social_state
      }
      else {
        this.social_state = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('forces')) {
        this.forces = initObj.forces
      }
      else {
        this.forces = new AgentForce();
      }
      if (initObj.hasOwnProperty('talking_to_id')) {
        this.talking_to_id = initObj.talking_to_id
      }
      else {
        this.talking_to_id = '';
      }
      if (initObj.hasOwnProperty('listening_to_id')) {
        this.listening_to_id = initObj.listening_to_id
      }
      else {
        this.listening_to_id = '';
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0.0;
      }
      if (initObj.hasOwnProperty('configuration')) {
        this.configuration = initObj.configuration
      }
      else {
        this.configuration = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [social_state]
    bufferOffset = _serializer.string(obj.social_state, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [forces]
    bufferOffset = AgentForce.serialize(obj.forces, buffer, bufferOffset);
    // Serialize message field [talking_to_id]
    bufferOffset = _serializer.string(obj.talking_to_id, buffer, bufferOffset);
    // Serialize message field [listening_to_id]
    bufferOffset = _serializer.string(obj.listening_to_id, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [destination]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.destination, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.float64(obj.direction, buffer, bufferOffset);
    // Serialize message field [configuration]
    bufferOffset = _serializer.string(obj.configuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentState
    let len;
    let data = new AgentState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [social_state]
    data.social_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [forces]
    data.forces = AgentForce.deserialize(buffer, bufferOffset);
    // Deserialize message field [talking_to_id]
    data.talking_to_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [listening_to_id]
    data.listening_to_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [destination]
    data.destination = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [configuration]
    data.configuration = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.id);
    length += _getByteLength(object.type);
    length += _getByteLength(object.social_state);
    length += _getByteLength(object.talking_to_id);
    length += _getByteLength(object.listening_to_id);
    length += _getByteLength(object.configuration);
    return length + 464;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/AgentState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '870e02a1932fc0a93c5d52d2b22efada';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string id
    string type
    string social_state
    geometry_msgs/Pose pose
    geometry_msgs/Twist twist
    pedsim_msgs/AgentForce forces
    string talking_to_id
    string listening_to_id
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 destination
    float64 direction
    string configuration
    
    uint8 IDLE        = 0
    uint8 WALKING     = 1
    uint8 RUNNING     = 2
    uint8 INTERACTING = 3
    uint8 TALKING     = 4
    uint8 PHONE       = 5
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: pedsim_msgs/AgentForce
    # Forces acting on an agent.
    
    # Max Speed
    float64 vmax
    
    # Force Factors
    float64 desired_ffactor
    float64 obstacle_ffactor
    float64 social_ffactor
    float64 robot_ffactor
    
    # Basic SFM forces.
    geometry_msgs/Vector3 desired_force
    geometry_msgs/Vector3 obstacle_force
    geometry_msgs/Vector3 social_force
    
    # Additional Group Forces
    geometry_msgs/Vector3 group_coherence_force
    geometry_msgs/Vector3 group_gaze_force
    geometry_msgs/Vector3 group_repulsion_force
    
    # Extra stabilization/custom forces.
    geometry_msgs/Vector3 random_force
    geometry_msgs/Vector3 keep_distance_force
    geometry_msgs/Vector3 robot_force
    
    # Total forces
    geometry_msgs/Vector3 force
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.social_state !== undefined) {
      resolved.social_state = msg.social_state;
    }
    else {
      resolved.social_state = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    if (msg.forces !== undefined) {
      resolved.forces = AgentForce.Resolve(msg.forces)
    }
    else {
      resolved.forces = new AgentForce()
    }

    if (msg.talking_to_id !== undefined) {
      resolved.talking_to_id = msg.talking_to_id;
    }
    else {
      resolved.talking_to_id = ''
    }

    if (msg.listening_to_id !== undefined) {
      resolved.listening_to_id = msg.listening_to_id;
    }
    else {
      resolved.listening_to_id = ''
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.destination !== undefined) {
      resolved.destination = geometry_msgs.msg.Vector3.Resolve(msg.destination)
    }
    else {
      resolved.destination = new geometry_msgs.msg.Vector3()
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0.0
    }

    if (msg.configuration !== undefined) {
      resolved.configuration = msg.configuration;
    }
    else {
      resolved.configuration = ''
    }

    return resolved;
    }
};

// Constants for message
AgentState.Constants = {
  IDLE: 0,
  WALKING: 1,
  RUNNING: 2,
  INTERACTING: 3,
  TALKING: 4,
  PHONE: 5,
}

module.exports = AgentState;
