// Auto-generated. Do not edit!

// (in-package pedsim_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pedsim_msgs = _finder('pedsim_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpawnWallsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.walls = null;
    }
    else {
      if (initObj.hasOwnProperty('walls')) {
        this.walls = initObj.walls
      }
      else {
        this.walls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnWallsRequest
    // Serialize message field [walls]
    // Serialize the length for message field [walls]
    bufferOffset = _serializer.uint32(obj.walls.length, buffer, bufferOffset);
    obj.walls.forEach((val) => {
      bufferOffset = pedsim_msgs.msg.Wall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnWallsRequest
    let len;
    let data = new SpawnWallsRequest(null);
    // Deserialize message field [walls]
    // Deserialize array length for message field [walls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.walls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.walls[i] = pedsim_msgs.msg.Wall.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 49 * object.walls.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnWallsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e5057156bb1500cfecde0bf4bbe71bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Junhui Li
    # info the pedsim_ros the position of static obstacles
    pedsim_msgs/Wall[] walls
    
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
    const resolved = new SpawnWallsRequest(null);
    if (msg.walls !== undefined) {
      resolved.walls = new Array(msg.walls.length);
      for (let i = 0; i < resolved.walls.length; ++i) {
        resolved.walls[i] = pedsim_msgs.msg.Wall.Resolve(msg.walls[i]);
      }
    }
    else {
      resolved.walls = []
    }

    return resolved;
    }
};

class SpawnWallsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnWallsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnWallsResponse
    let len;
    let data = new SpawnWallsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnWallsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnWallsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SpawnWallsRequest,
  Response: SpawnWallsResponse,
  md5sum() { return '9b670e9e5b58056b6a66595c998a154d'; },
  datatype() { return 'pedsim_srvs/SpawnWalls'; }
};
