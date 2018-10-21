classdef Rastrigin
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dim
        A =10;
    end
    
    methods
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            y = obj.A*obj.dim + sum(x.*x - obj.A* cos(2*pi*x));
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            output = 2*x +2*pi*sin(2*pi*x);
        end
        function output =function_name(obj)
            output = 'Rastrigin';
        end
    end
end
