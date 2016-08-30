function RespData = uxa_get_response()
%Get firmware version of UXA-90 Serial Port
% Input: CMDGet_Firmware
% Output: Firmware version
% UXA-90 will return  17 hex value
%%% Specify hex codes to be transmitted
global SerialPort
CMDGet_Firmware = [255;255;170;85;170;85;55;186;25;1;0;0;0;1;1;1];
%Write using the UINT8 data format
fwrite(SerialPort,CMDGet_Firmware,'uint8');

%%% Response Data
RespDataSize = 17;
RespData = fread(SerialPort,RespDataSize,'uint8');

end

