% 201602057 Junkyu Lim

t = linspace(0,12)

function favg = funcavg(f, a, b, n)
  x = linspace(a, b, n)
  y = f(x)
  favg = mean(y)
endfunction

vel = @(t) ...
sqrt(9.81*68.1/0.25)*tanh(sqrt(9.81*0.25/68.1)*t);

funcavg(vel, 0, 12, 60)