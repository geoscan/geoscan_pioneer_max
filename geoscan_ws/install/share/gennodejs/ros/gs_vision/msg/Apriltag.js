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

class Apriltag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag_family = null;
      this.tag_id = null;
      this.hamming = null;
      this.goodness = null;
      this.decision_margin = null;
      this.center_x = null;
      this.center_y = null;
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
      if (initObj.hasOwnProperty('tag_family')) {
        this.tag_family = initObj.tag_family
      }
      else {
        this.tag_family = '';
      }
      if (initObj.hasOwnProperty('tag_id')) {
        this.tag_id = initObj.tag_id
      }
      else {
        this.tag_id = 0;
      }
      if (initObj.hasOwnProperty('hamming')) {
        this.hamming = initObj.hamming
      }
      else {
        this.hamming = 0;
      }
      if (initObj.hasOwnProperty('goodness')) {
        this.goodness = initObj.goodness
      }
      else {
        this.goodness = 0.0;
      }
      if (initObj.hasOwnProperty('decision_margin')) {
        this.decision_margin = initObj.decision_margin
      }
      else {
        this.decision_margin = 0.0;
      }
      if (initObj.hasOwnProperty('center_x')) {
        this.center_x = initObj.center_x
      }
      else {
        this.center_x = 0.0;
      }
      if (initObj.hasOwnProperty('center_y')) {
        this.center_y = initObj.center_y
      }
      else {
        this.center_y = 0.0;
      }
      if (initObj.hasOwnProperty('x1')) {
        this.x1 = initObj.x1
      }
      else {
        this.x1 = 0.0;
      }
      if (initObj.hasOwnProperty('y1')) {
        this.y1 = initObj.y1
      }
      else {
        this.y1 = 0.0;
      }
      if (initObj.hasOwnProperty('x2')) {
        this.x2 = initObj.x2
      }
      else {
        this.x2 = 0.0;
      }
      if (initObj.hasOwnProperty('y2')) {
        this.y2 = initObj.y2
      }
      else {
        this.y2 = 0.0;
      }
      if (initObj.hasOwnProperty('x3')) {
        this.x3 = initObj.x3
      }
      else {
        this.x3 = 0.0;
      }
      if (initObj.hasOwnProperty('y3')) {
        this.y3 = initObj.y3
      }
      else {
        this.y3 = 0.0;
      }
      if (initObj.hasOwnProperty('x4')) {
        this.x4 = initObj.x4
      }
      else {
        this.x4 = 0.0;
      }
      if (initObj.hasOwnProperty('y4')) {
        this.y4 = initObj.y4
      }
      else {
        this.y4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Apriltag
    // Serialize message field [tag_family]
    bufferOffset = _serializer.string(obj.tag_family, buffer, bufferOffset);
    // Serialize message field [tag_id]
    bufferOffset = _serializer.int32(obj.tag_id, buffer, bufferOffset);
    // Serialize message field [hamming]
    bufferOffset = _serializer.int32(obj.hamming, buffer, bufferOffset);
    // Serialize message field [goodness]
    bufferOffset = _serializer.float32(obj.goodness, buffer, bufferOffset);
    // Serialize message field [decision_margin]
    bufferOffset = _serializer.float32(obj.decision_margin, buffer, bufferOffset);
    // Serialize message field [center_x]
    bufferOffset = _serializer.float32(obj.center_x, buffer, bufferOffset);
    // Serialize message field [center_y]
    bufferOffset = _serializer.float32(obj.center_y, buffer, bufferOffset);
    // Serialize message field [x1]
    bufferOffset = _serializer.float32(obj.x1, buffer, bufferOffset);
    // Serialize message field [y1]
    bufferOffset = _serializer.float32(obj.y1, buffer, bufferOffset);
    // Serialize message field [x2]
    bufferOffset = _serializer.float32(obj.x2, buffer, bufferOffset);
    // Serialize message field [y2]
    bufferOffset = _serializer.float32(obj.y2, buffer, bufferOffset);
    // Serialize message field [x3]
    bufferOffset = _serializer.float32(obj.x3, buffer, bufferOffset);
    // Serialize message field [y3]
    bufferOffset = _serializer.float32(obj.y3, buffer, bufferOffset);
    // Serialize message field [x4]
    bufferOffset = _serializer.float32(obj.x4, buffer, bufferOffset);
    // Serialize message field [y4]
    bufferOffset = _serializer.float32(obj.y4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Apriltag
    let len;
    let data = new Apriltag(null);
    // Deserialize message field [tag_family]
    data.tag_family = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tag_id]
    data.tag_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hamming]
    data.hamming = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goodness]
    data.goodness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [decision_margin]
    data.decision_margin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_x]
    data.center_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_y]
    data.center_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x1]
    data.x1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y1]
    data.y1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x2]
    data.x2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y2]
    data.y2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x3]
    data.x3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y3]
    data.y3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x4]
    data.x4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y4]
    data.y4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tag_family.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gs_vision/Apriltag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e422dacce6e2d78bb582e8091769fc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Apriltag(null);
    if (msg.tag_family !== undefined) {
      resolved.tag_family = msg.tag_family;
    }
    else {
      resolved.tag_family = ''
    }

    if (msg.tag_id !== undefined) {
      resolved.tag_id = msg.tag_id;
    }
    else {
      resolved.tag_id = 0
    }

    if (msg.hamming !== undefined) {
      resolved.hamming = msg.hamming;
    }
    else {
      resolved.hamming = 0
    }

    if (msg.goodness !== undefined) {
      resolved.goodness = msg.goodness;
    }
    else {
      resolved.goodness = 0.0
    }

    if (msg.decision_margin !== undefined) {
      resolved.decision_margin = msg.decision_margin;
    }
    else {
      resolved.decision_margin = 0.0
    }

    if (msg.center_x !== undefined) {
      resolved.center_x = msg.center_x;
    }
    else {
      resolved.center_x = 0.0
    }

    if (msg.center_y !== undefined) {
      resolved.center_y = msg.center_y;
    }
    else {
      resolved.center_y = 0.0
    }

    if (msg.x1 !== undefined) {
      resolved.x1 = msg.x1;
    }
    else {
      resolved.x1 = 0.0
    }

    if (msg.y1 !== undefined) {
      resolved.y1 = msg.y1;
    }
    else {
      resolved.y1 = 0.0
    }

    if (msg.x2 !== undefined) {
      resolved.x2 = msg.x2;
    }
    else {
      resolved.x2 = 0.0
    }

    if (msg.y2 !== undefined) {
      resolved.y2 = msg.y2;
    }
    else {
      resolved.y2 = 0.0
    }

    if (msg.x3 !== undefined) {
      resolved.x3 = msg.x3;
    }
    else {
      resolved.x3 = 0.0
    }

    if (msg.y3 !== undefined) {
      resolved.y3 = msg.y3;
    }
    else {
      resolved.y3 = 0.0
    }

    if (msg.x4 !== undefined) {
      resolved.x4 = msg.x4;
    }
    else {
      resolved.x4 = 0.0
    }

    if (msg.y4 !== undefined) {
      resolved.y4 = msg.y4;
    }
    else {
      resolved.y4 = 0.0
    }

    return resolved;
    }
};

module.exports = Apriltag;
