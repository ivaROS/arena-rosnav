// Auto-generated. Do not edit!

// (in-package ford_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ClusterHit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ped_id = null;
      this.likelihood = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ped_id')) {
        this.ped_id = initObj.ped_id
      }
      else {
        this.ped_id = 0;
      }
      if (initObj.hasOwnProperty('likelihood')) {
        this.likelihood = initObj.likelihood
      }
      else {
        this.likelihood = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterHit
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ped_id]
    bufferOffset = _serializer.uint32(obj.ped_id, buffer, bufferOffset);
    // Serialize message field [likelihood]
    bufferOffset = _serializer.float32(obj.likelihood, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterHit
    let len;
    let data = new ClusterHit(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ped_id]
    data.ped_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [likelihood]
    data.likelihood = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/ClusterHit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22a0a4f41b3e5b3041fdd6c1be6ae884';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 ped_id
    float32 likelihood
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClusterHit(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ped_id !== undefined) {
      resolved.ped_id = msg.ped_id;
    }
    else {
      resolved.ped_id = 0
    }

    if (msg.likelihood !== undefined) {
      resolved.likelihood = msg.likelihood;
    }
    else {
      resolved.likelihood = 0.0
    }

    return resolved;
    }
};

module.exports = ClusterHit;
