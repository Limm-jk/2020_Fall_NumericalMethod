% 201602057 Junkyu Lim

function v = freefall(t, m , cd)
  g = 9.81;
  v = sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t)
endfunction

freefall(12, 68.1, 0.25)

