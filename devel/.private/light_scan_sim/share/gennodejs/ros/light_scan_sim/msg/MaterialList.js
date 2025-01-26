// Auto-generated. Do not edit!

// (in-package light_scan_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Material = require('./Material.js');

//-----------------------------------------------------------

class MaterialList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.materials = null;
    }
    else {
      if (initObj.hasOwnProperty('materials')) {
        this.materials = initObj.materials
      }
      else {
        this.materials = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaterialList
    // Serialize message field [materials]
    // Serialize the length for message field [materials]
    bufferOffset = _serializer.uint32(obj.materials.length, buffer, bufferOffset);
    obj.materials.forEach((val) => {
      bufferOffset = Material.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaterialList
    let len;
    let data = new MaterialList(null);
    // Deserialize message field [materials]
    // Deserialize array length for message field [materials]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.materials = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.materials[i] = Material.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.materials.forEach((val) => {
      length += Material.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'light_scan_sim/MaterialList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3044149dcb81d0fb9254bae26c379855';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Material[] materials
    
    ================================================================================
    MSG: light_scan_sim/Material
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
    const resolved = new MaterialList(null);
    if (msg.materials !== undefined) {
      resolved.materials = new Array(msg.materials.length);
      for (let i = 0; i < resolved.materials.length; ++i) {
        resolved.materials[i] = Material.Resolve(msg.materials[i]);
      }
    }
    else {
      resolved.materials = []
    }

    return resolved;
    }
};

module.exports = MaterialList;
