
classdef Saloomon
    
    properties
        dim
    end
    
    methods
        
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
             n = norm(x);
             y = 1 - cos(2*pi*n)+0.1*n;
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            y = norm(x)+0.1^20;
            t = x./y;
            output = t.*(2* pi*sin(2* pi*y) +0.1);
        end
        
        function output =function_name(obj)
            output = 'Saloomon';
        end
    end
end

  