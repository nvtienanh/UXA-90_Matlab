package uxa_sam_msgs;

public interface position_move extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_sam_msgs/position_move";
  static final java.lang.String _DEFINITION = "uint8 id\nuint8 torqlevel\nuint8 pos";
  byte getId();
  void setId(byte value);
  byte getTorqlevel();
  void setTorqlevel(byte value);
  byte getPos();
  void setPos(byte value);
}
