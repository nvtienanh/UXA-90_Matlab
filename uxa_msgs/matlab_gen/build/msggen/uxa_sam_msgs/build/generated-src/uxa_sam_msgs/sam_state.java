package uxa_sam_msgs;

public interface sam_state extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_sam_msgs/sam_state";
  static final java.lang.String _DEFINITION = "uint8 id\nuint8 torq\nuint8 pos\n\n";
  byte getId();
  void setId(byte value);
  byte getTorq();
  void setTorq(byte value);
  byte getPos();
  void setPos(byte value);
}
