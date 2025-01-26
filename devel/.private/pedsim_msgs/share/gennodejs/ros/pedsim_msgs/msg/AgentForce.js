// Auto-generated. Do not edit!

// (in-package pedsim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgentForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vmax = null;
      this.desired_ffactor = null;
      this.obstacle_ffactor = null;
      this.social_ffactor = null;
      this.robot_ffactor = null;
      this.desired_force = null;
      this.obstacle_force = null;
      this.social_force = null;
      this.group_coherence_force = null;
      this.group_gaze_force = null;
      this.group_repulsion_force = null;
      this.random_force = null;
      this.keep_distance_force = null;
      this.robot_force = null;
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('vmax')) {
        this.vmax = initObj.vmax
      }
      else {
        this.vmax = 0.0;
      }
      if (initObj.hasOwnProperty('desired_ffactor')) {
        this.desired_ffactor = initObj.desired_ffactor
      }
      else {
        this.desired_ffactor = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_ffactor')) {
        this.obstacle_ffactor = initObj.obstacle_ffactor
      }
      else {
        this.obstacle_ffactor = 0.0;
      }
      if (initObj.hasOwnProperty('social_ffactor')) {
        this.social_ffactor = initObj.social_ffactor
      }
      else {
        this.social_ffactor = 0.0;
      }
      if (initObj.hasOwnProperty('robot_ffactor')) {
        this.robot_ffactor = initObj.robot_ffactor
      }
      else {
        this.robot_ffactor = 0.0;
      }
      if (initObj.hasOwnProperty('desired_force')) {
        this.desired_force = initObj.desired_force
      }
      else {
        this.desired_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('obstacle_force')) {
        this.obstacle_force = initObj.obstacle_force
      }
      else {
        this.obstacle_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('social_force')) {
        this.social_force = initObj.social_force
      }
      else {
        this.social_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('group_coherence_force')) {
        this.group_coherence_force = initObj.group_coherence_force
      }
      else {
        this.group_coherence_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('group_gaze_force')) {
        this.group_gaze_force = initObj.group_gaze_force
      }
      else {
        this.group_gaze_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('group_repulsion_force')) {
        this.group_repulsion_force = initObj.group_repulsion_force
      }
      else {
        this.group_repulsion_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('random_force')) {
        this.random_force = initObj.random_force
      }
      else {
        this.random_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('keep_distance_force')) {
        this.keep_distance_force = initObj.keep_distance_force
      }
      else {
        this.keep_distance_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('robot_force')) {
        this.robot_force = initObj.robot_force
      }
      else {
        this.robot_force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentForce
    // Serialize message field [vmax]
    bufferOffset = _serializer.float64(obj.vmax, buffer, bufferOffset);
    // Serialize message field [desired_ffactor]
    bufferOffset = _serializer.float64(obj.desired_ffactor, buffer, bufferOffset);
    // Serialize message field [obstacle_ffactor]
    bufferOffset = _serializer.float64(obj.obstacle_ffactor, buffer, bufferOffset);
    // Serialize message field [social_ffactor]
    bufferOffset = _serializer.float64(obj.social_ffactor, buffer, bufferOffset);
    // Serialize message field [robot_ffactor]
    bufferOffset = _serializer.float64(obj.robot_ffactor, buffer, bufferOffset);
    // Serialize message field [desired_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.desired_force, buffer, bufferOffset);
    // Serialize message field [obstacle_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.obstacle_force, buffer, bufferOffset);
    // Serialize message field [social_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.social_force, buffer, bufferOffset);
    // Serialize message field [group_coherence_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.group_coherence_force, buffer, bufferOffset);
    // Serialize message field [group_gaze_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.group_gaze_force, buffer, bufferOffset);
    // Serialize message field [group_repulsion_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.group_repulsion_force, buffer, bufferOffset);
    // Serialize message field [random_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.random_force, buffer, bufferOffset);
    // Serialize message field [keep_distance_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.keep_distance_force, buffer, bufferOffset);
    // Serialize message field [robot_force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.robot_force, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentForce
    let len;
    let data = new AgentForce(null);
    // Deserialize message field [vmax]
    data.vmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_ffactor]
    data.desired_ffactor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [obstacle_ffactor]
    data.obstacle_ffactor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [social_ffactor]
    data.social_ffactor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_ffactor]
    data.robot_ffactor = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_force]
    data.desired_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_force]
    data.obstacle_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [social_force]
    data.social_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_coherence_force]
    data.group_coherence_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_gaze_force]
    data.group_gaze_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_repulsion_force]
    data.group_repulsion_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [random_force]
    data.random_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [keep_distance_force]
    data.keep_distance_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_force]
    data.robot_force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 280;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/AgentForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '661b76c3cc3cc690dfae53c8d9dd9da9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Forces acting on an agent.
    
    # Max Speed
    float64 vmax
    
    # Force Factors
    float64 desired_ffactor
    float64 obstacle_ffactor
    float64 social_ffactor
    float64 robot_ffactor
    
    # Basic SFM forces.
    geometry_msgs/Vector3 desired_force
    geometry_msgs/Vector3 obstacle_force
    geometry_msgs/Vector3 social_force
    
    # Additional Group Forces
    geometry_msgs/Vector3 group_coherence_force
    geometry_msgs/Vector3 group_gaze_force
    geometry_msgs/Vector3 group_repulsion_force
    
    # Extra stabilization/custom forces.
    geometry_msgs/Vector3 random_force
    geometry_msgs/Vector3 keep_distance_force
    geometry_msgs/Vector3 robot_force
    
    # Total forces
    geometry_msgs/Vector3 force
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
    const resolved = new AgentForce(null);
    if (msg.vmax !== undefined) {
      resolved.vmax = msg.vmax;
    }
    else {
      resolved.vmax = 0.0
    }

    if (msg.desired_ffactor !== undefined) {
      resolved.desired_ffactor = msg.desired_ffactor;
    }
    else {
      resolved.desired_ffactor = 0.0
    }

    if (msg.obstacle_ffactor !== undefined) {
      resolved.obstacle_ffactor = msg.obstacle_ffactor;
    }
    else {
      resolved.obstacle_ffactor = 0.0
    }

    if (msg.social_ffactor !== undefined) {
      resolved.social_ffactor = msg.social_ffactor;
    }
    else {
      resolved.social_ffactor = 0.0
    }

    if (msg.robot_ffactor !== undefined) {
      resolved.robot_ffactor = msg.robot_ffactor;
    }
    else {
      resolved.robot_ffactor = 0.0
    }

    if (msg.desired_force !== undefined) {
      resolved.desired_force = geometry_msgs.msg.Vector3.Resolve(msg.desired_force)
    }
    else {
      resolved.desired_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.obstacle_force !== undefined) {
      resolved.obstacle_force = geometry_msgs.msg.Vector3.Resolve(msg.obstacle_force)
    }
    else {
      resolved.obstacle_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.social_force !== undefined) {
      resolved.social_force = geometry_msgs.msg.Vector3.Resolve(msg.social_force)
    }
    else {
      resolved.social_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.group_coherence_force !== undefined) {
      resolved.group_coherence_force = geometry_msgs.msg.Vector3.Resolve(msg.group_coherence_force)
    }
    else {
      resolved.group_coherence_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.group_gaze_force !== undefined) {
      resolved.group_gaze_force = geometry_msgs.msg.Vector3.Resolve(msg.group_gaze_force)
    }
    else {
      resolved.group_gaze_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.group_repulsion_force !== undefined) {
      resolved.group_repulsion_force = geometry_msgs.msg.Vector3.Resolve(msg.group_repulsion_force)
    }
    else {
      resolved.group_repulsion_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.random_force !== undefined) {
      resolved.random_force = geometry_msgs.msg.Vector3.Resolve(msg.random_force)
    }
    else {
      resolved.random_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.keep_distance_force !== undefined) {
      resolved.keep_distance_force = geometry_msgs.msg.Vector3.Resolve(msg.keep_distance_force)
    }
    else {
      resolved.keep_distance_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.robot_force !== undefined) {
      resolved.robot_force = geometry_msgs.msg.Vector3.Resolve(msg.robot_force)
    }
    else {
      resolved.robot_force = new geometry_msgs.msg.Vector3()
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = AgentForce;
