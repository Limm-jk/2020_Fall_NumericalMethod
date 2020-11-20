% 201602057 Junkyu Lim

function fout = factor(n)
  x = 1
  for i = 1:n
    x = x * i;
  endfor
  fout = x
endfunction

factor(5)
