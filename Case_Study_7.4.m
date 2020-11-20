%201602057 Junkyu-Limm
function P = PE(x)
  PEa = 0.5*9*(sqrt(x(1)^2+(10-x(2))^2)-10)^2;
  PEb = 0.5*2*(sqrt(x(1)^2+(10-x(2))^2)-10)^2;
  W = 2*x(1)+4*x(2);
  P = PEa + PEb - W;
endfunction


[x,f] = fminsearch(@PE, [-0.5,0.5])