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

class RegisterRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.odom_topic = null;
      this.yaml_path = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('odom_topic')) {
        this.odom_topic = initObj.odom_topic
      }
      else {
        this.odom_topic = '';
      }
      if (initObj.hasOwnProperty('yaml_path')) {
        this.yaml_path = initObj.yaml_path
      }
      else {
        this.yaml_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterRobotRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [odom_topic]
    bufferOffset = _serializer.string(obj.odom_topic, buffer, bufferOffset);
    // Serialize message field [yaml_path]
    bufferOffset = _serializer.string(obj.yaml_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterRobotRequest
    let len;
    let data = new RegisterRobotRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [odom_topic]
    data.odom_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [yaml_path]
    data.yaml_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.odom_topic);
    length += _getByteLength(object.yaml_path);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/RegisterRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cc01cea2a4279e94ae0294d86f41c77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string odom_topic
    string yaml_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterRobotRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.odom_topic !== undefined) {
      resolved.odom_topic = msg.odom_topic;
    }
    else {
      resolved.odom_topic = ''
    }

    if (msg.yaml_path !== undefined) {
      resolved.yaml_path = msg.yaml_path;
    }
    else {
      resolved.yaml_path = ''
    }

    return resolved;
    }
};

class RegisterRobotResponse {
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
    // Serializes a message object of type RegisterRobotResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterRobotResponse
    let len;
    let data = new RegisterRobotResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/RegisterRobotResponse';
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
    const resolved = new RegisterRobotResponse(null);
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
  Request: RegisterRobotRequest,
  Response: RegisterRobotResponse,
  md5sum() { return '647c18b52962c6a7651146d18ac24de2'; },
  datatype() { return 'pedsim_srvs/RegisterRobot'; }
};
