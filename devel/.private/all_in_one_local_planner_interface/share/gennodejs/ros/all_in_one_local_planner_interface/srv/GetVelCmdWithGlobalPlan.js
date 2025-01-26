// Auto-generated. Do not edit!

// (in-package all_in_one_local_planner_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetVelCmdWithGlobalPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('global_plan')) {
        this.global_plan = initObj.global_plan
      }
      else {
        this.global_plan = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelCmdWithGlobalPlanRequest
    // Serialize message field [global_plan]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.global_plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelCmdWithGlobalPlanRequest
    let len;
    let data = new GetVelCmdWithGlobalPlanRequest(null);
    // Deserialize message field [global_plan]
    data.global_plan = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.global_plan);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9dcfe9a844c48c8242f417ba3d5dc4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request fields
    # global path
    nav_msgs/Path global_plan
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVelCmdWithGlobalPlanRequest(null);
    if (msg.global_plan !== undefined) {
      resolved.global_plan = nav_msgs.msg.Path.Resolve(msg.global_plan)
    }
    else {
      resolved.global_plan = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

class GetVelCmdWithGlobalPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
      this.costmaps_resetted = null;
      this.successful = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('costmaps_resetted')) {
        this.costmaps_resetted = initObj.costmaps_resetted
      }
      else {
        this.costmaps_resetted = false;
      }
      if (initObj.hasOwnProperty('successful')) {
        this.successful = initObj.successful
      }
      else {
        this.successful = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVelCmdWithGlobalPlanResponse
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [costmaps_resetted]
    bufferOffset = _serializer.bool(obj.costmaps_resetted, buffer, bufferOffset);
    // Serialize message field [successful]
    bufferOffset = _serializer.bool(obj.successful, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVelCmdWithGlobalPlanResponse
    let len;
    let data = new GetVelCmdWithGlobalPlanResponse(null);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [costmaps_resetted]
    data.costmaps_resetted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [successful]
    data.successful = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/GetVelCmdWithGlobalPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '374e901b019d93b77917983b7fa0d888';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response fields
    geometry_msgs/Twist vel
    bool costmaps_resetted
    bool successful
    
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
    const resolved = new GetVelCmdWithGlobalPlanResponse(null);
    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    if (msg.costmaps_resetted !== undefined) {
      resolved.costmaps_resetted = msg.costmaps_resetted;
    }
    else {
      resolved.costmaps_resetted = false
    }

    if (msg.successful !== undefined) {
      resolved.successful = msg.successful;
    }
    else {
      resolved.successful = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetVelCmdWithGlobalPlanRequest,
  Response: GetVelCmdWithGlobalPlanResponse,
  md5sum() { return '88faefbda94c00890b9153ab1dbd5a14'; },
  datatype() { return 'all_in_one_local_planner_interface/GetVelCmdWithGlobalPlan'; }
};
