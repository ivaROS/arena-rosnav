// Auto-generated. Do not edit!

// (in-package flatland_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DangerZone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.dangerZoneRadius = null;
      this.dangerZoneAngle = null;
      this.dangerZoneCenter = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('dangerZoneRadius')) {
        this.dangerZoneRadius = initObj.dangerZoneRadius
      }
      else {
        this.dangerZoneRadius = 0.0;
      }
      if (initObj.hasOwnProperty('dangerZoneAngle')) {
        this.dangerZoneAngle = initObj.dangerZoneAngle
      }
      else {
        this.dangerZoneAngle = 0.0;
      }
      if (initObj.hasOwnProperty('dangerZoneCenter')) {
        this.dangerZoneCenter = initObj.dangerZoneCenter
      }
      else {
        this.dangerZoneCenter = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DangerZone
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [dangerZoneRadius]
    bufferOffset = _serializer.float64(obj.dangerZoneRadius, buffer, bufferOffset);
    // Serialize message field [dangerZoneAngle]
    bufferOffset = _serializer.float64(obj.dangerZoneAngle, buffer, bufferOffset);
    // Serialize message field [dangerZoneCenter]
    bufferOffset = _arraySerializer.float64(obj.dangerZoneCenter, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DangerZone
    let len;
    let data = new DangerZone(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [dangerZoneRadius]
    data.dangerZoneRadius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dangerZoneAngle]
    data.dangerZoneAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dangerZoneCenter]
    data.dangerZoneCenter = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.dangerZoneCenter.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flatland_msgs/DangerZone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '817c5f50a4ebcc8474eeb2680eb5429a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 dangerZoneRadius
    float64 dangerZoneAngle
    float64[] dangerZoneCenter
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
    const resolved = new DangerZone(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.dangerZoneRadius !== undefined) {
      resolved.dangerZoneRadius = msg.dangerZoneRadius;
    }
    else {
      resolved.dangerZoneRadius = 0.0
    }

    if (msg.dangerZoneAngle !== undefined) {
      resolved.dangerZoneAngle = msg.dangerZoneAngle;
    }
    else {
      resolved.dangerZoneAngle = 0.0
    }

    if (msg.dangerZoneCenter !== undefined) {
      resolved.dangerZoneCenter = msg.dangerZoneCenter;
    }
    else {
      resolved.dangerZoneCenter = []
    }

    return resolved;
    }
};

module.exports = DangerZone;
