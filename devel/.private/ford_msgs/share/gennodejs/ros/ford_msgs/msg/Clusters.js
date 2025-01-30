// Auto-generated. Do not edit!

// (in-package ford_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Clusters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.labels = null;
      this.counts = null;
      this.mean_points = null;
      this.max_points = null;
      this.min_points = null;
      this.pointclouds = null;
      this.velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
      if (initObj.hasOwnProperty('counts')) {
        this.counts = initObj.counts
      }
      else {
        this.counts = [];
      }
      if (initObj.hasOwnProperty('mean_points')) {
        this.mean_points = initObj.mean_points
      }
      else {
        this.mean_points = [];
      }
      if (initObj.hasOwnProperty('max_points')) {
        this.max_points = initObj.max_points
      }
      else {
        this.max_points = [];
      }
      if (initObj.hasOwnProperty('min_points')) {
        this.min_points = initObj.min_points
      }
      else {
        this.min_points = [];
      }
      if (initObj.hasOwnProperty('pointclouds')) {
        this.pointclouds = initObj.pointclouds
      }
      else {
        this.pointclouds = [];
      }
      if (initObj.hasOwnProperty('velocities')) {
        this.velocities = initObj.velocities
      }
      else {
        this.velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Clusters
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.uint32(obj.labels, buffer, bufferOffset, null);
    // Serialize message field [counts]
    bufferOffset = _arraySerializer.uint32(obj.counts, buffer, bufferOffset, null);
    // Serialize message field [mean_points]
    // Serialize the length for message field [mean_points]
    bufferOffset = _serializer.uint32(obj.mean_points.length, buffer, bufferOffset);
    obj.mean_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [max_points]
    // Serialize the length for message field [max_points]
    bufferOffset = _serializer.uint32(obj.max_points.length, buffer, bufferOffset);
    obj.max_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [min_points]
    // Serialize the length for message field [min_points]
    bufferOffset = _serializer.uint32(obj.min_points.length, buffer, bufferOffset);
    obj.min_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pointclouds]
    // Serialize the length for message field [pointclouds]
    bufferOffset = _serializer.uint32(obj.pointclouds.length, buffer, bufferOffset);
    obj.pointclouds.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocities]
    // Serialize the length for message field [velocities]
    bufferOffset = _serializer.uint32(obj.velocities.length, buffer, bufferOffset);
    obj.velocities.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Clusters
    let len;
    let data = new Clusters(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [counts]
    data.counts = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [mean_points]
    // Deserialize array length for message field [mean_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mean_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mean_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [max_points]
    // Deserialize array length for message field [max_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.max_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.max_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [min_points]
    // Deserialize array length for message field [min_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.min_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.min_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pointclouds]
    // Deserialize array length for message field [pointclouds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pointclouds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pointclouds[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocities]
    // Deserialize array length for message field [velocities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.velocities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.velocities[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.labels.length;
    length += 4 * object.counts.length;
    length += 24 * object.mean_points.length;
    length += 24 * object.max_points.length;
    length += 24 * object.min_points.length;
    object.pointclouds.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    length += 24 * object.velocities.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ford_msgs/Clusters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4df2e44fb76f60747b49f1ef14546917';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32[] labels
    uint32[] counts
    geometry_msgs/Point[] mean_points
    geometry_msgs/Point[] max_points
    geometry_msgs/Point[] min_points
    sensor_msgs/PointCloud2[] pointclouds
    geometry_msgs/Vector3[] velocities
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
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
    const resolved = new Clusters(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    if (msg.counts !== undefined) {
      resolved.counts = msg.counts;
    }
    else {
      resolved.counts = []
    }

    if (msg.mean_points !== undefined) {
      resolved.mean_points = new Array(msg.mean_points.length);
      for (let i = 0; i < resolved.mean_points.length; ++i) {
        resolved.mean_points[i] = geometry_msgs.msg.Point.Resolve(msg.mean_points[i]);
      }
    }
    else {
      resolved.mean_points = []
    }

    if (msg.max_points !== undefined) {
      resolved.max_points = new Array(msg.max_points.length);
      for (let i = 0; i < resolved.max_points.length; ++i) {
        resolved.max_points[i] = geometry_msgs.msg.Point.Resolve(msg.max_points[i]);
      }
    }
    else {
      resolved.max_points = []
    }

    if (msg.min_points !== undefined) {
      resolved.min_points = new Array(msg.min_points.length);
      for (let i = 0; i < resolved.min_points.length; ++i) {
        resolved.min_points[i] = geometry_msgs.msg.Point.Resolve(msg.min_points[i]);
      }
    }
    else {
      resolved.min_points = []
    }

    if (msg.pointclouds !== undefined) {
      resolved.pointclouds = new Array(msg.pointclouds.length);
      for (let i = 0; i < resolved.pointclouds.length; ++i) {
        resolved.pointclouds[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.pointclouds[i]);
      }
    }
    else {
      resolved.pointclouds = []
    }

    if (msg.velocities !== undefined) {
      resolved.velocities = new Array(msg.velocities.length);
      for (let i = 0; i < resolved.velocities.length; ++i) {
        resolved.velocities[i] = geometry_msgs.msg.Vector3.Resolve(msg.velocities[i]);
      }
    }
    else {
      resolved.velocities = []
    }

    return resolved;
    }
};

module.exports = Clusters;
