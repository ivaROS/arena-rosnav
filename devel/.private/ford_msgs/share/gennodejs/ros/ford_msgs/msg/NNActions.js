// Auto-generated. Do not edit!

// (in-package ford_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NNActions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angles = null;
      this.max_speeds = null;
      this.subgoal = null;
      this.path_lengths = null;
      this.current_cost_to_go = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('max_speeds')) {
        this.max_speeds = initObj.max_speeds
      }
      else {
        this.max_speeds = [];
      }
      if (initObj.hasOwnProperty('subgoal')) {
        this.subgoal = initObj.subgoal
      }
      else {
        this.subgoal = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('path_lengths')) {
        this.path_lengths = initObj.path_lengths
      }
      else {
        this.path_lengths = [];
      }
      if (initObj.hasOwnProperty('current_cost_to_go')) {
        this.current_cost_to_go = initObj.current_cost_to_go
      }
      else {
        this.current_cost_to_go = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NNActions
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float32(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [max_speeds]
    bufferOffset = _arraySerializer.float32(obj.max_speeds, buffer, bufferOffset, null);
    // Serialize message field [subgoal]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.subgoal, buffer, bufferOffset);
    // Serialize message field [path_lengths]
    bufferOffset = _arraySerializer.float32(obj.path_lengths, buffer, bufferOffset, null);
    // Serialize message field [current_cost_to_go]
    bufferOffset = _serializer.float32(obj.current_cost_to_go, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NNActions
    let len;
    let data = new NNActions(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [max_speeds]
    data.max_speeds = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [subgoal]
    data.subgoal = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_lengths]
    data.path_lengths = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [current_cost_to_go]
    data.current_cost_to_go = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.angles.length;
    length += 4 * object.max_speeds.length;
    length += 4 * object.path_lengths.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/NNActions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baed85cab20cbff17eb30c95cd61ef93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32[] angles
    float32[] max_speeds
    geometry_msgs/Pose2D subgoal
    float32[] path_lengths
    float32 current_cost_to_go
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NNActions(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.max_speeds !== undefined) {
      resolved.max_speeds = msg.max_speeds;
    }
    else {
      resolved.max_speeds = []
    }

    if (msg.subgoal !== undefined) {
      resolved.subgoal = geometry_msgs.msg.Pose2D.Resolve(msg.subgoal)
    }
    else {
      resolved.subgoal = new geometry_msgs.msg.Pose2D()
    }

    if (msg.path_lengths !== undefined) {
      resolved.path_lengths = msg.path_lengths;
    }
    else {
      resolved.path_lengths = []
    }

    if (msg.current_cost_to_go !== undefined) {
      resolved.current_cost_to_go = msg.current_cost_to_go;
    }
    else {
      resolved.current_cost_to_go = 0.0
    }

    return resolved;
    }
};

module.exports = NNActions;
