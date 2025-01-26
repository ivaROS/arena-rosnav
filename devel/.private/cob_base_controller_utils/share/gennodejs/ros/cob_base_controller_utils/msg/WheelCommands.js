// Auto-generated. Do not edit!

// (in-package cob_base_controller_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelCommands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drive_target_velocity = null;
      this.steer_target_velocity = null;
      this.steer_target_position = null;
      this.steer_target_error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drive_target_velocity')) {
        this.drive_target_velocity = initObj.drive_target_velocity
      }
      else {
        this.drive_target_velocity = [];
      }
      if (initObj.hasOwnProperty('steer_target_velocity')) {
        this.steer_target_velocity = initObj.steer_target_velocity
      }
      else {
        this.steer_target_velocity = [];
      }
      if (initObj.hasOwnProperty('steer_target_position')) {
        this.steer_target_position = initObj.steer_target_position
      }
      else {
        this.steer_target_position = [];
      }
      if (initObj.hasOwnProperty('steer_target_error')) {
        this.steer_target_error = initObj.steer_target_error
      }
      else {
        this.steer_target_error = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCommands
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drive_target_velocity]
    bufferOffset = _arraySerializer.float64(obj.drive_target_velocity, buffer, bufferOffset, null);
    // Serialize message field [steer_target_velocity]
    bufferOffset = _arraySerializer.float64(obj.steer_target_velocity, buffer, bufferOffset, null);
    // Serialize message field [steer_target_position]
    bufferOffset = _arraySerializer.float64(obj.steer_target_position, buffer, bufferOffset, null);
    // Serialize message field [steer_target_error]
    bufferOffset = _arraySerializer.float64(obj.steer_target_error, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCommands
    let len;
    let data = new WheelCommands(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_target_velocity]
    data.drive_target_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [steer_target_velocity]
    data.steer_target_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [steer_target_position]
    data.steer_target_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [steer_target_error]
    data.steer_target_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.drive_target_velocity.length;
    length += 8 * object.steer_target_velocity.length;
    length += 8 * object.steer_target_position.length;
    length += 8 * object.steer_target_error.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_base_controller_utils/WheelCommands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77ff79ee11678be45d9ecbc2cb9d23dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64[] drive_target_velocity
    float64[] steer_target_velocity
    float64[] steer_target_position
    float64[] steer_target_error
    
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
    const resolved = new WheelCommands(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drive_target_velocity !== undefined) {
      resolved.drive_target_velocity = msg.drive_target_velocity;
    }
    else {
      resolved.drive_target_velocity = []
    }

    if (msg.steer_target_velocity !== undefined) {
      resolved.steer_target_velocity = msg.steer_target_velocity;
    }
    else {
      resolved.steer_target_velocity = []
    }

    if (msg.steer_target_position !== undefined) {
      resolved.steer_target_position = msg.steer_target_position;
    }
    else {
      resolved.steer_target_position = []
    }

    if (msg.steer_target_error !== undefined) {
      resolved.steer_target_error = msg.steer_target_error;
    }
    else {
      resolved.steer_target_error = []
    }

    return resolved;
    }
};

module.exports = WheelCommands;
