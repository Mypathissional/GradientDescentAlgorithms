classdef Plot
    %UNTITLED17 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        f
        t
        y
        X
        Y
        Z
    end
    
    methods
        function obj = Plot(F)
              obj.f = F;
              obj.t = linspace(-3,3,200);
            if obj.f.dim ==1 
                obj.y = arrayfun(@(x) obj.f.eval(x),obj.t);
            end

            if obj.f.dim == 2
                [obj.X, obj.Y] = meshgrid(obj.t, obj.t);
                obj.Z = arrayfun(@(t1,t2) obj.f.eval([t1,t2]),obj.X,obj.Y);
            end
        end
        function []= call(obj,x0,x1,title_)
            if obj.f.dim ==1 
               plot(obj.t,obj.y,'Color',[38 119 159]./255);
               title(title_);
               hold on;
               quiver(x0,obj.f.eval(x0),x1-x0,obj.f.eval(x1)-obj.f.eval(x0),0);           
            end

            if obj.f.dim ==2
               contour(obj.X,obj.Y,obj.Z,20);
               title(title_);

               colorbar
               hold on;
               quiver(x0(1),x0(2),x1(1)-x0(1),x1(2)-x0(2),0);
            end
            
               hold on;
               pause(0.8);     

        end
        
        function [] = graph(obj)
            
            figure
            
            if obj.f.dim == 1
               plot(obj.t,obj.y,'Color',[38 119 159]./255)
            else
                surface(obj.X,obj.Y,obj.Z);
                view(3)
                colorbar
            end
            title(obj.f.function_name()) 
            
        end
     
    end
        
        
        
        
end
        
    

