classdef CustomMsgConsts
    %CustomMsgConsts This class stores all message types
    %   The message types are constant properties, which in turn resolve
    %   to the strings of the actual types.
    
    %   Copyright 2016 The MathWorks, Inc.
    
    properties (Constant)
        uxa_sam_msgs_Num = 'uxa_sam_msgs/Num'
        uxa_sam_msgs_position_move = 'uxa_sam_msgs/position_move'
        uxa_sam_msgs_sam_response = 'uxa_sam_msgs/sam_response'
        uxa_sam_msgs_sam_responseRequest = 'uxa_sam_msgs/sam_responseRequest'
        uxa_sam_msgs_sam_responseResponse = 'uxa_sam_msgs/sam_responseResponse'
        uxa_sam_msgs_sam_state = 'uxa_sam_msgs/sam_state'
        uxa_sam_msgs_std_position_move = 'uxa_sam_msgs/std_position_move'
        uxa_serial_msgs_receive = 'uxa_serial_msgs/receive'
        uxa_serial_msgs_serial_response = 'uxa_serial_msgs/serial_response'
        uxa_serial_msgs_serial_responseRequest = 'uxa_serial_msgs/serial_responseRequest'
        uxa_serial_msgs_serial_responseResponse = 'uxa_serial_msgs/serial_responseResponse'
        uxa_serial_msgs_transmit = 'uxa_serial_msgs/transmit'
        uxa_uic_msgs_motion = 'uxa_uic_msgs/motion'
        uxa_uic_msgs_remocon = 'uxa_uic_msgs/remocon'
    end
    
    methods (Static, Hidden)
        function messageList = getMessageList
            %getMessageList Generate a cell array with all message types.
            %   The list will be sorted alphabetically.
            
            persistent msgList
            if isempty(msgList)
                msgList = cell(14, 1);
                msgList{1} = 'uxa_sam_msgs/Num';
                msgList{2} = 'uxa_sam_msgs/position_move';
                msgList{3} = 'uxa_sam_msgs/sam_response';
                msgList{4} = 'uxa_sam_msgs/sam_responseRequest';
                msgList{5} = 'uxa_sam_msgs/sam_responseResponse';
                msgList{6} = 'uxa_sam_msgs/sam_state';
                msgList{7} = 'uxa_sam_msgs/std_position_move';
                msgList{8} = 'uxa_serial_msgs/receive';
                msgList{9} = 'uxa_serial_msgs/serial_response';
                msgList{10} = 'uxa_serial_msgs/serial_responseRequest';
                msgList{11} = 'uxa_serial_msgs/serial_responseResponse';
                msgList{12} = 'uxa_serial_msgs/transmit';
                msgList{13} = 'uxa_uic_msgs/motion';
                msgList{14} = 'uxa_uic_msgs/remocon';
            end
            
            messageList = msgList;
        end
        
        function serviceList = getServiceList
            %getServiceList Generate a cell array with all service types.
            %   The list will be sorted alphabetically.
            
            persistent svcList
            if isempty(svcList)
                svcList = cell(2, 1);
                svcList{1} = 'uxa_sam_msgs/sam_response';
                svcList{2} = 'uxa_serial_msgs/serial_response';
            end
            
            % The message list was already sorted, so don't need to sort
            % again.
            serviceList = svcList;
        end
    end
end
