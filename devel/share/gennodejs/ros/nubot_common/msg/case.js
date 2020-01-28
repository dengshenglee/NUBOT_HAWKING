// Auto-generated. Do not edit!

// (in-package nubot_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class case {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.case_1 = null;
      this.case_2 = null;
      this.case_3 = null;
      this.case_4 = null;
      this.case_5 = null;
    }
    else {
      if (initObj.hasOwnProperty('case_1')) {
        this.case_1 = initObj.case_1
      }
      else {
        this.case_1 = 0;
      }
      if (initObj.hasOwnProperty('case_2')) {
        this.case_2 = initObj.case_2
      }
      else {
        this.case_2 = 0;
      }
      if (initObj.hasOwnProperty('case_3')) {
        this.case_3 = initObj.case_3
      }
      else {
        this.case_3 = 0;
      }
      if (initObj.hasOwnProperty('case_4')) {
        this.case_4 = initObj.case_4
      }
      else {
        this.case_4 = 0;
      }
      if (initObj.hasOwnProperty('case_5')) {
        this.case_5 = initObj.case_5
      }
      else {
        this.case_5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type case
    // Serialize message field [case_1]
    bufferOffset = _serializer.int32(obj.case_1, buffer, bufferOffset);
    // Serialize message field [case_2]
    bufferOffset = _serializer.int32(obj.case_2, buffer, bufferOffset);
    // Serialize message field [case_3]
    bufferOffset = _serializer.int32(obj.case_3, buffer, bufferOffset);
    // Serialize message field [case_4]
    bufferOffset = _serializer.int32(obj.case_4, buffer, bufferOffset);
    // Serialize message field [case_5]
    bufferOffset = _serializer.int32(obj.case_5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type case
    let len;
    let data = new case(null);
    // Deserialize message field [case_1]
    data.case_1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [case_2]
    data.case_2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [case_3]
    data.case_3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [case_4]
    data.case_4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [case_5]
    data.case_5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nubot_common/case';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a32cca2312e0e5b356b7165321a7c171';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 case_1
    int32 case_2
    int32 case_3
    int32 case_4
    int32 case_5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new case(null);
    if (msg.case_1 !== undefined) {
      resolved.case_1 = msg.case_1;
    }
    else {
      resolved.case_1 = 0
    }

    if (msg.case_2 !== undefined) {
      resolved.case_2 = msg.case_2;
    }
    else {
      resolved.case_2 = 0
    }

    if (msg.case_3 !== undefined) {
      resolved.case_3 = msg.case_3;
    }
    else {
      resolved.case_3 = 0
    }

    if (msg.case_4 !== undefined) {
      resolved.case_4 = msg.case_4;
    }
    else {
      resolved.case_4 = 0
    }

    if (msg.case_5 !== undefined) {
      resolved.case_5 = msg.case_5;
    }
    else {
      resolved.case_5 = 0
    }

    return resolved;
    }
};

module.exports = case;
