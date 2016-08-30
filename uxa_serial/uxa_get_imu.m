function FirmwareVer = uxa_get_imu( SerialPort )
%Get IMU data of UXA-90 Serial Port
% Input: CMDGet_IMU
% Output: Firmware version
% UXA-90 will return  21 hex value

%%% Specify hex codes to be transmitted
CMDGet_Firmware = ['ff';'ff';'aa';'55';'aa';'55';'37';'ba';'1a';'01';'00';'00';'00';'01';'01';'01'];
%Convert to decimal format
CMDGet_Firmware = hex2dec(CMDGet_Firmware);
%Write using the UINT8 data format
fwrite(SerialPort,CMDGet_Firmware,'uint8');

%%% Response Data
RespDataSize = 21;
RespData = fread(SerialPort,RespDataSize,'uint8');

FirmwareVer = RespData';
end

