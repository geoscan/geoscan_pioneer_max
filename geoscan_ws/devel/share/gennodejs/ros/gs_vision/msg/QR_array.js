// Auto-generated. Do not edit!

// (in-package gs_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let QR = require('./QR.js');

//-----------------------------------------------------------

class QR_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.qrs = null;
    }
    else {
      if (initObj.hasOwnProperty('qrs')) {
        this.qrs = initObj.qrs
      }
      else {
        this.qrs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QR_array
    // Serialize message field [qrs]
    // Serialize the length for message field [qrs]
    bufferOffset = _serializer.uint32(obj.qrs.length, buffer, bufferOffset);
    obj.qrs.forEach((val) => {
      bufferOffset = QR.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QR_array
    let len;
    let data = new QR_array(null);
    // Deserialize message field [qrs]
    // Deserialize array length for message field [qrs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.qrs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.qrs[i] = QR.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.qrs.forEach((val) => {
      length += QR.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gs_vision/QR_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2cc8666bc7a2bbd9d5b119ac5932231';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    QR[] qrs
    ================================================================================
    MSG: gs_vision/QR
    string data
    int32 left
    int32 top
    int32 width
    int32 height
    int32 x1
    int32 y1
    int32 x2
    int32 y2
    int32 x3
    int32 y3
    int32 x4
    int32 y4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QR_array(null);
    if (msg.qrs !== undefined) {
      resolved.qrs = new Array(msg.qrs.length);
      for (let i = 0; i < resolved.qrs.length; ++i) {
        resolved.qrs[i] = QR.Resolve(msg.qrs[i]);
      }
    }
    else {
      resolved.qrs = []
    }

    return resolved;
    }
};

module.exports = QR_array;
