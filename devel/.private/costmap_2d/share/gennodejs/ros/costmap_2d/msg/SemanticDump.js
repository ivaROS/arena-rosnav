// Auto-generated. Do not edit!

// (in-package costmap_2d.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pedsim_msgs = _finder('pedsim_msgs');

//-----------------------------------------------------------

class SemanticDump {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layers = null;
    }
    else {
      if (initObj.hasOwnProperty('layers')) {
        this.layers = initObj.layers
      }
      else {
        this.layers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticDump
    // Serialize message field [layers]
    // Serialize the length for message field [layers]
    bufferOffset = _serializer.uint32(obj.layers.length, buffer, bufferOffset);
    obj.layers.forEach((val) => {
      bufferOffset = pedsim_msgs.msg.SemanticData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticDump
    let len;
    let data = new SemanticDump(null);
    // Deserialize message field [layers]
    // Deserialize array length for message field [layers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.layers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.layers[i] = pedsim_msgs.msg.SemanticData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.layers.forEach((val) => {
      length += pedsim_msgs.msg.SemanticData.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'costmap_2d/SemanticDump';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f23a90c5da8e0d6842e9dec8eaee0281';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pedsim_msgs/SemanticData[] layers
    ================================================================================
    MSG: pedsim_msgs/SemanticData
    std_msgs/Header header
    pedsim_msgs/SemanticDatum[] points
    string type
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
    MSG: pedsim_msgs/SemanticDatum
    geometry_msgs/Point location
    float32 evidence
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new SemanticDump(null);
    if (msg.layers !== undefined) {
      resolved.layers = new Array(msg.layers.length);
      for (let i = 0; i < resolved.layers.length; ++i) {
        resolved.layers[i] = pedsim_msgs.msg.SemanticData.Resolve(msg.layers[i]);
      }
    }
    else {
      resolved.layers = []
    }

    return resolved;
    }
};

module.exports = SemanticDump;
