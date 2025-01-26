// Auto-generated. Do not edit!

// (in-package pedsim_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pedsim_msgs = _finder('pedsim_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetAllAgentsStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_states = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_states')) {
        this.agent_states = initObj.agent_states
      }
      else {
        this.agent_states = new pedsim_msgs.msg.AgentStates();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAllAgentsStateRequest
    // Serialize message field [agent_states]
    bufferOffset = pedsim_msgs.msg.AgentStates.serialize(obj.agent_states, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAllAgentsStateRequest
    let len;
    let data = new SetAllAgentsStateRequest(null);
    // Deserialize message field [agent_states]
    data.agent_states = pedsim_msgs.msg.AgentStates.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += pedsim_msgs.msg.AgentStates.getMessageSize(object.agent_states);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SetAllAgentsStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '461d27f92bc3106137284c845c6c2059';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pedsim_msgs/AgentStates agent_states
    
    ================================================================================
    MSG: pedsim_msgs/AgentStates
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
    const resolved = new SetAllAgentsStateRequest(null);
    if (msg.agent_states !== undefined) {
      resolved.agent_states = pedsim_msgs.msg.AgentStates.Resolve(msg.agent_states)
    }
    else {
      resolved.agent_states = new pedsim_msgs.msg.AgentStates()
    }

    return resolved;
    }
};

class SetAllAgentsStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetAllAgentsStateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetAllAgentsStateResponse
    let len;
    let data = new SetAllAgentsStateResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SetAllAgentsStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetAllAgentsStateResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetAllAgentsStateRequest,
  Response: SetAllAgentsStateResponse,
  md5sum() { return 'dde41d4b2fb7827190faeb4633f02794'; },
  datatype() { return 'pedsim_srvs/SetAllAgentsState'; }
};
