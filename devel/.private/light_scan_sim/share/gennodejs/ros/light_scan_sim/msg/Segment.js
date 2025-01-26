// Auto-generated. Do not edit!

// (in-package light_scan_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Segment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segment
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Check that the constant length array field [start] has the right length
    if (obj.start.length !== 2) {
      throw new Error('Unable to serialize array field start - length must be 2')
    }
    // Serialize message field [start]
    bufferOffset = _arraySerializer.float32(obj.start, buffer, bufferOffset, 2);
    // Check that the constant length array field [end] has the right length
    if (obj.end.length !== 2) {
      throw new Error('Unable to serialize array field end - length must be 2')
    }
    // Serialize message field [end]
    bufferOffset = _arraySerializer.float32(obj.end, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segment
    let len;
    let data = new Segment(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [end]
    data.end = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'light_scan_sim/Segment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a729512fcf7d3d835538035b772a6e15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type
    float32[2] start
    float32[2] end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segment(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = new Array(2).fill(0)
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = Segment;
