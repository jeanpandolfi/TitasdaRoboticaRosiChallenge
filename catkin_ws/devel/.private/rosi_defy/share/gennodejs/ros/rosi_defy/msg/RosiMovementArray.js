// Auto-generated. Do not edit!

// (in-package rosi_defy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RosiMovement = require('./RosiMovement.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RosiMovementArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.movement_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('movement_array')) {
        this.movement_array = initObj.movement_array
      }
      else {
        this.movement_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RosiMovementArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [movement_array]
    // Serialize the length for message field [movement_array]
    bufferOffset = _serializer.uint32(obj.movement_array.length, buffer, bufferOffset);
    obj.movement_array.forEach((val) => {
      bufferOffset = RosiMovement.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RosiMovementArray
    let len;
    let data = new RosiMovementArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [movement_array]
    // Deserialize array length for message field [movement_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.movement_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.movement_array[i] = RosiMovement.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.movement_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosi_defy/RosiMovementArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a054d7e26f4857f061b21c11e4cd865f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    RosiMovement[] movement_array
    
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
    MSG: rosi_defy/RosiMovement
    int64 nodeID
    float64 joint_var
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RosiMovementArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.movement_array !== undefined) {
      resolved.movement_array = new Array(msg.movement_array.length);
      for (let i = 0; i < resolved.movement_array.length; ++i) {
        resolved.movement_array[i] = RosiMovement.Resolve(msg.movement_array[i]);
      }
    }
    else {
      resolved.movement_array = []
    }

    return resolved;
    }
};

module.exports = RosiMovementArray;
