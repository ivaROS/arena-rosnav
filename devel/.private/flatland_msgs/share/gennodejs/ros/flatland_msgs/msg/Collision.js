// Auto-generated. Do not edit!

// (in-package flatland_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector2 = require('./Vector2.js');

//-----------------------------------------------------------

class Collision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.entity_A = null;
      this.body_A = null;
      this.entity_B = null;
      this.body_B = null;
      this.magnitude_forces = null;
      this.contact_positions = null;
      this.contact_normals = null;
    }
    else {
      if (initObj.hasOwnProperty('entity_A')) {
        this.entity_A = initObj.entity_A
      }
      else {
        this.entity_A = '';
      }
      if (initObj.hasOwnProperty('body_A')) {
        this.body_A = initObj.body_A
      }
      else {
        this.body_A = '';
      }
      if (initObj.hasOwnProperty('entity_B')) {
        this.entity_B = initObj.entity_B
      }
      else {
        this.entity_B = '';
      }
      if (initObj.hasOwnProperty('body_B')) {
        this.body_B = initObj.body_B
      }
      else {
        this.body_B = '';
      }
      if (initObj.hasOwnProperty('magnitude_forces')) {
        this.magnitude_forces = initObj.magnitude_forces
      }
      else {
        this.magnitude_forces = [];
      }
      if (initObj.hasOwnProperty('contact_positions')) {
        this.contact_positions = initObj.contact_positions
      }
      else {
        this.contact_positions = [];
      }
      if (initObj.hasOwnProperty('contact_normals')) {
        this.contact_normals = initObj.contact_normals
      }
      else {
        this.contact_normals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Collision
    // Serialize message field [entity_A]
    bufferOffset = _serializer.string(obj.entity_A, buffer, bufferOffset);
    // Serialize message field [body_A]
    bufferOffset = _serializer.string(obj.body_A, buffer, bufferOffset);
    // Serialize message field [entity_B]
    bufferOffset = _serializer.string(obj.entity_B, buffer, bufferOffset);
    // Serialize message field [body_B]
    bufferOffset = _serializer.string(obj.body_B, buffer, bufferOffset);
    // Serialize message field [magnitude_forces]
    bufferOffset = _arraySerializer.float64(obj.magnitude_forces, buffer, bufferOffset, null);
    // Serialize message field [contact_positions]
    // Serialize the length for message field [contact_positions]
    bufferOffset = _serializer.uint32(obj.contact_positions.length, buffer, bufferOffset);
    obj.contact_positions.forEach((val) => {
      bufferOffset = Vector2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contact_normals]
    // Serialize the length for message field [contact_normals]
    bufferOffset = _serializer.uint32(obj.contact_normals.length, buffer, bufferOffset);
    obj.contact_normals.forEach((val) => {
      bufferOffset = Vector2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Collision
    let len;
    let data = new Collision(null);
    // Deserialize message field [entity_A]
    data.entity_A = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body_A]
    data.body_A = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [entity_B]
    data.entity_B = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body_B]
    data.body_B = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [magnitude_forces]
    data.magnitude_forces = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [contact_positions]
    // Deserialize array length for message field [contact_positions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_positions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_positions[i] = Vector2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contact_normals]
    // Deserialize array length for message field [contact_normals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_normals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_normals[i] = Vector2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.entity_A);
    length += _getByteLength(object.body_A);
    length += _getByteLength(object.entity_B);
    length += _getByteLength(object.body_B);
    length += 8 * object.magnitude_forces.length;
    length += 16 * object.contact_positions.length;
    length += 16 * object.contact_normals.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flatland_msgs/Collision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6959bf91b31e42582e1328efe4e2953';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string entity_A
    string body_A
    string entity_B
    string body_B
    float64[] magnitude_forces
    Vector2[] contact_positions
    Vector2[] contact_normals
    ================================================================================
    MSG: flatland_msgs/Vector2
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Collision(null);
    if (msg.entity_A !== undefined) {
      resolved.entity_A = msg.entity_A;
    }
    else {
      resolved.entity_A = ''
    }

    if (msg.body_A !== undefined) {
      resolved.body_A = msg.body_A;
    }
    else {
      resolved.body_A = ''
    }

    if (msg.entity_B !== undefined) {
      resolved.entity_B = msg.entity_B;
    }
    else {
      resolved.entity_B = ''
    }

    if (msg.body_B !== undefined) {
      resolved.body_B = msg.body_B;
    }
    else {
      resolved.body_B = ''
    }

    if (msg.magnitude_forces !== undefined) {
      resolved.magnitude_forces = msg.magnitude_forces;
    }
    else {
      resolved.magnitude_forces = []
    }

    if (msg.contact_positions !== undefined) {
      resolved.contact_positions = new Array(msg.contact_positions.length);
      for (let i = 0; i < resolved.contact_positions.length; ++i) {
        resolved.contact_positions[i] = Vector2.Resolve(msg.contact_positions[i]);
      }
    }
    else {
      resolved.contact_positions = []
    }

    if (msg.contact_normals !== undefined) {
      resolved.contact_normals = new Array(msg.contact_normals.length);
      for (let i = 0; i < resolved.contact_normals.length; ++i) {
        resolved.contact_normals[i] = Vector2.Resolve(msg.contact_normals[i]);
      }
    }
    else {
      resolved.contact_normals = []
    }

    return resolved;
    }
};

module.exports = Collision;
