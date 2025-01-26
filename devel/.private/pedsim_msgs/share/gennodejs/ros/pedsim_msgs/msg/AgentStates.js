// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgentState = require('./AgentState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AgentStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.agent_states = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('agent_states')) {
        this.agent_states = initObj.agent_states
      }
      else {
        this.agent_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [agent_states]
    // Serialize the length for message field [agent_states]
    bufferOffset = _serializer.uint32(obj.agent_states.length, buffer, bufferOffset);
    obj.agent_states.forEach((val) => {
      bufferOffset = AgentState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentStates
    let len;
    let data = new AgentStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [agent_states]
    // Deserialize array length for message field [agent_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agent_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agent_states[i] = AgentState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.agent_states.forEach((val) => {
      length += AgentState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/AgentStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dfed9e4aead8a8045973085e7cbac81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    pedsim_msgs/AgentState[] agent_states
    
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
    MSG: pedsim_msgs/AgentState
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
    const resolved = new AgentStates(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.agent_states !== undefined) {
      resolved.agent_states = new Array(msg.agent_states.length);
      for (let i = 0; i < resolved.agent_states.length; ++i) {
        resolved.agent_states[i] = AgentState.Resolve(msg.agent_states[i]);
      }
    }
    else {
      resolved.agent_states = []
    }

    return resolved;
    }
};

module.exports = AgentStates;
