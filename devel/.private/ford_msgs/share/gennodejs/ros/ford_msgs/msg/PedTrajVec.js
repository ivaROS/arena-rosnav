// Auto-generated. Do not edit!

// (in-package ford_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PedTraj = require('./PedTraj.js');

//-----------------------------------------------------------

class PedTrajVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ped_traj_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('ped_traj_vec')) {
        this.ped_traj_vec = initObj.ped_traj_vec
      }
      else {
        this.ped_traj_vec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PedTrajVec
    // Serialize message field [ped_traj_vec]
    // Serialize the length for message field [ped_traj_vec]
    bufferOffset = _serializer.uint32(obj.ped_traj_vec.length, buffer, bufferOffset);
    obj.ped_traj_vec.forEach((val) => {
      bufferOffset = PedTraj.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PedTrajVec
    let len;
    let data = new PedTrajVec(null);
    // Deserialize message field [ped_traj_vec]
    // Deserialize array length for message field [ped_traj_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ped_traj_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ped_traj_vec[i] = PedTraj.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ped_traj_vec.forEach((val) => {
      length += PedTraj.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/PedTrajVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05f33aed1bfc6d0d35110034d9c56bfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ford_msgs/PedTraj[] ped_traj_vec
    ================================================================================
    MSG: ford_msgs/PedTraj
    uint32 ped_id
    ford_msgs/Pose2DStamped[] traj
    float32 value #Used for PREDICTION types
    uint8 type 
    #ENUM for type
    uint8 OBSERVATION=0
    uint8 PREDICTION_LINEAR=1
    uint8 PREDICTION_GP=2
    ================================================================================
    MSG: ford_msgs/Pose2DStamped
    std_msgs/Header header
    geometry_msgs/Pose2D pose
    geometry_msgs/Vector3 velocity
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
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
    const resolved = new PedTrajVec(null);
    if (msg.ped_traj_vec !== undefined) {
      resolved.ped_traj_vec = new Array(msg.ped_traj_vec.length);
      for (let i = 0; i < resolved.ped_traj_vec.length; ++i) {
        resolved.ped_traj_vec[i] = PedTraj.Resolve(msg.ped_traj_vec[i]);
      }
    }
    else {
      resolved.ped_traj_vec = []
    }

    return resolved;
    }
};

module.exports = PedTrajVec;
