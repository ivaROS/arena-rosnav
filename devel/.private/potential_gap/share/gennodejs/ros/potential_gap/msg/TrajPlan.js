// Auto-generated. Do not edit!

// (in-package potential_gap.msg)


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

class TrajPlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.child_frame_id = null;
      this.poses = null;
      this.twist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajPlan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [twist]
    // Serialize the length for message field [twist]
    bufferOffset = _serializer.uint32(obj.twist.length, buffer, bufferOffset);
    obj.twist.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Twist.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajPlan
    let len;
    let data = new TrajPlan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [twist]
    // Deserialize array length for message field [twist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.twist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.twist[i] = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.child_frame_id);
    length += 56 * object.poses.length;
    length += 48 * object.twist.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'potential_gap/TrajPlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7995b12f5ebd4d308e61284d93db9fe6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string child_frame_id
    geometry_msgs/Pose[] poses
    geometry_msgs/Twist[] twist
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new TrajPlan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
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

    if (msg.twist !== undefined) {
      resolved.twist = new Array(msg.twist.length);
      for (let i = 0; i < resolved.twist.length; ++i) {
        resolved.twist[i] = geometry_msgs.msg.Twist.Resolve(msg.twist[i]);
      }
    }
    else {
      resolved.twist = []
    }

    return resolved;
    }
};

module.exports = TrajPlan;
