%t = [Ackley, Easom, Matyas, Periodic, Quadratic,Rastrigin, Saloomon,Three_hump_camel_function]

f = Three_hump_camel_function();
%f.dim =2;
x = [1.0028  , -2.5811];
l =0.01 ; eps = 0.000000000001; n = 20; animate=true; p =false;
o = Optimization_algo(f,l,eps,n,p,animate);
%o.Gradient_descent(x)
%o.Momentum(x,0.9)
%o.NesterovMomentum(x,0.9)
%o.AdaGrad(x)
%o.RMSprop(x,0.9)
o.Adam(x,0.9,0.99)