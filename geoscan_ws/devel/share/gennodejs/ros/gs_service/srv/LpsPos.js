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

class LpsPosRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LpsPosRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LpsPosRequest
    let len;
    let data = new LpsPosRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LpsPosRequest';
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
    const resolved = new LpsPosRequest(null);
    return resolved;
    }
};

class LpsPosResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lpsX = null;
      this.lpsY = null;
      this.lpsZ = null;
    }
    else {
      if (initObj.hasOwnProperty('lpsX')) {
        this.lpsX = initObj.lpsX
      }
      else {
        this.lpsX = 0.0;
      }
      if (initObj.hasOwnProperty('lpsY')) {
        this.lpsY = initObj.lpsY
      }
      else {
        this.lpsY = 0.0;
      }
      if (initObj.hasOwnProperty('lpsZ')) {
        this.lpsZ = initObj.lpsZ
      }
      else {
        this.lpsZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LpsPosResponse
    // Serialize message field [lpsX]
    bufferOffset = _serializer.float32(obj.lpsX, buffer, bufferOffset);
    // Serialize message field [lpsY]
    bufferOffset = _serializer.float32(obj.lpsY, buffer, bufferOffset);
    // Serialize message field [lpsZ]
    bufferOffset = _serializer.float32(obj.lpsZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LpsPosResponse
    let len;
    let data = new LpsPosResponse(null);
    // Deserialize message field [lpsX]
    data.lpsX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lpsY]
    data.lpsY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lpsZ]
    data.lpsZ = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LpsPosResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28576301d1e7ebfaeb880e74c20055fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 lpsX
    float32 lpsY
    float32 lpsZ
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LpsPosResponse(null);
    if (msg.lpsX !== undefined) {
      resolved.lpsX = msg.lpsX;
    }
    else {
      resolved.lpsX = 0.0
    }

    if (msg.lpsY !== undefined) {
      resolved.lpsY = msg.lpsY;
    }
    else {
      resolved.lpsY = 0.0
    }

    if (msg.lpsZ !== undefined) {
      resolved.lpsZ = msg.lpsZ;
    }
    else {
      resolved.lpsZ = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: LpsPosRequest,
  Response: LpsPosResponse,
  md5sum() { return '28576301d1e7ebfaeb880e74c20055fe'; },
  datatype() { return 'gs_service/LpsPos'; }
};
