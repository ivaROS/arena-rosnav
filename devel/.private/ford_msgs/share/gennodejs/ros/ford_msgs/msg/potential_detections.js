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

class potential_detections {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scores = null;
      this.detections = null;
      this.class_strings = null;
      this.pincer_obs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = [];
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
      if (initObj.hasOwnProperty('class_strings')) {
        this.class_strings = initObj.class_strings
      }
      else {
        this.class_strings = [];
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
    // Serializes a message object of type potential_detections
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [scores]
    bufferOffset = _arraySerializer.float64(obj.scores, buffer, bufferOffset, null);
    // Serialize message field [detections]
    bufferOffset = _arraySerializer.uint32(obj.detections, buffer, bufferOffset, null);
    // Serialize message field [class_strings]
    bufferOffset = _arraySerializer.string(obj.class_strings, buffer, bufferOffset, null);
    // Serialize message field [pincer_obs]
    bufferOffset = _arraySerializer.uint32(obj.pincer_obs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type potential_detections
    let len;
    let data = new potential_detections(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scores]
    data.scores = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [detections]
    data.detections = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [class_strings]
    data.class_strings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pincer_obs]
    data.pincer_obs = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.scores.length;
    length += 4 * object.detections.length;
    object.class_strings.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.pincer_obs.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/potential_detections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9ffa88f6b74a8b1030d56ef4a86d508';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] scores
    uint32[] detections
    string[] class_strings
    uint32[] pincer_obs
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
    const resolved = new potential_detections(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scores !== undefined) {
      resolved.scores = msg.scores;
    }
    else {
      resolved.scores = []
    }

    if (msg.detections !== undefined) {
      resolved.detections = msg.detections;
    }
    else {
      resolved.detections = []
    }

    if (msg.class_strings !== undefined) {
      resolved.class_strings = msg.class_strings;
    }
    else {
      resolved.class_strings = []
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

module.exports = potential_detections;
