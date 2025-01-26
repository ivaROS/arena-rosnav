// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgentFeedback = require('./AgentFeedback.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AgentFeedbacks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.agents = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('agents')) {
        this.agents = initObj.agents
      }
      else {
        this.agents = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentFeedbacks
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [agents]
    // Serialize the length for message field [agents]
    bufferOffset = _serializer.uint32(obj.agents.length, buffer, bufferOffset);
    obj.agents.forEach((val) => {
      bufferOffset = AgentFeedback.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentFeedbacks
    let len;
    let data = new AgentFeedbacks(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [agents]
    // Deserialize array length for message field [agents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agents[i] = AgentFeedback.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.agents.forEach((val) => {
      length += AgentFeedback.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/AgentFeedbacks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60d85c015234b6863418e312316fe4e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    pedsim_msgs/AgentFeedback[] agents
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
    MSG: pedsim_msgs/AgentFeedback
    string id
    geometry_msgs/Vector3 force
    string social_state
    float64 vmax
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentFeedbacks(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.agents !== undefined) {
      resolved.agents = new Array(msg.agents.length);
      for (let i = 0; i < resolved.agents.length; ++i) {
        resolved.agents[i] = AgentFeedback.Resolve(msg.agents[i]);
      }
    }
    else {
      resolved.agents = []
    }

    return resolved;
    }
};

module.exports = AgentFeedbacks;
