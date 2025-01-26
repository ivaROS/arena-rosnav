// Auto-generated. Do not edit!

// (in-package barn_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BARN_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scan = null;
      this.goal_cart = null;
    }
    else {
      if (initObj.hasOwnProperty('scan')) {
        this.scan = initObj.scan
      }
      else {
        this.scan = [];
      }
      if (initObj.hasOwnProperty('goal_cart')) {
        this.goal_cart = initObj.goal_cart
      }
      else {
        this.goal_cart = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BARN_data
    // Serialize message field [scan]
    bufferOffset = _arraySerializer.float32(obj.scan, buffer, bufferOffset, null);
    // Serialize message field [goal_cart]
    bufferOffset = _arraySerializer.float32(obj.goal_cart, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BARN_data
    let len;
    let data = new BARN_data(null);
    // Deserialize message field [scan]
    data.scan = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [goal_cart]
    data.goal_cart = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.scan.length;
    length += 4 * object.goal_cart.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'barn_msgs/BARN_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68e5ba558e737ae344773180a6c37ce7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] scan	  	# 720 range data from the laser scan
    float32[] goal_cart     # current goal in robot frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BARN_data(null);
    if (msg.scan !== undefined) {
      resolved.scan = msg.scan;
    }
    else {
      resolved.scan = []
    }

    if (msg.goal_cart !== undefined) {
      resolved.goal_cart = msg.goal_cart;
    }
    else {
      resolved.goal_cart = []
    }

    return resolved;
    }
};

module.exports = BARN_data;
