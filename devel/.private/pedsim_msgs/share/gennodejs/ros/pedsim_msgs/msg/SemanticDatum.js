// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SemanticDatum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.evidence = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('evidence')) {
        this.evidence = initObj.evidence
      }
      else {
        this.evidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticDatum
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [evidence]
    bufferOffset = _serializer.float32(obj.evidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticDatum
    let len;
    let data = new SemanticDatum(null);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [evidence]
    data.evidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/SemanticDatum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad0a2aaed128f76f0b996bf1dd0aa14d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point location
    float32 evidence
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
    const resolved = new SemanticDatum(null);
    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Point.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Point()
    }

    if (msg.evidence !== undefined) {
      resolved.evidence = msg.evidence;
    }
    else {
      resolved.evidence = 0.0
    }

    return resolved;
    }
};

module.exports = SemanticDatum;
