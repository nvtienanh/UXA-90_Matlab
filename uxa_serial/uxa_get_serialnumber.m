function SerialNumber = uxa_get_serialnumber( SerialPort )
%Get firmware version of UXA-90 Serial Port
% Input: CMDGet_SerialNumber
% Output: Firmware version
% UXA-90 will return  17 hex value

%%% Specify hex codes to be transmitted
CMDGet_SerialNumber = ['ff';'ff';'aa';'55';'aa';'55';'37';'ba';'0c';'01';'00';'00';'00';'01';'01';'01'];
%Convert to decimal format
CMDGet_SerialNumber = hex2dec(CMDGet_SerialNumber);
%Write using the UINT8 data format
fwrite(SerialPort,CMDGet_SerialNumber,'uint8');

%%% Response Data
RespDataSize = 28;
RespData = fread(SerialPort,RespDataSize,'uint8');

SerialNumber = char(RespData(15:27))';
end

