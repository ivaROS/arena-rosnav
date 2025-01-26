// Auto-generated. Do not edit!

// (in-package cob_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetObstacleDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.links = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('links')) {
        this.links = initObj.links
      }
      else {
        this.links = [];
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistanceRequest
    // Serialize message field [links]
    bufferOffset = _arraySerializer.string(obj.links, buffer, bufferOffset, null);
    // Serialize message field [objects]
    bufferOffset = _arraySerializer.string(obj.objects, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistanceRequest
    let len;
    let data = new GetObstacleDistanceRequest(null);
    // Deserialize message field [links]
    data.links = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [objects]
    data.objects = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.links.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.objects.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_control_msgs/GetObstacleDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26a63930cc171dbad7ae747d5d9efb00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] links
    string[] objects
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObstacleDistanceRequest(null);
    if (msg.links !== undefined) {
      resolved.links = msg.links;
    }
    else {
      resolved.links = []
    }

    if (msg.objects !== undefined) {
      resolved.objects = msg.objects;
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

class GetObstacleDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_to_object = null;
      this.distances = null;
    }
    else {
      if (initObj.hasOwnProperty('link_to_object')) {
        this.link_to_object = initObj.link_to_object
      }
      else {
        this.link_to_object = [];
      }
      if (initObj.hasOwnProperty('distances')) {
        this.distances = initObj.distances
      }
      else {
        this.distances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistanceResponse
    // Serialize message field [link_to_object]
    bufferOffset = _arraySerializer.string(obj.link_to_object, buffer, bufferOffset, null);
    // Serialize message field [distances]
    bufferOffset = _arraySerializer.float64(obj.distances, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistanceResponse
    let len;
    let data = new GetObstacleDistanceResponse(null);
    // Deserialize message field [link_to_object]
    data.link_to_object = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [distances]
    data.distances = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.link_to_object.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.distances.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_control_msgs/GetObstacleDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f350045e25a569fa591e752a415419b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] link_to_object
    float64[] distances
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObstacleDistanceResponse(null);
    if (msg.link_to_object !== undefined) {
      resolved.link_to_object = msg.link_to_object;
    }
    else {
      resolved.link_to_object = []
    }

    if (msg.distances !== undefined) {
      resolved.distances = msg.distances;
    }
    else {
      resolved.distances = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetObstacleDistanceRequest,
  Response: GetObstacleDistanceResponse,
  md5sum() { return 'f7fa899b8b5bba2d5f4beecae1d4101b'; },
  datatype() { return 'cob_control_msgs/GetObstacleDistance'; }
};
