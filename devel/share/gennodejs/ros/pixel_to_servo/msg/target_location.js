// Auto-generated. Do not edit!

// (in-package pixel_to_servo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class target_location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xpos = null;
      this.ypos = null;
      this.shoot = null;
    }
    else {
      if (initObj.hasOwnProperty('xpos')) {
        this.xpos = initObj.xpos
      }
      else {
        this.xpos = 0;
      }
      if (initObj.hasOwnProperty('ypos')) {
        this.ypos = initObj.ypos
      }
      else {
        this.ypos = 0;
      }
      if (initObj.hasOwnProperty('shoot')) {
        this.shoot = initObj.shoot
      }
      else {
        this.shoot = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target_location
    // Serialize message field [xpos]
    bufferOffset = _serializer.int16(obj.xpos, buffer, bufferOffset);
    // Serialize message field [ypos]
    bufferOffset = _serializer.int16(obj.ypos, buffer, bufferOffset);
    // Serialize message field [shoot]
    bufferOffset = _serializer.bool(obj.shoot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_location
    let len;
    let data = new target_location(null);
    // Deserialize message field [xpos]
    data.xpos = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ypos]
    data.ypos = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [shoot]
    data.shoot = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pixel_to_servo/target_location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e8342ea7a7513f78942cdcd6ccc5b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 xpos
    int16 ypos
    bool shoot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target_location(null);
    if (msg.xpos !== undefined) {
      resolved.xpos = msg.xpos;
    }
    else {
      resolved.xpos = 0
    }

    if (msg.ypos !== undefined) {
      resolved.ypos = msg.ypos;
    }
    else {
      resolved.ypos = 0
    }

    if (msg.shoot !== undefined) {
      resolved.shoot = msg.shoot;
    }
    else {
      resolved.shoot = false
    }

    return resolved;
    }
};

module.exports = target_location;
