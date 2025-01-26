// Auto-generated. Do not edit!

// (in-package flatland_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Model = require('../msg/Model.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpawnModelsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.models = null;
    }
    else {
      if (initObj.hasOwnProperty('models')) {
        this.models = initObj.models
      }
      else {
        this.models = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnModelsRequest
    // Serialize message field [models]
    // Serialize the length for message field [models]
    bufferOffset = _serializer.uint32(obj.models.length, buffer, bufferOffset);
    obj.models.forEach((val) => {
      bufferOffset = Model.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnModelsRequest
    let len;
    let data = new SpawnModelsRequest(null);
    // Deserialize message field [models]
    // Deserialize array length for message field [models]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.models = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.models[i] = Model.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.models.forEach((val) => {
      length += Model.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flatland_msgs/SpawnModelsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a8649526a46e760274adacfc55784e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    flatland_msgs/Model[] models
    
    ================================================================================
    MSG: flatland_msgs/Model
    string yaml_path
    string name
    string ns
    geometry_msgs/Pose2D pose
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnModelsRequest(null);
    if (msg.models !== undefined) {
      resolved.models = new Array(msg.models.length);
      for (let i = 0; i < resolved.models.length; ++i) {
        resolved.models[i] = Model.Resolve(msg.models[i]);
      }
    }
    else {
      resolved.models = []
    }

    return resolved;
    }
};

class SpawnModelsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnModelsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnModelsResponse
    let len;
    let data = new SpawnModelsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flatland_msgs/SpawnModelsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnModelsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SpawnModelsRequest,
  Response: SpawnModelsResponse,
  md5sum() { return '25781a684ae71b6364dc4642097d5ed2'; },
  datatype() { return 'flatland_msgs/SpawnModels'; }
};
