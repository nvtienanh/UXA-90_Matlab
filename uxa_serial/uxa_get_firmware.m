function FirmwareVer = uxa_get_firmware( SerialPort )
%Get firmware version of UXA-90 Serial Port
% Input: CMDGet_Firmware
% Output: Firmware version
% UXA-90 will return  17 hex value

%%% Specify hex codes to be transmitted
CMDGet_Firmware = ['ff';'ff';'aa';'55';'aa';'55';'37';'ba';'12';'01';'00';'00';'00';'01';'01';'01'];
%Convert to decimal format
CMDGet_Firmware = hex2dec(CMDGet_Firmware);
%Write using the UINT8 data format
fwrite(SerialPort,CMDGet_Firmware,'uint8');

%%% Response Data
RespDataSize = 17;
RespData = fread(SerialPort,RespDataSize,'uint8');

FirmwareVer = RespData(15:16)';
end

