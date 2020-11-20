% 201602057 Junkyu-Lim

syms x;
f = cos(x)
input = pi/4
h = pi/12
iter = 6
result = 0
for i = 0:iter
  df = diff(f, x, i)
  df_result = function_handle(diff(f, x, i)) (input);
  result += df_result / factorial(i) * (h^i)
  e = abs((0.5 - result) / 0.5)*100
endfor
