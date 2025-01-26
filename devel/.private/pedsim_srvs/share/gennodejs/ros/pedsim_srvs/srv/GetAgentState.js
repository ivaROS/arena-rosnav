// Auto-generated. Do not edit!

// (in-package pedsim_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let pedsim_msgs = _finder('pedsim_msgs');

//-----------------------------------------------------------

class GetAgentStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agent_id = null;
    }
    else {
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAgentStateRequest
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAgentStateRequest
    let len;
    let data = new GetAgentStateRequest(null);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.agent_id);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/GetAgentStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c5c0d6a6da5417447cea232216f8416';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string agent_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAgentStateRequest(null);
    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    return resolved;
    }
};

class GetAgentStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new pedsim_msgs.msg.AgentState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAgentStateResponse
    // Serialize message field [state]
    bufferOffset = pedsim_msgs.msg.AgentState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAgentStateResponse
    let len;
    let data = new GetAgentStateResponse(null);
    // Deserialize message field [state]
    data.state = pedsim_msgs.msg.AgentState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += pedsim_msgs.msg.AgentState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/GetAgentStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b06316bc5ce7c69f46ecaadc6ca88d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pedsim_msgs/AgentState state
    
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
    const resolved = new GetAgentStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = pedsim_msgs.msg.AgentState.Resolve(msg.state)
    }
    else {
      resolved.state = new pedsim_msgs.msg.AgentState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAgentStateRequest,
  Response: GetAgentStateResponse,
  md5sum() { return 'b5e2606568d935f8dac655f7dbc27c47'; },
  datatype() { return 'pedsim_srvs/GetAgentState'; }
};
