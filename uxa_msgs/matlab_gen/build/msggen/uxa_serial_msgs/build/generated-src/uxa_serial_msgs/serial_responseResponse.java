package uxa_serial_msgs;

public interface serial_responseResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "uxa_serial_msgs/serial_responseResponse";
  static final java.lang.String _DEFINITION = "uint8[] data";
  org.jboss.netty.buffer.ChannelBuffer getData();
  void setData(org.jboss.netty.buffer.ChannelBuffer value);
}
