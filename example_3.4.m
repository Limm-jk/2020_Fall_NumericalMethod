% 201602057 Junkyu Lim

function sgn = mysign(x)
  if x > 0
    sgn = 1
  elseif x < 0
    sgn = -1
  else
    sgn = 0
  endif
endfunction

mysign(25.6)
mysign(-0.776)
mysign(0)
