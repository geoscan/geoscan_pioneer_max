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

class LogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogRequest
    let len;
    let data = new LogRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LogRequest';
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
    const resolved = new LogRequest(null);
    return resolved;
    }
};

class LogResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgs = null;
    }
    else {
      if (initObj.hasOwnProperty('msgs')) {
        this.msgs = initObj.msgs
      }
      else {
        this.msgs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogResponse
    // Serialize message field [msgs]
    bufferOffset = _arraySerializer.string(obj.msgs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogResponse
    let len;
    let data = new LogResponse(null);
    // Deserialize message field [msgs]
    data.msgs = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.msgs.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/LogResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52d4db86eb00b72e64733ff4ed17355d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string[] msgs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LogResponse(null);
    if (msg.msgs !== undefined) {
      resolved.msgs = msg.msgs;
    }
    else {
      resolved.msgs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LogRequest,
  Response: LogResponse,
  md5sum() { return '52d4db86eb00b72e64733ff4ed17355d'; },
  datatype() { return 'gs_service/Log'; }
};
