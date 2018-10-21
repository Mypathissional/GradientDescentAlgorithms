  
classdef Periodic
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dim
    end
    
    methods
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            y = 1+ sum(sin(x).^2) - 0.1* exp(-sum(x.^2));
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            output = 2*cos(x) +0.2*exp(-sum(x.^2))*x;
        end
        function output =function_name(obj)
            output = 'Periodic';
        end
        
    end
end

