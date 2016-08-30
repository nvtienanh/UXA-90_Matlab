package uxa_serial_msgs;

public interface receive extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_serial_msgs/receive";
  static final java.lang.String _DEFINITION = "uint8 rx_data";
  byte getRxData();
  void setRxData(byte value);
}
