package uxa_serial_msgs;

public interface transmit extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_serial_msgs/transmit";
  static final java.lang.String _DEFINITION = "uint8 tx_data";
  byte getTxData();
  void setTxData(byte value);
}
