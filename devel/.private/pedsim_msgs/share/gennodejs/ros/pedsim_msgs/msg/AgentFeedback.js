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

class AgentFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.force = null;
      this.social_state = null;
      this.vmax = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('social_state')) {
        this.social_state = initObj.social_state
      }
      else {
        this.social_state = '';
      }
      if (initObj.hasOwnProperty('vmax')) {
        this.vmax = initObj.vmax
      }
      else {
        this.vmax = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentFeedback
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [social_state]
    bufferOffset = _serializer.string(obj.social_state, buffer, bufferOffset);
    // Serialize message field [vmax]
    bufferOffset = _serializer.float64(obj.vmax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentFeedback
    let len;
    let data = new AgentFeedback(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [social_state]
    data.social_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vmax]
    data.vmax = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += _getByteLength(object.social_state);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/AgentFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16b4e5ba3766183aa44251605e9788a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    geometry_msgs/Vector3 force
    string social_state
    float64 vmax
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
    const resolved = new AgentFeedback(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    if (msg.social_state !== undefined) {
      resolved.social_state = msg.social_state;
    }
    else {
      resolved.social_state = ''
    }

    if (msg.vmax !== undefined) {
      resolved.vmax = msg.vmax;
    }
    else {
      resolved.vmax = 0.0
    }

    return resolved;
    }
};

module.exports = AgentFeedback;
