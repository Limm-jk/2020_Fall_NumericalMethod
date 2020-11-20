% 201602057 Junkyu Lim

function nd = day(mo, da, year)
  %���� ����
  % 4�� ������ �������� ����
  % �̶� 100���� ������ �������� ���
  % �� �̶� 400���� ������ �������� ����
  % so ���⽺...
  addDay = 0
  if mod(year, 4) == 0
    % 4�� ������ �������� ����
    if mod(year, 100) == 0
      % 100���� ������ �������� ���
      if mod(year, 400) == 0
        %�̶� 400���� ������ �������� ����
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
