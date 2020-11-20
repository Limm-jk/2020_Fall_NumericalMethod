% 201602057 Junkyu Lim

function quadroots(a, b, c)
  if a == 0
    if b ~= 0
      r1 = -c / b
    else
      disp('Trivial solution. Try again')
    endif
  else
    d = b ^ 2 - 4 * a * c;
    if d >= 0
      r1 = (-b + sqrt(d)) / (2 * a)
      r2 = (-b - sqrt(d)) / (2 * a)
    elseif
      r1 = -b / (2 * a)
      i1 = sqrt(abs(d)) / (2 * a)
      r2 = r1
      i2 = -i1
    endif
  endif
endfunction

quadroots(1, 1, 1)
quadroots(1, 5, 1)
quadroots(0, 5, 1)
quadroots(0, 0, 0)