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

class RangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeRequest
    let len;
    let data = new RangeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/RangeRequest';
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
    const resolved = new RangeRequest(null);
    return resolved;
    }
};

class RangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance1 = null;
      this.distance2 = null;
      this.distance3 = null;
      this.distance4 = null;
      this.distance5 = null;
    }
    else {
      if (initObj.hasOwnProperty('distance1')) {
        this.distance1 = initObj.distance1
      }
      else {
        this.distance1 = 0.0;
      }
      if (initObj.hasOwnProperty('distance2')) {
        this.distance2 = initObj.distance2
      }
      else {
        this.distance2 = 0.0;
      }
      if (initObj.hasOwnProperty('distance3')) {
        this.distance3 = initObj.distance3
      }
      else {
        this.distance3 = 0.0;
      }
      if (initObj.hasOwnProperty('distance4')) {
        this.distance4 = initObj.distance4
      }
      else {
        this.distance4 = 0.0;
      }
      if (initObj.hasOwnProperty('distance5')) {
        this.distance5 = initObj.distance5
      }
      else {
        this.distance5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeResponse
    // Serialize message field [distance1]
    bufferOffset = _serializer.float32(obj.distance1, buffer, bufferOffset);
    // Serialize message field [distance2]
    bufferOffset = _serializer.float32(obj.distance2, buffer, bufferOffset);
    // Serialize message field [distance3]
    bufferOffset = _serializer.float32(obj.distance3, buffer, bufferOffset);
    // Serialize message field [distance4]
    bufferOffset = _serializer.float32(obj.distance4, buffer, bufferOffset);
    // Serialize message field [distance5]
    bufferOffset = _serializer.float32(obj.distance5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeResponse
    let len;
    let data = new RangeResponse(null);
    // Deserialize message field [distance1]
    data.distance1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance2]
    data.distance2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance3]
    data.distance3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance4]
    data.distance4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance5]
    data.distance5 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gs_service/RangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22fa633ab47d5522f6597a4b0a3bd94d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 distance1
    float32 distance2
    float32 distance3
    float32 distance4
    float32 distance5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RangeResponse(null);
    if (msg.distance1 !== undefined) {
      resolved.distance1 = msg.distance1;
    }
    else {
      resolved.distance1 = 0.0
    }

    if (msg.distance2 !== undefined) {
      resolved.distance2 = msg.distance2;
    }
    else {
      resolved.distance2 = 0.0
    }

    if (msg.distance3 !== undefined) {
      resolved.distance3 = msg.distance3;
    }
    else {
      resolved.distance3 = 0.0
    }

    if (msg.distance4 !== undefined) {
      resolved.distance4 = msg.distance4;
    }
    else {
      resolved.distance4 = 0.0
    }

    if (msg.distance5 !== undefined) {
      resolved.distance5 = msg.distance5;
    }
    else {
      resolved.distance5 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: RangeRequest,
  Response: RangeResponse,
  md5sum() { return '22fa633ab47d5522f6597a4b0a3bd94d'; },
  datatype() { return 'gs_service/Range'; }
};
