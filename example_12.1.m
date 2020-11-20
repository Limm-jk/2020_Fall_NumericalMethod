#201602057 Junkyu Lim
function x = GaussSeidel(A,b,es,maxit)
  if nargin < 2, error('at least 2 input arguments required'), end
  if nargin<4 | isempty(maxit), maxit=50; end
  if nargin<3 | isempty(es), es=0.00001; end
  
  [m,n] = size(A)
  if m~=n, error('Matrix A must be square'); end
  C= A;
  for i = 1:n
    C(i,i) = 0
    x(i) = 0
  endfor
  
  x = x'
  for i = 1:n
    d(i) = C(i,i)/A(i,i);
  endfor
  for i = 1:n
    d(i) = b(i)/A(i,i);
  endfor
  iter = 0
  while (1)
    xold = x
    for i = 1:n
      x(i) = d(i) - C(i,:)*x
      if x(i) ~= 0
        ea(i) = abs((x(i) - xold(i))/x(i)) * 100
      endif
    endfor
    iter = iter+1
    if max(ea) <= es | iter >= maxit, break, end

endfunction
