// Auto-generated. Do not edit!

// (in-package ros_challenge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');
let Orientation = require('./Orientation.js');

//-----------------------------------------------------------

class frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Orientation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type frame
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Orientation.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type frame
    let len;
    let data = new frame(null);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Orientation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_challenge/frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e45d45a5a1ce597b249e23fb30fc871f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Position position
    Orientation orientation
    
    ================================================================================
    MSG: ros_challenge/Position
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: ros_challenge/Orientation
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new frame(null);
    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Orientation.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Orientation()
    }

    return resolved;
    }
};

module.exports = frame;
