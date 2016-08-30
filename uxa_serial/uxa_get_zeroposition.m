function ZeroPosition = uxa_get_zeroposition( SerialPort )
%Get firmware version of UXA-90 Serial Port
% Input: CMDGet_ZeroPosition
% Output: Firmware version
% UXA-90 will return  17 hex value

%%% Specify hex codes to be transmitted
% ff ff aa 55 aa 55 37 ba 0b 01 00 00 00 01 01 01
CMDGet_ZeroPosition = ['ff';'ff';'aa';'55';'aa';'55';'37';'ba';'0b';'01';'00';'00';'00';'01';'01';'01'];
%Convert to decimal format
CMDGet_ZeroPosition = hex2dec(CMDGet_ZeroPosition);
%Write using the UINT8 data format
fwrite(SerialPort,CMDGet_ZeroPosition,'uint8');

%%% Response Data: 
RespDataSize = 46;
RespData = fread(SerialPort,RespDataSize,'uint8');

ZeroPosition = RespData(15:45)';
end

