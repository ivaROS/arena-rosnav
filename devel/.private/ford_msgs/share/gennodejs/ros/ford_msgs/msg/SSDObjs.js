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

class SSDObjs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.avg_colors = null;
      this.clusters = null;
      this.pincer_obs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('avg_colors')) {
        this.avg_colors = initObj.avg_colors
      }
      else {
        this.avg_colors = [];
      }
      if (initObj.hasOwnProperty('clusters')) {
        this.clusters = initObj.clusters
      }
      else {
        this.clusters = [];
      }
      if (initObj.hasOwnProperty('pincer_obs')) {
        this.pincer_obs = initObj.pincer_obs
      }
      else {
        this.pincer_obs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SSDObjs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [avg_colors]
    // Serialize the length for message field [avg_colors]
    bufferOffset = _serializer.uint32(obj.avg_colors.length, buffer, bufferOffset);
    obj.avg_colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [clusters]
    // Serialize the length for message field [clusters]
    bufferOffset = _serializer.uint32(obj.clusters.length, buffer, bufferOffset);
    obj.clusters.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pincer_obs]
    bufferOffset = _arraySerializer.uint8(obj.pincer_obs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SSDObjs
    let len;
    let data = new SSDObjs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [avg_colors]
    // Deserialize array length for message field [avg_colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avg_colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avg_colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [clusters]
    // Deserialize array length for message field [clusters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clusters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clusters[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pincer_obs]
    data.pincer_obs = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.avg_colors.length;
    length += 24 * object.clusters.length;
    length += object.pincer_obs.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/SSDObjs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67a4b6ed1fabd91000a0077cb78e4704';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/ColorRGBA[] avg_colors
    geometry_msgs/Point[] clusters
    uint8[] pincer_obs
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
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
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
    const resolved = new SSDObjs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.avg_colors !== undefined) {
      resolved.avg_colors = new Array(msg.avg_colors.length);
      for (let i = 0; i < resolved.avg_colors.length; ++i) {
        resolved.avg_colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.avg_colors[i]);
      }
    }
    else {
      resolved.avg_colors = []
    }

    if (msg.clusters !== undefined) {
      resolved.clusters = new Array(msg.clusters.length);
      for (let i = 0; i < resolved.clusters.length; ++i) {
        resolved.clusters[i] = geometry_msgs.msg.Point.Resolve(msg.clusters[i]);
      }
    }
    else {
      resolved.clusters = []
    }

    if (msg.pincer_obs !== undefined) {
      resolved.pincer_obs = msg.pincer_obs;
    }
    else {
      resolved.pincer_obs = []
    }

    return resolved;
    }
};

module.exports = SSDObjs;
