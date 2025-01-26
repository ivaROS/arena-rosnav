// Auto-generated. Do not edit!

// (in-package ford_msgs.msg)


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

class ped_detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ids = null;
      this.world_vectors = null;
      this.left_vectors = null;
      this.right_vectors = null;
      this.class_strings = null;
      this.avg_colors = null;
      this.pincer_obs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('world_vectors')) {
        this.world_vectors = initObj.world_vectors
      }
      else {
        this.world_vectors = [];
      }
      if (initObj.hasOwnProperty('left_vectors')) {
        this.left_vectors = initObj.left_vectors
      }
      else {
        this.left_vectors = [];
      }
      if (initObj.hasOwnProperty('right_vectors')) {
        this.right_vectors = initObj.right_vectors
      }
      else {
        this.right_vectors = [];
      }
      if (initObj.hasOwnProperty('class_strings')) {
        this.class_strings = initObj.class_strings
      }
      else {
        this.class_strings = [];
      }
      if (initObj.hasOwnProperty('avg_colors')) {
        this.avg_colors = initObj.avg_colors
      }
      else {
        this.avg_colors = [];
      }
      if (initObj.hasOwnProperty('pincer_obs')) {
        this.pincer_obs = initObj.pincer_obs
      }
      else {
        this.pincer_obs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ped_detection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [world_vectors]
    // Serialize the length for message field [world_vectors]
    bufferOffset = _serializer.uint32(obj.world_vectors.length, buffer, bufferOffset);
    obj.world_vectors.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_vectors]
    // Serialize the length for message field [left_vectors]
    bufferOffset = _serializer.uint32(obj.left_vectors.length, buffer, bufferOffset);
    obj.left_vectors.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_vectors]
    // Serialize the length for message field [right_vectors]
    bufferOffset = _serializer.uint32(obj.right_vectors.length, buffer, bufferOffset);
    obj.right_vectors.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [class_strings]
    bufferOffset = _arraySerializer.string(obj.class_strings, buffer, bufferOffset, null);
    // Serialize message field [avg_colors]
    // Serialize the length for message field [avg_colors]
    bufferOffset = _serializer.uint32(obj.avg_colors.length, buffer, bufferOffset);
    obj.avg_colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pincer_obs]
    bufferOffset = _arraySerializer.uint8(obj.pincer_obs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ped_detection
    let len;
    let data = new ped_detection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [world_vectors]
    // Deserialize array length for message field [world_vectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.world_vectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.world_vectors[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_vectors]
    // Deserialize array length for message field [left_vectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_vectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_vectors[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_vectors]
    // Deserialize array length for message field [right_vectors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_vectors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_vectors[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [class_strings]
    data.class_strings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [avg_colors]
    // Deserialize array length for message field [avg_colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.avg_colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.avg_colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pincer_obs]
    data.pincer_obs = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ids.length;
    length += 24 * object.world_vectors.length;
    length += 24 * object.left_vectors.length;
    length += 24 * object.right_vectors.length;
    object.class_strings.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 16 * object.avg_colors.length;
    length += object.pincer_obs.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/ped_detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04d576943f22d0e1e58f8bb73ed60473';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32[] ids 
    geometry_msgs/Vector3[] world_vectors
    geometry_msgs/Vector3[] left_vectors
    geometry_msgs/Vector3[] right_vectors
    string[] class_strings
    std_msgs/ColorRGBA[] avg_colors
    uint8[] pincer_obs
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
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ped_detection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.world_vectors !== undefined) {
      resolved.world_vectors = new Array(msg.world_vectors.length);
      for (let i = 0; i < resolved.world_vectors.length; ++i) {
        resolved.world_vectors[i] = geometry_msgs.msg.Vector3.Resolve(msg.world_vectors[i]);
      }
    }
    else {
      resolved.world_vectors = []
    }

    if (msg.left_vectors !== undefined) {
      resolved.left_vectors = new Array(msg.left_vectors.length);
      for (let i = 0; i < resolved.left_vectors.length; ++i) {
        resolved.left_vectors[i] = geometry_msgs.msg.Vector3.Resolve(msg.left_vectors[i]);
      }
    }
    else {
      resolved.left_vectors = []
    }

    if (msg.right_vectors !== undefined) {
      resolved.right_vectors = new Array(msg.right_vectors.length);
      for (let i = 0; i < resolved.right_vectors.length; ++i) {
        resolved.right_vectors[i] = geometry_msgs.msg.Vector3.Resolve(msg.right_vectors[i]);
      }
    }
    else {
      resolved.right_vectors = []
    }

    if (msg.class_strings !== undefined) {
      resolved.class_strings = msg.class_strings;
    }
    else {
      resolved.class_strings = []
    }

    if (msg.avg_colors !== undefined) {
      resolved.avg_colors = new Array(msg.avg_colors.length);
      for (let i = 0; i < resolved.avg_colors.length; ++i) {
        resolved.avg_colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.avg_colors[i]);
      }
    }
    else {
      resolved.avg_colors = []
    }

    if (msg.pincer_obs !== undefined) {
      resolved.pincer_obs = msg.pincer_obs;
    }
    else {
      resolved.pincer_obs = []
    }

    return resolved;
    }
};

module.exports = ped_detection;
