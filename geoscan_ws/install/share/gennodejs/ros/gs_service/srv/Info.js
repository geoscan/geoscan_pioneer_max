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

class InfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InfoRequest
    let len;
    let data = new InfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/InfoRequest';
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
    const resolved = new InfoRequest(null);
    return resolved;
    }
};

class InfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InfoResponse
    // Serialize message field [num]
    bufferOffset = _serializer.string(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InfoResponse
    let len;
    let data = new InfoResponse(null);
    // Deserialize message field [num]
    data.num = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.num.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/InfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8470232561560e383557c02344b87f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InfoResponse(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: InfoRequest,
  Response: InfoResponse,
  md5sum() { return 'c8470232561560e383557c02344b87f7'; },
  datatype() { return 'gs_service/Info'; }
};
