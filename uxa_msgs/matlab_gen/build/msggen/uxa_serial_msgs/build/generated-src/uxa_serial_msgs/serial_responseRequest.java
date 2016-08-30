package uxa_serial_msgs;

public interface serial_responseRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_serial_msgs/serial_responseRequest";
  static final java.lang.String _DEFINITION = "uint8 cmdID\nuint8 nbytes\n";
  byte getCmdID();
  void setCmdID(byte value);
  byte getNbytes();
  void setNbytes(byte value);
}
