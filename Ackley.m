classdef Ackley
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dim
    end
    
    methods
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            y = -20*exp(-0.2*sqrt(sum(x.^2)/obj.dim)) - exp(sum(cos(2*pi*x))/obj.dim)+20+exp(1);
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            output= -4*x*exp(-0.2*sqrt(sum(x.^2)/obj.dim))/(sqrt(sum(x.^2)/obj.dim)*obj.dim+0.1^(15));
            output = output +exp(sum(cos(2*pi*x))/obj.dim)*2*pi*sin(2*pi*x)/obj.dim;
        end
        
        function output =function_name(obj)
            output = 'Acley';
        end
    end
end


        
 
       