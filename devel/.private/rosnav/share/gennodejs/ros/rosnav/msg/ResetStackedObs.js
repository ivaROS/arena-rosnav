// Auto-generated. Do not edit!

// (in-package rosnav.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ResetStackedObs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_scan = null;
      this.goal_in_robot_frame = null;
      this.last_action = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_scan')) {
        this.laser_scan = initObj.laser_scan
      }
      else {
        this.laser_scan = [];
      }
      if (initObj.hasOwnProperty('goal_in_robot_frame')) {
        this.goal_in_robot_frame = initObj.goal_in_robot_frame
      }
      else {
        this.goal_in_robot_frame = [];
      }
      if (initObj.hasOwnProperty('last_action')) {
        this.last_action = initObj.last_action
      }
      else {
        this.last_action = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetStackedObs
    // Serialize message field [laser_scan]
    bufferOffset = _arraySerializer.float32(obj.laser_scan, buffer, bufferOffset, null);
    // Serialize message field [goal_in_robot_frame]
    bufferOffset = _arraySerializer.float32(obj.goal_in_robot_frame, buffer, bufferOffset, null);
    // Serialize message field [last_action]
    bufferOffset = _arraySerializer.float32(obj.last_action, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetStackedObs
    let len;
    let data = new ResetStackedObs(null);
    // Deserialize message field [laser_scan]
    data.laser_scan = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [goal_in_robot_frame]
    data.goal_in_robot_frame = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [last_action]
    data.last_action = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.laser_scan.length;
    length += 4 * object.goal_in_robot_frame.length;
    length += 4 * object.last_action.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosnav/ResetStackedObs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac16969c4d699f9151949bedcb64bec9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] laser_scan
    float32[] goal_in_robot_frame
    float32[] last_action
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetStackedObs(null);
    if (msg.laser_scan !== undefined) {
      resolved.laser_scan = msg.laser_scan;
    }
    else {
      resolved.laser_scan = []
    }

    if (msg.goal_in_robot_frame !== undefined) {
      resolved.goal_in_robot_frame = msg.goal_in_robot_frame;
    }
    else {
      resolved.goal_in_robot_frame = []
    }

    if (msg.last_action !== undefined) {
      resolved.last_action = msg.last_action;
    }
    else {
      resolved.last_action = []
    }

    return resolved;
    }
};

module.exports = ResetStackedObs;
