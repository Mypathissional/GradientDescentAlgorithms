classdef Easom
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dim =2 
    end
    
    methods
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            y = -cos(x(1)+ pi)* cos(x(2)+pi)* exp(-sum(x.^2))+1;
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            output = exp(-sum(x.^2))* cos(fliplr(x)+pi).* (sin(x+pi)+ 2*x.*cos(x+pi)   );
        end
        
        function output =function_name(obj)
            output = 'Easom';
        end
    end
end
