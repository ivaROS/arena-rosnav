// Auto-generated. Do not edit!

// (in-package cob_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleDistance = require('./ObstacleDistance.js');

//-----------------------------------------------------------

class ObstacleDistances {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distances = null;
    }
    else {
      if (initObj.hasOwnProperty('distances')) {
        this.distances = initObj.distances
      }
      else {
        this.distances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleDistances
    // Serialize message field [distances]
    // Serialize the length for message field [distances]
    bufferOffset = _serializer.uint32(obj.distances.length, buffer, bufferOffset);
    obj.distances.forEach((val) => {
      bufferOffset = ObstacleDistance.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleDistances
    let len;
    let data = new ObstacleDistances(null);
    // Deserialize message field [distances]
    // Deserialize array length for message field [distances]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.distances = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.distances[i] = ObstacleDistance.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.distances.forEach((val) => {
      length += ObstacleDistance.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_control_msgs/ObstacleDistances';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58f6b8a2511da851588441c695d51807';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ObstacleDistance[] distances
    ================================================================================
    MSG: cob_control_msgs/ObstacleDistance
    Header header
    
    ## Collision pair consists of link of interest and obstacle
    # Registration name of the link of interest
    string link_of_interest
    # Registration name of the obstacle
    string obstacle_id
    
    ## distance between the nearest points on obstacle and link of interest
    float64 distance
    
    ## Vector pointing to the origin of the link
    geometry_msgs/Vector3 frame_vector
    
    ## Vector pointing to the nearest point on the link collision geometry (e.g. mesh)
    geometry_msgs/Vector3 nearest_point_frame_vector
    
    ## Vector pointing to the nearest point on the obstacle collision geometry (e.g. mesh)
    geometry_msgs/Vector3 nearest_point_obstacle_vector
    
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
    const resolved = new ObstacleDistances(null);
    if (msg.distances !== undefined) {
      resolved.distances = new Array(msg.distances.length);
      for (let i = 0; i < resolved.distances.length; ++i) {
        resolved.distances[i] = ObstacleDistance.Resolve(msg.distances[i]);
      }
    }
    else {
      resolved.distances = []
    }

    return resolved;
    }
};

module.exports = ObstacleDistances;
