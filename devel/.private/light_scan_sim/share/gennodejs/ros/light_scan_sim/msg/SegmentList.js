// Auto-generated. Do not edit!

// (in-package light_scan_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Segment = require('./Segment.js');

//-----------------------------------------------------------

class SegmentList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.segments = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentList
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = Segment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentList
    let len;
    let data = new SegmentList(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = Segment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    length += 17 * object.segments.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'light_scan_sim/SegmentList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5500c4eb6ea115455652f791f8dfcdc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string frame_id  # TF frame that 
    Segment[] segments
    
    ================================================================================
    MSG: light_scan_sim/Segment
    uint8 type
    float32[2] start
    float32[2] end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SegmentList(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = Segment.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    return resolved;
    }
};

module.exports = SegmentList;
