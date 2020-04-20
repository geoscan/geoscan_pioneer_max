// Auto-generated. Do not edit!

// (in-package gs_service.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RGBgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r = null;
      this.g = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = false;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = false;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBgs
    // Serialize message field [r]
    bufferOffset = _serializer.bool(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.bool(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.bool(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBgs
    let len;
    let data = new RGBgs(null);
    // Deserialize message field [r]
    data.r = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gs_service/RGBgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d6da4aa340747776b1263dbf87c67c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool r
    bool g
    bool b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGBgs(null);
    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = false
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = false
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = false
    }

    return resolved;
    }
};

module.exports = RGBgs;
