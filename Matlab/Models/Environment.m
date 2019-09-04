classdef Environment
    %ENVIRONMENT: Object to represent properties of test environment
    
    properties
        NumRobots;      % number of robots in field
        DotsPerRobot;   % number of visual anchors for tracking per robot
        XAxisSize;      % width of field in pixels (determined by overhead webcam)
        YAxisSize;      % height of field in pixels (determined by overhead webcam)
        Iteration;      % counter variable tracking number of commands sent
        UDPTransmission;% boolean indicating whether UDP transmissions will be sent
        UDPReception;   % boolean indicating whether UDP messages will be listened for
        %TODO: add logging properties to environment
    end
    
    methods
        function obj = Environment()
            %ENVIRONMENT: Construct an environment object
            
            % reset workspace and camera & UDP I/O
            try
                close all;
                clc;
                fclose(instrfindall);                
            catch
            end
            
            % Manually configure the desired settings below:
            obj.NumRobots = 3;
            obj.DotsPerRobot = 3;
            obj.XAxisSize = 1024;
            obj.YAxisSize = 768;
            obj.Iteration = 0;      
            obj.UDPTransmission = true;
            obj.UDPReception = false;
        end
                
        function obj = Iterate(obj)
            %Iterate: Increments iteration count of environment
            obj.Iteration = obj.Iteration + 1;
        end
    end
end

