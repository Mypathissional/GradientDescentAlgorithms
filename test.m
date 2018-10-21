%t = [Ackley, Easom, Matyas, Periodic, Quadratic,Rastrigin, Saloomon,Three_hump_camel_function]

f = Qua();
f.dim =2;
p = Plot(f);
%p.call([0,0],[0,0],'Ackley''s contour set')
p.graph()