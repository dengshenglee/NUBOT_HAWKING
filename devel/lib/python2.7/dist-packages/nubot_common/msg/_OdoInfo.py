# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from nubot_common/OdoInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class OdoInfo(genpy.Message):
  _md5sum = "8582fa9c5471801c91b381b70caabb2f"
  _type = "nubot_common/OdoInfo"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header  header
float32 Vx
float32 Vy
float32 w
float32 angle
bool    BallIsHolding
bool    RobotStuck
bool    PowerState


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','Vx','Vy','w','angle','BallIsHolding','RobotStuck','PowerState']
  _slot_types = ['std_msgs/Header','float32','float32','float32','float32','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,Vx,Vy,w,angle,BallIsHolding,RobotStuck,PowerState

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OdoInfo, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.Vx is None:
        self.Vx = 0.
      if self.Vy is None:
        self.Vy = 0.
      if self.w is None:
        self.w = 0.
      if self.angle is None:
        self.angle = 0.
      if self.BallIsHolding is None:
        self.BallIsHolding = False
      if self.RobotStuck is None:
        self.RobotStuck = False
      if self.PowerState is None:
        self.PowerState = False
    else:
      self.header = std_msgs.msg.Header()
      self.Vx = 0.
      self.Vy = 0.
      self.w = 0.
      self.angle = 0.
      self.BallIsHolding = False
      self.RobotStuck = False
      self.PowerState = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4f3B().pack(_x.Vx, _x.Vy, _x.w, _x.angle, _x.BallIsHolding, _x.RobotStuck, _x.PowerState))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 19
      (_x.Vx, _x.Vy, _x.w, _x.angle, _x.BallIsHolding, _x.RobotStuck, _x.PowerState,) = _get_struct_4f3B().unpack(str[start:end])
      self.BallIsHolding = bool(self.BallIsHolding)
      self.RobotStuck = bool(self.RobotStuck)
      self.PowerState = bool(self.PowerState)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4f3B().pack(_x.Vx, _x.Vy, _x.w, _x.angle, _x.BallIsHolding, _x.RobotStuck, _x.PowerState))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 19
      (_x.Vx, _x.Vy, _x.w, _x.angle, _x.BallIsHolding, _x.RobotStuck, _x.PowerState,) = _get_struct_4f3B().unpack(str[start:end])
      self.BallIsHolding = bool(self.BallIsHolding)
      self.RobotStuck = bool(self.RobotStuck)
      self.PowerState = bool(self.PowerState)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f3B = None
def _get_struct_4f3B():
    global _struct_4f3B
    if _struct_4f3B is None:
        _struct_4f3B = struct.Struct("<4f3B")
    return _struct_4f3B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
