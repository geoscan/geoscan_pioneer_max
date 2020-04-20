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

class LpsVelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LpsVelRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LpsVelRequest
    let len;
    let data = new LpsVelRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LpsVelRequest';
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
    const resolved = new LpsVelRequest(null);
    return resolved;
    }
};

class LpsVelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lpsVelX = null;
      this.lpsVelY = null;
      this.lpsVelZ = null;
    }
    else {
      if (initObj.hasOwnProperty('lpsVelX')) {
        this.lpsVelX = initObj.lpsVelX
      }
      else {
        this.lpsVelX = 0.0;
      }
      if (initObj.hasOwnProperty('lpsVelY')) {
        this.lpsVelY = initObj.lpsVelY
      }
      else {
        this.lpsVelY = 0.0;
      }
      if (initObj.hasOwnProperty('lpsVelZ')) {
        this.lpsVelZ = initObj.lpsVelZ
      }
      else {
        this.lpsVelZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LpsVelResponse
    // Serialize message field [lpsVelX]
    bufferOffset = _serializer.float32(obj.lpsVelX, buffer, bufferOffset);
    // Serialize message field [lpsVelY]
    bufferOffset = _serializer.float32(obj.lpsVelY, buffer, bufferOffset);
    // Serialize message field [lpsVelZ]
    bufferOffset = _serializer.float32(obj.lpsVelZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LpsVelResponse
    let len;
    let data = new LpsVelResponse(null);
    // Deserialize message field [lpsVelX]
    data.lpsVelX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lpsVelY]
    data.lpsVelY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lpsVelZ]
    data.lpsVelZ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LpsVelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c82ec0d0933ca8027062009ab83047';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 lpsVelX
    float32 lpsVelY
    float32 lpsVelZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LpsVelResponse(null);
    if (msg.lpsVelX !== undefined) {
      resolved.lpsVelX = msg.lpsVelX;
    }
    else {
      resolved.lpsVelX = 0.0
    }

    if (msg.lpsVelY !== undefined) {
      resolved.lpsVelY = msg.lpsVelY;
    }
    else {
      resolved.lpsVelY = 0.0
    }

    if (msg.lpsVelZ !== undefined) {
      resolved.lpsVelZ = msg.lpsVelZ;
    }
    else {
      resolved.lpsVelZ = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: LpsVelRequest,
  Response: LpsVelResponse,
  md5sum() { return '81c82ec0d0933ca8027062009ab83047'; },
  datatype() { return 'gs_service/LpsVel'; }
};
