// Auto-generated. Do not edit!

// (in-package all_in_one_local_planner_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetCostmapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetCostmapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetCostmapRequest
    let len;
    let data = new ResetCostmapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/ResetCostmapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request fields
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetCostmapRequest(null);
    return resolved;
    }
};

class ResetCostmapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.costmaps_resetted = null;
    }
    else {
      if (initObj.hasOwnProperty('costmaps_resetted')) {
        this.costmaps_resetted = initObj.costmaps_resetted
      }
      else {
        this.costmaps_resetted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetCostmapResponse
    // Serialize message field [costmaps_resetted]
    bufferOffset = _serializer.bool(obj.costmaps_resetted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetCostmapResponse
    let len;
    let data = new ResetCostmapResponse(null);
    // Deserialize message field [costmaps_resetted]
    data.costmaps_resetted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/ResetCostmapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c267a3b326f2460cbd8963b5e7db09b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response fields
    bool costmaps_resetted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetCostmapResponse(null);
    if (msg.costmaps_resetted !== undefined) {
      resolved.costmaps_resetted = msg.costmaps_resetted;
    }
    else {
      resolved.costmaps_resetted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ResetCostmapRequest,
  Response: ResetCostmapResponse,
  md5sum() { return 'c267a3b326f2460cbd8963b5e7db09b6'; },
  datatype() { return 'all_in_one_local_planner_interface/ResetCostmap'; }
};
