// Auto-generated. Do not edit!

// (in-package gs_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GyroRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GyroRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GyroRequest
    let len;
    let data = new GyroRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/GyroRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GyroRequest(null);
    return resolved;
    }
};

class GyroResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gx = null;
      this.gy = null;
      this.gz = null;
    }
    else {
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('gz')) {
        this.gz = initObj.gz
      }
      else {
        this.gz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GyroResponse
    // Serialize message field [gx]
    bufferOffset = _serializer.float32(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float32(obj.gy, buffer, bufferOffset);
    // Serialize message field [gz]
    bufferOffset = _serializer.float32(obj.gz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GyroResponse
    let len;
    let data = new GyroResponse(null);
    // Deserialize message field [gx]
    data.gx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gz]
    data.gz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/GyroResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b4fb692079f88afc254f2cb9ee8d63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 gx
    float32 gy
    float32 gz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GyroResponse(null);
    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.gz !== undefined) {
      resolved.gz = msg.gz;
    }
    else {
      resolved.gz = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GyroRequest,
  Response: GyroResponse,
  md5sum() { return '33b4fb692079f88afc254f2cb9ee8d63'; },
  datatype() { return 'gs_service/Gyro'; }
};
