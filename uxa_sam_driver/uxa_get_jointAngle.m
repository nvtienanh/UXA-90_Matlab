function [Load,Pos] = uxa_get_jointAngle(samID)
global SerialPort
% Set Angle of SAM has ID samID a angle value 8 communitate
% Input: uxa_set_jointAngle
% Torq = 0 (max) : 4 (min)
% samID = 0:23
% value = 0:254
uxa_set_jointAngle(5,samID,0);

% Response Data: Load | Position
RespData = fread(SerialPort,2,'uint8');
Load = RespData(1);
Pos = RespData(2);
end

