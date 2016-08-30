function [Speed,Accel] = uxa_get_jointSpeed(samID)
global SerialPort
% Get Joint Limmit of an SAM ID
% Input: uxa_set_jointAngle
% Torq = 0 (max) : 4 (min)
% samID = 0:23
% value = 0:254

% Command Packet
CmdPacket = zeros(6,1);
CmdPacket(1) = 255; % Header 0xFF
CmdPacket(2) = bitor(bitshift(7,5,'uint8'),samID,'uint8');
CmdPacket(3) = 14; %0x0E
CmdPacket(4) = 1;
CmdPacket(5) = 1;
% Checksum
checksum = bitxor(CmdPacket(2),CmdPacket(3),'uint8');
checksum = bitxor(checksum,CmdPacket(4),'uint8');
checksum = bitxor(checksum,CmdPacket(5),'uint8');
checksum = bitand(checksum,127,'uint8');
CmdPacket(6) = checksum;
fwrite(SerialPort,CmdPacket,'uint8');

%%% Response Data
RespDataSize = 2;
RespData = fread(SerialPort,RespDataSize,'uint8');
Speed = RespData(1); % Joint Speed 0-30
Accel = RespData(2); % Joint Accel 20-100
end

