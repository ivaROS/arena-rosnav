// Auto-generated. Do not edit!

// (in-package pedsim_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpawnPedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pos = null;
      this.type = null;
      this.number_of_peds = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('number_of_peds')) {
        this.number_of_peds = initObj.number_of_peds
      }
      else {
        this.number_of_peds = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnPedRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [number_of_peds]
    bufferOffset = _serializer.int16(obj.number_of_peds, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnPedRequest
    let len;
    let data = new SpawnPedRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [number_of_peds]
    data.number_of_peds = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += 24 * object.waypoints.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnPedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8aaa615f28566e1264a32400e0be8e7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Added by Ronja Gueldenring
    # For spawning agents dynamically in pedsim and forwarding them to flatland
    string id
    geometry_msgs/Point pos
    int16 type
    int16 number_of_peds
    geometry_msgs/Point[] waypoints
    
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
    const resolved = new SpawnPedRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Point.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Point()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.number_of_peds !== undefined) {
      resolved.number_of_peds = msg.number_of_peds;
    }
    else {
      resolved.number_of_peds = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = geometry_msgs.msg.Point.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

class SpawnPedResponse {
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
    // Serializes a message object of type SpawnPedResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnPedResponse
    let len;
    let data = new SpawnPedResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnPedResponse';
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
    const resolved = new SpawnPedResponse(null);
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
  Request: SpawnPedRequest,
  Response: SpawnPedResponse,
  md5sum() { return 'dad6de4944e873f2a2559273751d6b69'; },
  datatype() { return 'pedsim_srvs/SpawnPed'; }
};
