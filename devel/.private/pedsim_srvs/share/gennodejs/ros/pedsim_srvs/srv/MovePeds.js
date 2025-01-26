// Auto-generated. Do not edit!

// (in-package pedsim_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MovePedsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.episode = null;
    }
    else {
      if (initObj.hasOwnProperty('episode')) {
        this.episode = initObj.episode
      }
      else {
        this.episode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovePedsRequest
    // Serialize message field [episode]
    bufferOffset = _serializer.int16(obj.episode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovePedsRequest
    let len;
    let data = new MovePedsRequest(null);
    // Deserialize message field [episode]
    data.episode = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/MovePedsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4c089102ebc2c99f229fa972fb35782';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Added by Junhui Li
    # For moving agents dynamically in pedsim
    int16 episode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovePedsRequest(null);
    if (msg.episode !== undefined) {
      resolved.episode = msg.episode;
    }
    else {
      resolved.episode = 0
    }

    return resolved;
    }
};

class MovePedsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovePedsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovePedsResponse
    let len;
    let data = new MovePedsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/MovePedsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovePedsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MovePedsRequest,
  Response: MovePedsResponse,
  md5sum() { return '7e70f76cdefe8786e8c6f0a9a54a958a'; },
  datatype() { return 'pedsim_srvs/MovePeds'; }
};
