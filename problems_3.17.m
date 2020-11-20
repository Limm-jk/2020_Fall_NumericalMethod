% 201602057 Junkyu Lim

function nd = day(mo, da, year)
  %윤년 계산법
  % 4로 나누어 떨어지면 윤년
  % 이때 100으로 나누어 떨어지면 평년
  % 또 이때 400으로 나누어 떨어지면 윤년
  % so 복잡스...
  addDay = 0
  if mod(year, 4) == 0
    % 4로 나누어 떨어지는 윤년
    if mod(year, 100) == 0
      % 100으로 나누어 떨어지는 평년
      if mod(year, 400) == 0
        %이때 400으로 나누어 떨어지는 윤년
        addDay = addDay +1
      endif
    else
      addDay = addDay +1
    endif
  endif
  days = 0
  nd = 0
  for month = 1 : mo-1
    switch month
     case {1, 3, 5, 7, 8, 10, 12}
       days = 31
     case {4, 6, 9, 11}
       days = 30
     case 2
       days = 28+addDay
    endswitch
    nd = nd + days
  endfor
  nd = nd + da
endfunction

day(1, 1, 1997)
day(2, 29, 2004)
day(3, 1, 2001)
day(6, 21, 2004)
day(12, 31, 2008)
