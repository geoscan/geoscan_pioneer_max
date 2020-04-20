// Auto-generated. Do not edit!

// (in-package gs_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Apriltag = require('./Apriltag.js');

//-----------------------------------------------------------

class Apriltag_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.apriltags = null;
    }
    else {
      if (initObj.hasOwnProperty('apriltags')) {
        this.apriltags = initObj.apriltags
      }
      else {
        this.apriltags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Apriltag_array
    // Serialize message field [apriltags]
    // Serialize the length for message field [apriltags]
    bufferOffset = _serializer.uint32(obj.apriltags.length, buffer, bufferOffset);
    obj.apriltags.forEach((val) => {
      bufferOffset = Apriltag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Apriltag_array
    let len;
    let data = new Apriltag_array(null);
    // Deserialize message field [apriltags]
    // Deserialize array length for message field [apriltags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.apriltags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.apriltags[i] = Apriltag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.apriltags.forEach((val) => {
      length += Apriltag.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gs_vision/Apriltag_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f777b1339459d8299ae58a3a829f16d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Apriltag[] apriltags
    ================================================================================
    MSG: gs_vision/Apriltag
    string tag_family
    int32 tag_id
    int32 hamming
    float32 goodness
    float32 decision_margin
    float32 center_x
    float32 center_y
    float32 x1
    float32 y1
    float32 x2
    float32 y2
    float32 x3
    float32 y3
    float32 x4
    float32 y4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Apriltag_array(null);
    if (msg.apriltags !== undefined) {
      resolved.apriltags = new Array(msg.apriltags.length);
      for (let i = 0; i < resolved.apriltags.length; ++i) {
        resolved.apriltags[i] = Apriltag.Resolve(msg.apriltags[i]);
      }
    }
    else {
      resolved.apriltags = []
    }

    return resolved;
    }
};

module.exports = Apriltag_array;
