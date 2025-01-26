// Auto-generated. Do not edit!

// (in-package cob_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObstacleDistance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.link_of_interest = null;
      this.obstacle_id = null;
      this.distance = null;
      this.frame_vector = null;
      this.nearest_point_frame_vector = null;
      this.nearest_point_obstacle_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('link_of_interest')) {
        this.link_of_interest = initObj.link_of_interest
      }
      else {
        this.link_of_interest = '';
      }
      if (initObj.hasOwnProperty('obstacle_id')) {
        this.obstacle_id = initObj.obstacle_id
      }
      else {
        this.obstacle_id = '';
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('frame_vector')) {
        this.frame_vector = initObj.frame_vector
      }
      else {
        this.frame_vector = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('nearest_point_frame_vector')) {
        this.nearest_point_frame_vector = initObj.nearest_point_frame_vector
      }
      else {
        this.nearest_point_frame_vector = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('nearest_point_obstacle_vector')) {
        this.nearest_point_obstacle_vector = initObj.nearest_point_obstacle_vector
      }
      else {
        this.nearest_point_obstacle_vector = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleDistance
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [link_of_interest]
    bufferOffset = _serializer.string(obj.link_of_interest, buffer, bufferOffset);
    // Serialize message field [obstacle_id]
    bufferOffset = _serializer.string(obj.obstacle_id, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [frame_vector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.frame_vector, buffer, bufferOffset);
    // Serialize message field [nearest_point_frame_vector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.nearest_point_frame_vector, buffer, bufferOffset);
    // Serialize message field [nearest_point_obstacle_vector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.nearest_point_obstacle_vector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleDistance
    let len;
    let data = new ObstacleDistance(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [link_of_interest]
    data.link_of_interest = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obstacle_id]
    data.obstacle_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frame_vector]
    data.frame_vector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [nearest_point_frame_vector]
    data.nearest_point_frame_vector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [nearest_point_obstacle_vector]
    data.nearest_point_obstacle_vector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.link_of_interest);
    length += _getByteLength(object.obstacle_id);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_control_msgs/ObstacleDistance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbbcad171002ad96c1fc44941d7a1bf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ObstacleDistance(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.link_of_interest !== undefined) {
      resolved.link_of_interest = msg.link_of_interest;
    }
    else {
      resolved.link_of_interest = ''
    }

    if (msg.obstacle_id !== undefined) {
      resolved.obstacle_id = msg.obstacle_id;
    }
    else {
      resolved.obstacle_id = ''
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.frame_vector !== undefined) {
      resolved.frame_vector = geometry_msgs.msg.Vector3.Resolve(msg.frame_vector)
    }
    else {
      resolved.frame_vector = new geometry_msgs.msg.Vector3()
    }

    if (msg.nearest_point_frame_vector !== undefined) {
      resolved.nearest_point_frame_vector = geometry_msgs.msg.Vector3.Resolve(msg.nearest_point_frame_vector)
    }
    else {
      resolved.nearest_point_frame_vector = new geometry_msgs.msg.Vector3()
    }

    if (msg.nearest_point_obstacle_vector !== undefined) {
      resolved.nearest_point_obstacle_vector = geometry_msgs.msg.Vector3.Resolve(msg.nearest_point_obstacle_vector)
    }
    else {
      resolved.nearest_point_obstacle_vector = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = ObstacleDistance;
