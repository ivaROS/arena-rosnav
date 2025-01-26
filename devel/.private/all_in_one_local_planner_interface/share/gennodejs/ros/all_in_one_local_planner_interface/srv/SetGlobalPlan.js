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


//-----------------------------------------------------------

class SetGlobalPlanRequest {
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
    // Serializes a message object of type SetGlobalPlanRequest
    // Serialize message field [global_plan]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.global_plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGlobalPlanRequest
    let len;
    let data = new SetGlobalPlanRequest(null);
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
    return 'all_in_one_local_planner_interface/SetGlobalPlanRequest';
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
    const resolved = new SetGlobalPlanRequest(null);
    if (msg.global_plan !== undefined) {
      resolved.global_plan = nav_msgs.msg.Path.Resolve(msg.global_plan)
    }
    else {
      resolved.global_plan = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

class SetGlobalPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.successful = null;
    }
    else {
      if (initObj.hasOwnProperty('successful')) {
        this.successful = initObj.successful
      }
      else {
        this.successful = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGlobalPlanResponse
    // Serialize message field [successful]
    bufferOffset = _serializer.bool(obj.successful, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGlobalPlanResponse
    let len;
    let data = new SetGlobalPlanResponse(null);
    // Deserialize message field [successful]
    data.successful = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_in_one_local_planner_interface/SetGlobalPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ccdb752b565be6d250259ff3d0c7ea1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response fields
    bool successful
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGlobalPlanResponse(null);
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
  Request: SetGlobalPlanRequest,
  Response: SetGlobalPlanResponse,
  md5sum() { return '4764e75946282cd60aded40196d97e1e'; },
  datatype() { return 'all_in_one_local_planner_interface/SetGlobalPlan'; }
};
