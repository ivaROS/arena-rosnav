// Auto-generated. Do not edit!

// (in-package light_scan_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Material {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.color = null;
      this.min_return = null;
      this.max_return = null;
      this.angular_return = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('min_return')) {
        this.min_return = initObj.min_return
      }
      else {
        this.min_return = 0.0;
      }
      if (initObj.hasOwnProperty('max_return')) {
        this.max_return = initObj.max_return
      }
      else {
        this.max_return = 0.0;
      }
      if (initObj.hasOwnProperty('angular_return')) {
        this.angular_return = initObj.angular_return
      }
      else {
        this.angular_return = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Material
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Check that the constant length array field [color] has the right length
    if (obj.color.length !== 3) {
      throw new Error('Unable to serialize array field color - length must be 3')
    }
    // Serialize message field [color]
    bufferOffset = _arraySerializer.float32(obj.color, buffer, bufferOffset, 3);
    // Serialize message field [min_return]
    bufferOffset = _serializer.float32(obj.min_return, buffer, bufferOffset);
    // Serialize message field [max_return]
    bufferOffset = _serializer.float32(obj.max_return, buffer, bufferOffset);
    // Serialize message field [angular_return]
    bufferOffset = _serializer.float32(obj.angular_return, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Material
    let len;
    let data = new Material(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [min_return]
    data.min_return = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_return]
    data.max_return = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_return]
    data.angular_return = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.type);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'light_scan_sim/Material';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be27c5f5cd5a377e88aa33527ff882a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name  # for descriptive purposes
    string type  # opaque or transparent 
    float32[3] color  # RGB for visualization node
    float32 min_return  # 0.0 to 1.0 representing the minimum chance of return
    float32 max_return  # 0.0 to 1.0 representing the maximum chance of return
    float32 angular_return  # the chance of return lost per degree from perpendicular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Material(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = new Array(3).fill(0)
    }

    if (msg.min_return !== undefined) {
      resolved.min_return = msg.min_return;
    }
    else {
      resolved.min_return = 0.0
    }

    if (msg.max_return !== undefined) {
      resolved.max_return = msg.max_return;
    }
    else {
      resolved.max_return = 0.0
    }

    if (msg.angular_return !== undefined) {
      resolved.angular_return = msg.angular_return;
    }
    else {
      resolved.angular_return = 0.0
    }

    return resolved;
    }
};

module.exports = Material;
