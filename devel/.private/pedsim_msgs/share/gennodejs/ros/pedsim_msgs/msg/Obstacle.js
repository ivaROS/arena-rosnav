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

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.pose = null;
      this.interaction_radius = null;
      this.yaml_path = null;
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
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('interaction_radius')) {
        this.interaction_radius = initObj.interaction_radius
      }
      else {
        this.interaction_radius = 0.0;
      }
      if (initObj.hasOwnProperty('yaml_path')) {
        this.yaml_path = initObj.yaml_path
      }
      else {
        this.yaml_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [interaction_radius]
    bufferOffset = _serializer.float64(obj.interaction_radius, buffer, bufferOffset);
    // Serialize message field [yaml_path]
    bufferOffset = _serializer.string(obj.yaml_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [interaction_radius]
    data.interaction_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaml_path]
    data.yaml_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.type);
    length += _getByteLength(object.yaml_path);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '350c1f538d3a1ef50c4420bdf8f2a426';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    # type can be one of the following: "shelf"
    string type
    geometry_msgs/Pose pose
    float64 interaction_radius
    string yaml_path
    
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
    const resolved = new Obstacle(null);
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

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.interaction_radius !== undefined) {
      resolved.interaction_radius = msg.interaction_radius;
    }
    else {
      resolved.interaction_radius = 0.0
    }

    if (msg.yaml_path !== undefined) {
      resolved.yaml_path = msg.yaml_path;
    }
    else {
      resolved.yaml_path = ''
    }

    return resolved;
    }
};

module.exports = Obstacle;
