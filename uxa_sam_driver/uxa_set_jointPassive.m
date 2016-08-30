function uxa_set_jointPassive(samID)
global SerialPort
% Set Angle of SAM has ID samID in passive mode
% Input: uxa_set_jointAngle
% Torq = 0 (max) : 4 (min)
% samID = 0:23
% value = 0:254

% Command Packet
CmdPacket = zeros(4,1);
CmdPacket(1) = 255; % Header 0xFF
CmdPacket(2) = bitor(bitshift(6,5,'uint8'),samID,'uint8');
CmdPacket(3) = 16;
CmdPacket(4) = bitand(bitxor(CmdPacket(2),CmdPacket(3),'uint8'),127,'uint8');
fwrite(SerialPort,CmdPacket,'uint8');
% 
% % RespData = fread(SerialPort,2,'uint8');
% RespData = fscanf(SerialPort);
end

