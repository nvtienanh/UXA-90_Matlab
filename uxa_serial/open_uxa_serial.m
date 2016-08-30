clear all
clc
% UXA_Serial connect
global SerialPort
SerialPort=serial('/dev/ttyUSB0');

% Set properties of Serial Ports
set(SerialPort,'DataBits',8,'Name','uxa_commp_port','BaudRate',115200);

% Open Port
fopen(SerialPort);

UXA_FirmwareVersion = uxa_get_firmware(SerialPort);
UXA_SerialNumber = uxa_get_serialnumber(SerialPort);
UXA_ZeroPosition = uxa_get_zeroposition(SerialPort);

% close_uxa_serial;