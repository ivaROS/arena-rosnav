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

class SpawnPedsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.peds = null;
    }
    else {
      if (initObj.hasOwnProperty('peds')) {
        this.peds = initObj.peds
      }
      else {
        this.peds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnPedsRequest
    // Serialize message field [peds]
    // Serialize the length for message field [peds]
    bufferOffset = _serializer.uint32(obj.peds.length, buffer, bufferOffset);
    obj.peds.forEach((val) => {
      bufferOffset = pedsim_msgs.msg.Ped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnPedsRequest
    let len;
    let data = new SpawnPedsRequest(null);
    // Deserialize message field [peds]
    // Deserialize array length for message field [peds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.peds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.peds[i] = pedsim_msgs.msg.Ped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.peds.forEach((val) => {
      length += pedsim_msgs.msg.Ped.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnPedsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f940e09ef2770c069f1561ed88349b1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Added by Ronja Gueldenring
    # For spawning an agent array dynamically in pedsim and forwarding them to flatland
    pedsim_msgs/Ped[] peds
    
    ================================================================================
    MSG: pedsim_msgs/Ped
    # Added by Ronja Gueldenring
    # For spawning agents dynamically in pedsim and forwarding them to flatland
    string id
    geometry_msgs/Point pos
    string type  # "adult", "child", "elder", "vehicle", "servicerobot"
    string yaml_file
    int16 number_of_peds
    float64 vmax
    
    string start_up_mode  # "default", "wait_timer", "trigger_zone"
    float64 wait_time
    float64 trigger_zone_radius
    
    float64 max_talking_distance
    float64 max_servicing_radius
    
    float64 chatting_probability
    float64 tell_story_probability
    float64 group_talking_probability
    float64 talking_and_walking_probability
    float64 requesting_service_probability
    float64 requesting_guide_probability
    float64 requesting_follower_probability
    
    float64 talking_base_time
    float64 tell_story_base_time
    float64 group_talking_base_time
    float64 talking_and_walking_base_time
    float64 receiving_service_base_time
    float64 requesting_service_base_time
    
    # forces
    float64 force_factor_desired
    float64 force_factor_obstacle
    float64 force_factor_social
    float64 force_factor_robot
    
    geometry_msgs/Point[] waypoints
    int16 waypoint_mode
    
    string configuration
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
    const resolved = new SpawnPedsRequest(null);
    if (msg.peds !== undefined) {
      resolved.peds = new Array(msg.peds.length);
      for (let i = 0; i < resolved.peds.length; ++i) {
        resolved.peds[i] = pedsim_msgs.msg.Ped.Resolve(msg.peds[i]);
      }
    }
    else {
      resolved.peds = []
    }

    return resolved;
    }
};

class SpawnPedsResponse {
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
    // Serializes a message object of type SpawnPedsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnPedsResponse
    let len;
    let data = new SpawnPedsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pedsim_srvs/SpawnPedsResponse';
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
    const resolved = new SpawnPedsResponse(null);
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
  Request: SpawnPedsRequest,
  Response: SpawnPedsResponse,
  md5sum() { return '1a418c9646b48a91fc86313fb280ad3f'; },
  datatype() { return 'pedsim_srvs/SpawnPeds'; }
};
