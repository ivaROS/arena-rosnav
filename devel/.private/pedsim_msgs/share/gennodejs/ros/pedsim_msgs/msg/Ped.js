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

class Ped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pos = null;
      this.type = null;
      this.yaml_file = null;
      this.number_of_peds = null;
      this.vmax = null;
      this.start_up_mode = null;
      this.wait_time = null;
      this.trigger_zone_radius = null;
      this.max_talking_distance = null;
      this.max_servicing_radius = null;
      this.chatting_probability = null;
      this.tell_story_probability = null;
      this.group_talking_probability = null;
      this.talking_and_walking_probability = null;
      this.requesting_service_probability = null;
      this.requesting_guide_probability = null;
      this.requesting_follower_probability = null;
      this.talking_base_time = null;
      this.tell_story_base_time = null;
      this.group_talking_base_time = null;
      this.talking_and_walking_base_time = null;
      this.receiving_service_base_time = null;
      this.requesting_service_base_time = null;
      this.force_factor_desired = null;
      this.force_factor_obstacle = null;
      this.force_factor_social = null;
      this.force_factor_robot = null;
      this.waypoints = null;
      this.waypoint_mode = null;
      this.configuration = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('yaml_file')) {
        this.yaml_file = initObj.yaml_file
      }
      else {
        this.yaml_file = '';
      }
      if (initObj.hasOwnProperty('number_of_peds')) {
        this.number_of_peds = initObj.number_of_peds
      }
      else {
        this.number_of_peds = 0;
      }
      if (initObj.hasOwnProperty('vmax')) {
        this.vmax = initObj.vmax
      }
      else {
        this.vmax = 0.0;
      }
      if (initObj.hasOwnProperty('start_up_mode')) {
        this.start_up_mode = initObj.start_up_mode
      }
      else {
        this.start_up_mode = '';
      }
      if (initObj.hasOwnProperty('wait_time')) {
        this.wait_time = initObj.wait_time
      }
      else {
        this.wait_time = 0.0;
      }
      if (initObj.hasOwnProperty('trigger_zone_radius')) {
        this.trigger_zone_radius = initObj.trigger_zone_radius
      }
      else {
        this.trigger_zone_radius = 0.0;
      }
      if (initObj.hasOwnProperty('max_talking_distance')) {
        this.max_talking_distance = initObj.max_talking_distance
      }
      else {
        this.max_talking_distance = 0.0;
      }
      if (initObj.hasOwnProperty('max_servicing_radius')) {
        this.max_servicing_radius = initObj.max_servicing_radius
      }
      else {
        this.max_servicing_radius = 0.0;
      }
      if (initObj.hasOwnProperty('chatting_probability')) {
        this.chatting_probability = initObj.chatting_probability
      }
      else {
        this.chatting_probability = 0.0;
      }
      if (initObj.hasOwnProperty('tell_story_probability')) {
        this.tell_story_probability = initObj.tell_story_probability
      }
      else {
        this.tell_story_probability = 0.0;
      }
      if (initObj.hasOwnProperty('group_talking_probability')) {
        this.group_talking_probability = initObj.group_talking_probability
      }
      else {
        this.group_talking_probability = 0.0;
      }
      if (initObj.hasOwnProperty('talking_and_walking_probability')) {
        this.talking_and_walking_probability = initObj.talking_and_walking_probability
      }
      else {
        this.talking_and_walking_probability = 0.0;
      }
      if (initObj.hasOwnProperty('requesting_service_probability')) {
        this.requesting_service_probability = initObj.requesting_service_probability
      }
      else {
        this.requesting_service_probability = 0.0;
      }
      if (initObj.hasOwnProperty('requesting_guide_probability')) {
        this.requesting_guide_probability = initObj.requesting_guide_probability
      }
      else {
        this.requesting_guide_probability = 0.0;
      }
      if (initObj.hasOwnProperty('requesting_follower_probability')) {
        this.requesting_follower_probability = initObj.requesting_follower_probability
      }
      else {
        this.requesting_follower_probability = 0.0;
      }
      if (initObj.hasOwnProperty('talking_base_time')) {
        this.talking_base_time = initObj.talking_base_time
      }
      else {
        this.talking_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('tell_story_base_time')) {
        this.tell_story_base_time = initObj.tell_story_base_time
      }
      else {
        this.tell_story_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('group_talking_base_time')) {
        this.group_talking_base_time = initObj.group_talking_base_time
      }
      else {
        this.group_talking_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('talking_and_walking_base_time')) {
        this.talking_and_walking_base_time = initObj.talking_and_walking_base_time
      }
      else {
        this.talking_and_walking_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('receiving_service_base_time')) {
        this.receiving_service_base_time = initObj.receiving_service_base_time
      }
      else {
        this.receiving_service_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('requesting_service_base_time')) {
        this.requesting_service_base_time = initObj.requesting_service_base_time
      }
      else {
        this.requesting_service_base_time = 0.0;
      }
      if (initObj.hasOwnProperty('force_factor_desired')) {
        this.force_factor_desired = initObj.force_factor_desired
      }
      else {
        this.force_factor_desired = 0.0;
      }
      if (initObj.hasOwnProperty('force_factor_obstacle')) {
        this.force_factor_obstacle = initObj.force_factor_obstacle
      }
      else {
        this.force_factor_obstacle = 0.0;
      }
      if (initObj.hasOwnProperty('force_factor_social')) {
        this.force_factor_social = initObj.force_factor_social
      }
      else {
        this.force_factor_social = 0.0;
      }
      if (initObj.hasOwnProperty('force_factor_robot')) {
        this.force_factor_robot = initObj.force_factor_robot
      }
      else {
        this.force_factor_robot = 0.0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('waypoint_mode')) {
        this.waypoint_mode = initObj.waypoint_mode
      }
      else {
        this.waypoint_mode = 0;
      }
      if (initObj.hasOwnProperty('configuration')) {
        this.configuration = initObj.configuration
      }
      else {
        this.configuration = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ped
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [yaml_file]
    bufferOffset = _serializer.string(obj.yaml_file, buffer, bufferOffset);
    // Serialize message field [number_of_peds]
    bufferOffset = _serializer.int16(obj.number_of_peds, buffer, bufferOffset);
    // Serialize message field [vmax]
    bufferOffset = _serializer.float64(obj.vmax, buffer, bufferOffset);
    // Serialize message field [start_up_mode]
    bufferOffset = _serializer.string(obj.start_up_mode, buffer, bufferOffset);
    // Serialize message field [wait_time]
    bufferOffset = _serializer.float64(obj.wait_time, buffer, bufferOffset);
    // Serialize message field [trigger_zone_radius]
    bufferOffset = _serializer.float64(obj.trigger_zone_radius, buffer, bufferOffset);
    // Serialize message field [max_talking_distance]
    bufferOffset = _serializer.float64(obj.max_talking_distance, buffer, bufferOffset);
    // Serialize message field [max_servicing_radius]
    bufferOffset = _serializer.float64(obj.max_servicing_radius, buffer, bufferOffset);
    // Serialize message field [chatting_probability]
    bufferOffset = _serializer.float64(obj.chatting_probability, buffer, bufferOffset);
    // Serialize message field [tell_story_probability]
    bufferOffset = _serializer.float64(obj.tell_story_probability, buffer, bufferOffset);
    // Serialize message field [group_talking_probability]
    bufferOffset = _serializer.float64(obj.group_talking_probability, buffer, bufferOffset);
    // Serialize message field [talking_and_walking_probability]
    bufferOffset = _serializer.float64(obj.talking_and_walking_probability, buffer, bufferOffset);
    // Serialize message field [requesting_service_probability]
    bufferOffset = _serializer.float64(obj.requesting_service_probability, buffer, bufferOffset);
    // Serialize message field [requesting_guide_probability]
    bufferOffset = _serializer.float64(obj.requesting_guide_probability, buffer, bufferOffset);
    // Serialize message field [requesting_follower_probability]
    bufferOffset = _serializer.float64(obj.requesting_follower_probability, buffer, bufferOffset);
    // Serialize message field [talking_base_time]
    bufferOffset = _serializer.float64(obj.talking_base_time, buffer, bufferOffset);
    // Serialize message field [tell_story_base_time]
    bufferOffset = _serializer.float64(obj.tell_story_base_time, buffer, bufferOffset);
    // Serialize message field [group_talking_base_time]
    bufferOffset = _serializer.float64(obj.group_talking_base_time, buffer, bufferOffset);
    // Serialize message field [talking_and_walking_base_time]
    bufferOffset = _serializer.float64(obj.talking_and_walking_base_time, buffer, bufferOffset);
    // Serialize message field [receiving_service_base_time]
    bufferOffset = _serializer.float64(obj.receiving_service_base_time, buffer, bufferOffset);
    // Serialize message field [requesting_service_base_time]
    bufferOffset = _serializer.float64(obj.requesting_service_base_time, buffer, bufferOffset);
    // Serialize message field [force_factor_desired]
    bufferOffset = _serializer.float64(obj.force_factor_desired, buffer, bufferOffset);
    // Serialize message field [force_factor_obstacle]
    bufferOffset = _serializer.float64(obj.force_factor_obstacle, buffer, bufferOffset);
    // Serialize message field [force_factor_social]
    bufferOffset = _serializer.float64(obj.force_factor_social, buffer, bufferOffset);
    // Serialize message field [force_factor_robot]
    bufferOffset = _serializer.float64(obj.force_factor_robot, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [waypoint_mode]
    bufferOffset = _serializer.int16(obj.waypoint_mode, buffer, bufferOffset);
    // Serialize message field [configuration]
    bufferOffset = _serializer.string(obj.configuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ped
    let len;
    let data = new Ped(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [yaml_file]
    data.yaml_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [number_of_peds]
    data.number_of_peds = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vmax]
    data.vmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_up_mode]
    data.start_up_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait_time]
    data.wait_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trigger_zone_radius]
    data.trigger_zone_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_talking_distance]
    data.max_talking_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_servicing_radius]
    data.max_servicing_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [chatting_probability]
    data.chatting_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tell_story_probability]
    data.tell_story_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [group_talking_probability]
    data.group_talking_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [talking_and_walking_probability]
    data.talking_and_walking_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [requesting_service_probability]
    data.requesting_service_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [requesting_guide_probability]
    data.requesting_guide_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [requesting_follower_probability]
    data.requesting_follower_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [talking_base_time]
    data.talking_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tell_story_base_time]
    data.tell_story_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [group_talking_base_time]
    data.group_talking_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [talking_and_walking_base_time]
    data.talking_and_walking_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [receiving_service_base_time]
    data.receiving_service_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [requesting_service_base_time]
    data.requesting_service_base_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [force_factor_desired]
    data.force_factor_desired = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [force_factor_obstacle]
    data.force_factor_obstacle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [force_factor_social]
    data.force_factor_social = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [force_factor_robot]
    data.force_factor_robot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [waypoint_mode]
    data.waypoint_mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [configuration]
    data.configuration = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += _getByteLength(object.type);
    length += _getByteLength(object.yaml_file);
    length += _getByteLength(object.start_up_mode);
    length += 24 * object.waypoints.length;
    length += _getByteLength(object.configuration);
    return length + 228;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pedsim_msgs/Ped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8575a29ff9a6fbcc93400a28e9925d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Added by Ronja Gueldenring
    # For spawning agents dynamically in pedsim and forwarding them to flatland
    string id
    geometry_msgs/Point pos
    string type  # "adult", "child", "elder", "vehicle", "servicerobot"
    string yaml_file
    int16 number_of_peds
    float64 vmax
    
    string start_up_mode  # "default", "wait_timer", "trigger_zone"
    float64 wait_time
    float64 trigger_zone_radius
    
    float64 max_talking_distance
    float64 max_servicing_radius
    
    float64 chatting_probability
    float64 tell_story_probability
    float64 group_talking_probability
    float64 talking_and_walking_probability
    float64 requesting_service_probability
    float64 requesting_guide_probability
    float64 requesting_follower_probability
    
    float64 talking_base_time
    float64 tell_story_base_time
    float64 group_talking_base_time
    float64 talking_and_walking_base_time
    float64 receiving_service_base_time
    float64 requesting_service_base_time
    
    # forces
    float64 force_factor_desired
    float64 force_factor_obstacle
    float64 force_factor_social
    float64 force_factor_robot
    
    geometry_msgs/Point[] waypoints
    int16 waypoint_mode
    
    string configuration
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new Ped(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Point.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Point()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.yaml_file !== undefined) {
      resolved.yaml_file = msg.yaml_file;
    }
    else {
      resolved.yaml_file = ''
    }

    if (msg.number_of_peds !== undefined) {
      resolved.number_of_peds = msg.number_of_peds;
    }
    else {
      resolved.number_of_peds = 0
    }

    if (msg.vmax !== undefined) {
      resolved.vmax = msg.vmax;
    }
    else {
      resolved.vmax = 0.0
    }

    if (msg.start_up_mode !== undefined) {
      resolved.start_up_mode = msg.start_up_mode;
    }
    else {
      resolved.start_up_mode = ''
    }

    if (msg.wait_time !== undefined) {
      resolved.wait_time = msg.wait_time;
    }
    else {
      resolved.wait_time = 0.0
    }

    if (msg.trigger_zone_radius !== undefined) {
      resolved.trigger_zone_radius = msg.trigger_zone_radius;
    }
    else {
      resolved.trigger_zone_radius = 0.0
    }

    if (msg.max_talking_distance !== undefined) {
      resolved.max_talking_distance = msg.max_talking_distance;
    }
    else {
      resolved.max_talking_distance = 0.0
    }

    if (msg.max_servicing_radius !== undefined) {
      resolved.max_servicing_radius = msg.max_servicing_radius;
    }
    else {
      resolved.max_servicing_radius = 0.0
    }

    if (msg.chatting_probability !== undefined) {
      resolved.chatting_probability = msg.chatting_probability;
    }
    else {
      resolved.chatting_probability = 0.0
    }

    if (msg.tell_story_probability !== undefined) {
      resolved.tell_story_probability = msg.tell_story_probability;
    }
    else {
      resolved.tell_story_probability = 0.0
    }

    if (msg.group_talking_probability !== undefined) {
      resolved.group_talking_probability = msg.group_talking_probability;
    }
    else {
      resolved.group_talking_probability = 0.0
    }

    if (msg.talking_and_walking_probability !== undefined) {
      resolved.talking_and_walking_probability = msg.talking_and_walking_probability;
    }
    else {
      resolved.talking_and_walking_probability = 0.0
    }

    if (msg.requesting_service_probability !== undefined) {
      resolved.requesting_service_probability = msg.requesting_service_probability;
    }
    else {
      resolved.requesting_service_probability = 0.0
    }

    if (msg.requesting_guide_probability !== undefined) {
      resolved.requesting_guide_probability = msg.requesting_guide_probability;
    }
    else {
      resolved.requesting_guide_probability = 0.0
    }

    if (msg.requesting_follower_probability !== undefined) {
      resolved.requesting_follower_probability = msg.requesting_follower_probability;
    }
    else {
      resolved.requesting_follower_probability = 0.0
    }

    if (msg.talking_base_time !== undefined) {
      resolved.talking_base_time = msg.talking_base_time;
    }
    else {
      resolved.talking_base_time = 0.0
    }

    if (msg.tell_story_base_time !== undefined) {
      resolved.tell_story_base_time = msg.tell_story_base_time;
    }
    else {
      resolved.tell_story_base_time = 0.0
    }

    if (msg.group_talking_base_time !== undefined) {
      resolved.group_talking_base_time = msg.group_talking_base_time;
    }
    else {
      resolved.group_talking_base_time = 0.0
    }

    if (msg.talking_and_walking_base_time !== undefined) {
      resolved.talking_and_walking_base_time = msg.talking_and_walking_base_time;
    }
    else {
      resolved.talking_and_walking_base_time = 0.0
    }

    if (msg.receiving_service_base_time !== undefined) {
      resolved.receiving_service_base_time = msg.receiving_service_base_time;
    }
    else {
      resolved.receiving_service_base_time = 0.0
    }

    if (msg.requesting_service_base_time !== undefined) {
      resolved.requesting_service_base_time = msg.requesting_service_base_time;
    }
    else {
      resolved.requesting_service_base_time = 0.0
    }

    if (msg.force_factor_desired !== undefined) {
      resolved.force_factor_desired = msg.force_factor_desired;
    }
    else {
      resolved.force_factor_desired = 0.0
    }

    if (msg.force_factor_obstacle !== undefined) {
      resolved.force_factor_obstacle = msg.force_factor_obstacle;
    }
    else {
      resolved.force_factor_obstacle = 0.0
    }

    if (msg.force_factor_social !== undefined) {
      resolved.force_factor_social = msg.force_factor_social;
    }
    else {
      resolved.force_factor_social = 0.0
    }

    if (msg.force_factor_robot !== undefined) {
      resolved.force_factor_robot = msg.force_factor_robot;
    }
    else {
      resolved.force_factor_robot = 0.0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = geometry_msgs.msg.Point.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    if (msg.waypoint_mode !== undefined) {
      resolved.waypoint_mode = msg.waypoint_mode;
    }
    else {
      resolved.waypoint_mode = 0
    }

    if (msg.configuration !== undefined) {
      resolved.configuration = msg.configuration;
    }
    else {
      resolved.configuration = ''
    }

    return resolved;
    }
};

module.exports = Ped;
