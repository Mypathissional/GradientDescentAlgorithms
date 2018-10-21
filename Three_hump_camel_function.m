classdef Three_hump_camel_function
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dim =2;
    end
    
    methods
        function y = eval(obj,x)
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            y = 2*x(1)^2 - 1.05*x(1)^4 + x(1)^6/6.0 +x(1)*x(2)+ x(2)^2 ;
        end
        
        function output = grad(obj,x)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
      
            output = [4*x(1)-4.2*x(1)^3+x(1)^5+x(2),x(1)+2*x(2)];
        end
        function output =function_name(obj)
            output = 'Three_hump_camel_function';
        end
        
    end
end

    