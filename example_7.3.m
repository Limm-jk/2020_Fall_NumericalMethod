%201602057 Junkyu-Limm
function x4 = quadratic_interpolation(f,x1,x2,x3,maxit)
  if nargin<4, error('at least 4 input arguments required'),endif
  if nargin<5|isempty(maxit), maxit=50; endif
  iter = 0;
  x4 = 0;
  
  while(1)
    A = (x2-x1)^2*(f(x2)-f(x3))-(x2-x3)^2*(f(x2)-f(x1));
    B = (x2-x1)*(f(x2)-f(x3))-(x2-x3)*(f(x2)-f(x1));
    
    x4 = x2 - (1/2)*(A/B)
    
    if x2 < x4
      x1 = x2;
      x2 = x4;
    else
      x3 = x2;
      x2 = x4;
    endif
    
    iter = iter+1
    if iter >= maxit,break,endif
  endwhile
endfunction

f = @(x) x^2 / 10 - 2 * sin(x);
x1 = 0
x2 = 1
x3 = 4
x4 = quadratic_interpolation(f, x1, x2, x3, 5)