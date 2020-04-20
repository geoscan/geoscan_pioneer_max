// Auto-generated. Do not edit!

// (in-package gs_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RGBgs = require('../msg/RGBgs.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leds = null;
    }
    else {
      if (initObj.hasOwnProperty('leds')) {
        this.leds = initObj.leds
      }
      else {
        this.leds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedRequest
    // Serialize message field [leds]
    // Serialize the length for message field [leds]
    bufferOffset = _serializer.uint32(obj.leds.length, buffer, bufferOffset);
    obj.leds.forEach((val) => {
      bufferOffset = RGBgs.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedRequest
    let len;
    let data = new LedRequest(null);
    // Deserialize message field [leds]
    // Deserialize array length for message field [leds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.leds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.leds[i] = RGBgs.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 3 * object.leds.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf20082c082835cb52b25d207098d8e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RGBgs[] leds
    
    
    ================================================================================
    MSG: gs_service/RGBgs
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
    const resolved = new LedRequest(null);
    if (msg.leds !== undefined) {
      resolved.leds = new Array(msg.leds.length);
      for (let i = 0; i < resolved.leds.length; ++i) {
        resolved.leds[i] = RGBgs.Resolve(msg.leds[i]);
      }
    }
    else {
      resolved.leds = []
    }

    return resolved;
    }
};

class LedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedResponse
    let len;
    let data = new LedResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LedRequest,
  Response: LedResponse,
  md5sum() { return '61be35dc5f864469393369c906dab4cc'; },
  datatype() { return 'gs_service/Led'; }
};
