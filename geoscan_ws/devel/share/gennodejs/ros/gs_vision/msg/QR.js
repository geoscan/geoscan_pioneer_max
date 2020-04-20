// Auto-generated. Do not edit!

// (in-package gs_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class QR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.left = null;
      this.top = null;
      this.width = null;
      this.height = null;
      this.x1 = null;
      this.y1 = null;
      this.x2 = null;
      this.y2 = null;
      this.x3 = null;
      this.y3 = null;
      this.x4 = null;
      this.y4 = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0;
      }
      if (initObj.hasOwnProperty('x3')) {
        this.x3 = initObj.x3
      }
      else {
        this.x3 = 0;
      }
      if (initObj.hasOwnProperty('y3')) {
        this.y3 = initObj.y3
      }
      else {
        this.y3 = 0;
      }
      if (initObj.hasOwnProperty('x4')) {
        this.x4 = initObj.x4
      }
      else {
        this.x4 = 0;
      }
      if (initObj.hasOwnProperty('y4')) {
        this.y4 = initObj.y4
      }
      else {
        this.y4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QR
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int32(obj.left, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.int32(obj.top, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.int32(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.int32(obj.y1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.int32(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.int32(obj.y2, buffer, bufferOffset);
    // Serialize message field [x3]
    bufferOffset = _serializer.int32(obj.x3, buffer, bufferOffset);
    // Serialize message field [y3]
    bufferOffset = _serializer.int32(obj.y3, buffer, bufferOffset);
    // Serialize message field [x4]
    bufferOffset = _serializer.int32(obj.x4, buffer, bufferOffset);
    // Serialize message field [y4]
    bufferOffset = _serializer.int32(obj.y4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QR
    let len;
    let data = new QR(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x3]
    data.x3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y3]
    data.y3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x4]
    data.x4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y4]
    data.y4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gs_vision/QR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ccd7767be668dc7e18c0eabb4d47340';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new QR(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0
    }

    if (msg.x3 !== undefined) {
      resolved.x3 = msg.x3;
    }
    else {
      resolved.x3 = 0
    }

    if (msg.y3 !== undefined) {
      resolved.y3 = msg.y3;
    }
    else {
      resolved.y3 = 0
    }

    if (msg.x4 !== undefined) {
      resolved.x4 = msg.x4;
    }
    else {
      resolved.x4 = 0
    }

    if (msg.y4 !== undefined) {
      resolved.y4 = msg.y4;
    }
    else {
      resolved.y4 = 0
    }

    return resolved;
    }
};

module.exports = QR;
