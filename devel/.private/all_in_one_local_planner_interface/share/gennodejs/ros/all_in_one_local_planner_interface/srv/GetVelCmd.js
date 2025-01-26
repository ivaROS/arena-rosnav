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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetVelCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelCmdRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelCmdRequest
    let len;
    let data = new GetVelCmdRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/GetVelCmdRequest';
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
    const resolved = new GetVelCmdRequest(null);
    return resolved;
    }
};

class GetVelCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
      this.costmaps_resetted = null;
      this.successful = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('costmaps_resetted')) {
        this.costmaps_resetted = initObj.costmaps_resetted
      }
      else {
        this.costmaps_resetted = false;
      }
      if (initObj.hasOwnProperty('successful')) {
        this.successful = initObj.successful
      }
      else {
        this.successful = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelCmdResponse
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [costmaps_resetted]
    bufferOffset = _serializer.bool(obj.costmaps_resetted, buffer, bufferOffset);
    // Serialize message field [successful]
    bufferOffset = _serializer.bool(obj.successful, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelCmdResponse
    let len;
    let data = new GetVelCmdResponse(null);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [costmaps_resetted]
    data.costmaps_resetted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [successful]
    data.successful = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/GetVelCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '374e901b019d93b77917983b7fa0d888';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response fields
    geometry_msgs/Twist vel
    bool costmaps_resetted
    bool successful
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new GetVelCmdResponse(null);
    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    if (msg.costmaps_resetted !== undefined) {
      resolved.costmaps_resetted = msg.costmaps_resetted;
    }
    else {
      resolved.costmaps_resetted = false
    }

    if (msg.successful !== undefined) {
      resolved.successful = msg.successful;
    }
    else {
      resolved.successful = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetVelCmdRequest,
  Response: GetVelCmdResponse,
  md5sum() { return '374e901b019d93b77917983b7fa0d888'; },
  datatype() { return 'all_in_one_local_planner_interface/GetVelCmd'; }
};
