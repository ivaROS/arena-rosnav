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
let RobotState = require('./RobotState.js');
let Waypoint = require('./Waypoint.js');
let AgentGroup = require('./AgentGroup.js');
let Obstacle = require('./Obstacle.js');
let Wall = require('./Wall.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PedsimAgentsDataframe {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.agent_states = null;
      this.robot_states = null;
      this.simulated_waypoints = null;
      this.simulated_groups = null;
      this.obstacles = null;
      this.walls = null;
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
      if (initObj.hasOwnProperty('robot_states')) {
        this.robot_states = initObj.robot_states
      }
      else {
        this.robot_states = [];
      }
      if (initObj.hasOwnProperty('simulated_waypoints')) {
        this.simulated_waypoints = initObj.simulated_waypoints
      }
      else {
        this.simulated_waypoints = [];
      }
      if (initObj.hasOwnProperty('simulated_groups')) {
        this.simulated_groups = initObj.simulated_groups
      }
      else {
        this.simulated_groups = [];
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PedsimAgentsDataframe
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [agent_states]
    // Serialize the length for message field [agent_states]
    bufferOffset = _serializer.uint32(obj.agent_states.length, buffer, bufferOffset);
    obj.agent_states.forEach((val) => {
      bufferOffset = AgentState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [robot_states]
    // Serialize the length for message field [robot_states]
    bufferOffset = _serializer.uint32(obj.robot_states.length, buffer, bufferOffset);
    obj.robot_states.forEach((val) => {
      bufferOffset = RobotState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [simulated_waypoints]
    // Serialize the length for message field [simulated_waypoints]
    bufferOffset = _serializer.uint32(obj.simulated_waypoints.length, buffer, bufferOffset);
    obj.simulated_waypoints.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [simulated_groups]
    // Serialize the length for message field [simulated_groups]
    bufferOffset = _serializer.uint32(obj.simulated_groups.length, buffer, bufferOffset);
    obj.simulated_groups.forEach((val) => {
      bufferOffset = AgentGroup.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = Wall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PedsimAgentsDataframe
    let len;
    let data = new PedsimAgentsDataframe(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [agent_states]
    // Deserialize array length for message field [agent_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agent_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agent_states[i] = AgentState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [robot_states]
    // Deserialize array length for message field [robot_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_states[i] = RobotState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [simulated_waypoints]
    // Deserialize array length for message field [simulated_waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.simulated_waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.simulated_waypoints[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [simulated_groups]
    // Deserialize array length for message field [simulated_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.simulated_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.simulated_groups[i] = AgentGroup.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = Wall.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.agent_states.forEach((val) => {
      length += AgentState.getMessageSize(val);
    });
    object.robot_states.forEach((val) => {
      length += RobotState.getMessageSize(val);
    });
    object.simulated_waypoints.forEach((val) => {
      length += Waypoint.getMessageSize(val);
    });
    object.simulated_groups.forEach((val) => {
      length += AgentGroup.getMessageSize(val);
    });
    object.obstacles.forEach((val) => {
      length += Obstacle.getMessageSize(val);
    });
    length += 49 * object.walls.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/PedsimAgentsDataframe';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c051cf49747f6875eb7bd2af8dc2ea06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    pedsim_msgs/AgentState[] agent_states
    pedsim_msgs/RobotState[] robot_states
    pedsim_msgs/Waypoint[] simulated_waypoints
    pedsim_msgs/AgentGroup[] simulated_groups
    pedsim_msgs/Obstacle[] obstacles
    pedsim_msgs/Wall[] walls
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
    ================================================================================
    MSG: pedsim_msgs/RobotState
    string name
    geometry_msgs/Pose pose
    geometry_msgs/Twist twist
    ================================================================================
    MSG: pedsim_msgs/Waypoint
    int8 BHV_SIMPLE = 0
    int8 BHV_SOURCE = 1
    int8 BHV_SINK = 2
    
    string name
    int8 type
    int8 behavior
    geometry_msgs/Point position
    float32 radius
    float32 interaction_radius
    
    ================================================================================
    MSG: pedsim_msgs/AgentGroup
    Header header
    string group_id
    float64 age
    string[] members
    geometry_msgs/Pose center_of_mass
    
    ================================================================================
    MSG: pedsim_msgs/Obstacle
    string name
    # type can be one of the following: "shelf"
    string type
    geometry_msgs/Pose pose
    float64 interaction_radius
    string yaml_path
    
    ================================================================================
    MSG: pedsim_msgs/Wall
    # A line obstacle in the simulator.
    
    geometry_msgs/Point start
    geometry_msgs/Point end
    uint8 layer
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PedsimAgentsDataframe(null);
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

    if (msg.robot_states !== undefined) {
      resolved.robot_states = new Array(msg.robot_states.length);
      for (let i = 0; i < resolved.robot_states.length; ++i) {
        resolved.robot_states[i] = RobotState.Resolve(msg.robot_states[i]);
      }
    }
    else {
      resolved.robot_states = []
    }

    if (msg.simulated_waypoints !== undefined) {
      resolved.simulated_waypoints = new Array(msg.simulated_waypoints.length);
      for (let i = 0; i < resolved.simulated_waypoints.length; ++i) {
        resolved.simulated_waypoints[i] = Waypoint.Resolve(msg.simulated_waypoints[i]);
      }
    }
    else {
      resolved.simulated_waypoints = []
    }

    if (msg.simulated_groups !== undefined) {
      resolved.simulated_groups = new Array(msg.simulated_groups.length);
      for (let i = 0; i < resolved.simulated_groups.length; ++i) {
        resolved.simulated_groups[i] = AgentGroup.Resolve(msg.simulated_groups[i]);
      }
    }
    else {
      resolved.simulated_groups = []
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = Obstacle.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = Wall.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    return resolved;
    }
};

module.exports = PedsimAgentsDataframe;
