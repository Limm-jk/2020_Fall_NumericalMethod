% 201602057 Junkyu Lim

function v = freefalli
  g = 9.81;
  m = input('Mass (kg) : ')
  cd = input('Drag coefficinet (kg/m) : ')
  t = input('Time(s) : ')
  disp(' ')
  disp('Velocity (m/s) : ')
  disp(sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t))
endfunction

freefalli
