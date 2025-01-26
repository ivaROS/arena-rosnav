// Auto-generated. Do not edit!

// (in-package cob_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DockRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.poses = null;
      this.stop_topic = null;
      this.stop_message_field = null;
      this.stop_compare_value = null;
      this.dist_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('stop_topic')) {
        this.stop_topic = initObj.stop_topic
      }
      else {
        this.stop_topic = '';
      }
      if (initObj.hasOwnProperty('stop_message_field')) {
        this.stop_message_field = initObj.stop_message_field
      }
      else {
        this.stop_message_field = '';
      }
      if (initObj.hasOwnProperty('stop_compare_value')) {
        this.stop_compare_value = initObj.stop_compare_value
      }
      else {
        this.stop_compare_value = false;
      }
      if (initObj.hasOwnProperty('dist_threshold')) {
        this.dist_threshold = initObj.dist_threshold
      }
      else {
        this.dist_threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockRequest
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stop_topic]
    bufferOffset = _serializer.string(obj.stop_topic, buffer, bufferOffset);
    // Serialize message field [stop_message_field]
    bufferOffset = _serializer.string(obj.stop_message_field, buffer, bufferOffset);
    // Serialize message field [stop_compare_value]
    bufferOffset = _serializer.bool(obj.stop_compare_value, buffer, bufferOffset);
    // Serialize message field [dist_threshold]
    bufferOffset = _serializer.float32(obj.dist_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockRequest
    let len;
    let data = new DockRequest(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stop_topic]
    data.stop_topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stop_message_field]
    data.stop_message_field = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stop_compare_value]
    data.stop_compare_value = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dist_threshold]
    data.dist_threshold = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    length += 56 * object.poses.length;
    length += _getByteLength(object.stop_topic);
    length += _getByteLength(object.stop_message_field);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_srvs/DockRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bca2ed6cdf3583c72905a8a6c651ef08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string frame_id
    geometry_msgs/Pose[] poses
    string stop_topic
    string stop_message_field
    bool stop_compare_value
    float32 dist_threshold
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockRequest(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    if (msg.stop_topic !== undefined) {
      resolved.stop_topic = msg.stop_topic;
    }
    else {
      resolved.stop_topic = ''
    }

    if (msg.stop_message_field !== undefined) {
      resolved.stop_message_field = msg.stop_message_field;
    }
    else {
      resolved.stop_message_field = ''
    }

    if (msg.stop_compare_value !== undefined) {
      resolved.stop_compare_value = msg.stop_compare_value;
    }
    else {
      resolved.stop_compare_value = false
    }

    if (msg.dist_threshold !== undefined) {
      resolved.dist_threshold = msg.dist_threshold;
    }
    else {
      resolved.dist_threshold = 0.0
    }

    return resolved;
    }
};

class DockResponse {
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
    // Serializes a message object of type DockResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockResponse
    let len;
    let data = new DockResponse(null);
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
    return 'cob_srvs/DockResponse';
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
    const resolved = new DockResponse(null);
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
  Request: DockRequest,
  Response: DockResponse,
  md5sum() { return 'c80e493964d9d49f37dbb6ac87283f34'; },
  datatype() { return 'cob_srvs/Dock'; }
};
