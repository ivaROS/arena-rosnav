// Auto-generated. Do not edit!

// (in-package costmap_2d.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ObstacleDump = require('../msg/ObstacleDump.js');
let SemanticDump = require('../msg/SemanticDump.js');
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetDumpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDumpRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDumpRequest
    let len;
    let data = new GetDumpRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_2d/GetDumpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDumpRequest(null);
    return resolved;
    }
};

class GetDumpResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.costmap = null;
      this.obstacle_layers = null;
      this.semantic_layers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('costmap')) {
        this.costmap = initObj.costmap
      }
      else {
        this.costmap = new nav_msgs.msg.OccupancyGrid();
      }
      if (initObj.hasOwnProperty('obstacle_layers')) {
        this.obstacle_layers = initObj.obstacle_layers
      }
      else {
        this.obstacle_layers = [];
      }
      if (initObj.hasOwnProperty('semantic_layers')) {
        this.semantic_layers = initObj.semantic_layers
      }
      else {
        this.semantic_layers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDumpResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [costmap]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.costmap, buffer, bufferOffset);
    // Serialize message field [obstacle_layers]
    // Serialize the length for message field [obstacle_layers]
    bufferOffset = _serializer.uint32(obj.obstacle_layers.length, buffer, bufferOffset);
    obj.obstacle_layers.forEach((val) => {
      bufferOffset = ObstacleDump.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [semantic_layers]
    // Serialize the length for message field [semantic_layers]
    bufferOffset = _serializer.uint32(obj.semantic_layers.length, buffer, bufferOffset);
    obj.semantic_layers.forEach((val) => {
      bufferOffset = SemanticDump.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDumpResponse
    let len;
    let data = new GetDumpResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [costmap]
    data.costmap = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_layers]
    // Deserialize array length for message field [obstacle_layers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_layers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_layers[i] = ObstacleDump.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [semantic_layers]
    // Deserialize array length for message field [semantic_layers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.semantic_layers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.semantic_layers[i] = SemanticDump.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.costmap);
    object.obstacle_layers.forEach((val) => {
      length += ObstacleDump.getMessageSize(val);
    });
    object.semantic_layers.forEach((val) => {
      length += SemanticDump.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_2d/GetDumpResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8c4a22fca4ff331263a69635b5c452d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    nav_msgs/OccupancyGrid costmap
    ObstacleDump[] obstacle_layers
    SemanticDump[] semantic_layers
    
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
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    MSG: costmap_2d/ObstacleDump
    sensor_msgs/PointCloud2[] scans
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
    MSG: costmap_2d/SemanticDump
    pedsim_msgs/SemanticData[] layers
    ================================================================================
    MSG: pedsim_msgs/SemanticData
    std_msgs/Header header
    pedsim_msgs/SemanticDatum[] points
    string type
    ================================================================================
    MSG: pedsim_msgs/SemanticDatum
    geometry_msgs/Point location
    float32 evidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDumpResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.costmap !== undefined) {
      resolved.costmap = nav_msgs.msg.OccupancyGrid.Resolve(msg.costmap)
    }
    else {
      resolved.costmap = new nav_msgs.msg.OccupancyGrid()
    }

    if (msg.obstacle_layers !== undefined) {
      resolved.obstacle_layers = new Array(msg.obstacle_layers.length);
      for (let i = 0; i < resolved.obstacle_layers.length; ++i) {
        resolved.obstacle_layers[i] = ObstacleDump.Resolve(msg.obstacle_layers[i]);
      }
    }
    else {
      resolved.obstacle_layers = []
    }

    if (msg.semantic_layers !== undefined) {
      resolved.semantic_layers = new Array(msg.semantic_layers.length);
      for (let i = 0; i < resolved.semantic_layers.length; ++i) {
        resolved.semantic_layers[i] = SemanticDump.Resolve(msg.semantic_layers[i]);
      }
    }
    else {
      resolved.semantic_layers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDumpRequest,
  Response: GetDumpResponse,
  md5sum() { return 'e8c4a22fca4ff331263a69635b5c452d'; },
  datatype() { return 'costmap_2d/GetDump'; }
};
