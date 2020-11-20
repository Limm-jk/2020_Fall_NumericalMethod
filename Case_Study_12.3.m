#201602057 Junkyu Lim
u = @(x,y) (5 + x + y) / (50 - 2 * x - y) ^ 2 / (20 - x) - 0.0004;
v = @(x,y) (5 + x + y) / (50 - 2 * x - y) / (10 - y) - 0.037;

function [J,f] = jfreact(x,u,v,varargin)
  del = 0.000001;
  df1dx1 = (u(x(1)+del*x(1),x(2))-u(x(1),x(2)))/(del*x(1))
  df1dx2 = (u(x(1),x(2)+del*x(2))-u(x(1),x(2)))/(del*x(2))
  df2dx1 = (v(x(1)+del*x(1),x(2))-v(x(1),x(2)))/(del*x(1))
  df2dx2 = (v(x(1),x(2)+del*x(2))-v(x(1),x(2)))/(del*x(2))
  
  J = [df1dx1 df1dx2; df2dx1 df2dx2];
  f1 = u(x(1),x(2))
  f2 = v(x(1),x(2))
  f = [f1;f2];
endfunction

x = [3,3];

[x,f,ea,iter] = newtmult(@jfreact,x,0.1,50,u,v)
