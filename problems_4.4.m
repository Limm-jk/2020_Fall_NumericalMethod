% 201602057 Junkyu-Lim

function epsi = epsilon
  ep = 1
  
  while (1)
    if ep+1 <= 1
      break
    endif
    ep = ep/2
  endwhile
  epsi = 2*ep
endfunction
