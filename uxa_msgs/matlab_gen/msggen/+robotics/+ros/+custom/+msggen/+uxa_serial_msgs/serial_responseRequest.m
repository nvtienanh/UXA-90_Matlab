classdef serial_responseRequest < robotics.ros.Message
    %serial_responseRequest MATLAB implementation of uxa_serial_msgs/serial_responseRequest
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2016 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'uxa_serial_msgs/serial_responseRequest' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '160617db20f9ab66430d2ec42ae073e2' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        CmdID
        Nbytes
    end
    
    properties (Constant, Hidden)
        PropertyList = {'CmdID', 'Nbytes'} % List of non-constant message properties
        ROSPropertyList = {'cmdID', 'nbytes'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = serial_responseRequest(msg)
            %serial_responseRequest Construct the message object serial_responseRequest
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
        
        function cmdid = get.CmdID(obj)
            %get.CmdID Get the value for property CmdID
            cmdid = typecast(int8(obj.JavaMessage.getCmdID), 'uint8');
        end
        
        function set.CmdID(obj, cmdid)
            %set.CmdID Set the value for property CmdID
            validateattributes(cmdid, {'numeric'}, {'nonempty', 'scalar'}, 'serial_responseRequest', 'cmdid');
            
            obj.JavaMessage.setCmdID(cmdid);
        end
        
        function nbytes = get.Nbytes(obj)
            %get.Nbytes Get the value for property Nbytes
            nbytes = typecast(int8(obj.JavaMessage.getNbytes), 'uint8');
        end
        
        function set.Nbytes(obj, nbytes)
            %set.Nbytes Set the value for property Nbytes
            validateattributes(nbytes, {'numeric'}, {'nonempty', 'scalar'}, 'serial_responseRequest', 'nbytes');
            
            obj.JavaMessage.setNbytes(nbytes);
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
            cpObj.CmdID = obj.CmdID;
            cpObj.Nbytes = obj.Nbytes;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.CmdID = strObj.CmdID;
            obj.Nbytes = strObj.Nbytes;
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
            
            strObj.CmdID = obj.CmdID;
            strObj.Nbytes = obj.Nbytes;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.uxa_serial_msgs.serial_responseRequest.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.uxa_serial_msgs.serial_responseRequest;
            obj.reload(strObj);
        end
    end
end
