function uxa_set_zeroposition(zeroData)
%Get firmware version of UXA-90 Serial Port
% Input: CMDSet_ZeroPosition
% Output: None
%%% Specify hex codes to be transmitted
% ff ff aa 55 aa 55 37 ba 0b 01 00 00 00 01 01 01
global SerialPort
CMDSet_ZeroPosition = [255;255;170;85;170;85;55;186;14;0;0;0;0;31;zeroData;1];
% Write using the UINT8 data format
fwrite(SerialPort,CMDSet_ZeroPosition,'uint8');
end

