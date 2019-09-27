// Auto-generated. Do not edit!

// (in-package rosi_defy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RosiMovement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodeID = null;
      this.joint_var = null;
    }
    else {
      if (initObj.hasOwnProperty('nodeID')) {
        this.nodeID = initObj.nodeID
      }
      else {
        this.nodeID = 0;
      }
      if (initObj.hasOwnProperty('joint_var')) {
        this.joint_var = initObj.joint_var
      }
      else {
        this.joint_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RosiMovement
    // Serialize message field [nodeID]
    bufferOffset = _serializer.int64(obj.nodeID, buffer, bufferOffset);
    // Serialize message field [joint_var]
    bufferOffset = _serializer.float64(obj.joint_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RosiMovement
    let len;
    let data = new RosiMovement(null);
    // Deserialize message field [nodeID]
    data.nodeID = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [joint_var]
    data.joint_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosi_defy/RosiMovement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e8245905f61ae0a097d16c2c66c69fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 nodeID
    float64 joint_var
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RosiMovement(null);
    if (msg.nodeID !== undefined) {
      resolved.nodeID = msg.nodeID;
    }
    else {
      resolved.nodeID = 0
    }

    if (msg.joint_var !== undefined) {
      resolved.joint_var = msg.joint_var;
    }
    else {
      resolved.joint_var = 0.0
    }

    return resolved;
    }
};

module.exports = RosiMovement;
