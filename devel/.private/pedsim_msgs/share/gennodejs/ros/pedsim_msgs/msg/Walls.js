// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Wall = require('./Wall.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Walls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.walls = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Walls
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = Wall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Walls
    let len;
    let data = new Walls(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = Wall.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 49 * object.walls.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/Walls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a1156a7d87b3318357fc49bf6a10aaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A collection of line obstacles.
    # No need to header since these are detemined at sim initiation time.
    Header header
    pedsim_msgs/Wall[] walls
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pedsim_msgs/Wall
    # A line obstacle in the simulator.
    
    geometry_msgs/Point start
    geometry_msgs/Point end
    uint8 layer
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
    const resolved = new Walls(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = Wall.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    return resolved;
    }
};

module.exports = Walls;
