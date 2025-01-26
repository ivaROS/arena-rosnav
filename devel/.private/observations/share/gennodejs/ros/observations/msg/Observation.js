// Auto-generated. Do not edit!

// (in-package observations.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Observation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.observation = null;
    }
    else {
      if (initObj.hasOwnProperty('observation')) {
        this.observation = initObj.observation
      }
      else {
        this.observation = new Array(362).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Observation
    // Check that the constant length array field [observation] has the right length
    if (obj.observation.length !== 362) {
      throw new Error('Unable to serialize array field observation - length must be 362')
    }
    // Serialize message field [observation]
    bufferOffset = _arraySerializer.float32(obj.observation, buffer, bufferOffset, 362);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Observation
    let len;
    let data = new Observation(null);
    // Deserialize message field [observation]
    data.observation = _arrayDeserializer.float32(buffer, bufferOffset, 362)
    return data;
  }

  static getMessageSize(object) {
    return 1448;
  }

  static datatype() {
    // Returns string type for a message object
    return 'observations/Observation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f736eba6ff4f01375d960ed884fae68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[362] observation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Observation(null);
    if (msg.observation !== undefined) {
      resolved.observation = msg.observation;
    }
    else {
      resolved.observation = new Array(362).fill(0)
    }

    return resolved;
    }
};

module.exports = Observation;
