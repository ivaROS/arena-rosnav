// Auto-generated. Do not edit!

// (in-package flatland_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Model {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.yaml_path = null;
      this.name = null;
      this.ns = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('yaml_path')) {
        this.yaml_path = initObj.yaml_path
      }
      else {
        this.yaml_path = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Model
    // Serialize message field [yaml_path]
    bufferOffset = _serializer.string(obj.yaml_path, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [ns]
    bufferOffset = _serializer.string(obj.ns, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Model
    let len;
    let data = new Model(null);
    // Deserialize message field [yaml_path]
    data.yaml_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ns]
    data.ns = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.yaml_path);
    length += _getByteLength(object.name);
    length += _getByteLength(object.ns);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'flatland_msgs/Model';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80a53491758229753f499a612e2e7065';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string yaml_path
    string name
    string ns
    geometry_msgs/Pose2D pose
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Model(null);
    if (msg.yaml_path !== undefined) {
      resolved.yaml_path = msg.yaml_path;
    }
    else {
      resolved.yaml_path = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose2D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = Model;
