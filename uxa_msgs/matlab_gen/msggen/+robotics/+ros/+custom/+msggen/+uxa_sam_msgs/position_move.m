classdef position_move < robotics.ros.Message
    %position_move MATLAB implementation of uxa_sam_msgs/position_move
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2016 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'uxa_sam_msgs/position_move' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '9c5656f1709008629f816bb4f331ac28' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Id
        Torqlevel
        Pos
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Id', 'Pos', 'Torqlevel'} % List of non-constant message properties
        ROSPropertyList = {'id', 'pos', 'torqlevel'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = position_move(msg)
            %position_move Construct the message object position_move
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function id = get.Id(obj)
            %get.Id Get the value for property Id
            id = typecast(int8(obj.JavaMessage.getId), 'uint8');
        end
        
        function set.Id(obj, id)
            %set.Id Set the value for property Id
            validateattributes(id, {'numeric'}, {'nonempty', 'scalar'}, 'position_move', 'id');
            
            obj.JavaMessage.setId(id);
        end
        
        function torqlevel = get.Torqlevel(obj)
            %get.Torqlevel Get the value for property Torqlevel
            torqlevel = typecast(int8(obj.JavaMessage.getTorqlevel), 'uint8');
        end
        
        function set.Torqlevel(obj, torqlevel)
            %set.Torqlevel Set the value for property Torqlevel
            validateattributes(torqlevel, {'numeric'}, {'nonempty', 'scalar'}, 'position_move', 'torqlevel');
            
            obj.JavaMessage.setTorqlevel(torqlevel);
        end
        
        function pos = get.Pos(obj)
            %get.Pos Get the value for property Pos
            pos = typecast(int8(obj.JavaMessage.getPos), 'uint8');
        end
        
        function set.Pos(obj, pos)
            %set.Pos Set the value for property Pos
            validateattributes(pos, {'numeric'}, {'nonempty', 'scalar'}, 'position_move', 'pos');
            
            obj.JavaMessage.setPos(pos);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Id = obj.Id;
            cpObj.Torqlevel = obj.Torqlevel;
            cpObj.Pos = obj.Pos;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Id = strObj.Id;
            obj.Torqlevel = strObj.Torqlevel;
            obj.Pos = strObj.Pos;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Id = obj.Id;
            strObj.Torqlevel = obj.Torqlevel;
            strObj.Pos = obj.Pos;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.uxa_sam_msgs.position_move.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.uxa_sam_msgs.position_move;
            obj.reload(strObj);
        end
    end
end
