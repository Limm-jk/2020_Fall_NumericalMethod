#201602057 Junkyu Lim
x1 = 1.5
x2 = 3.5

iter = 2

for i = 1:iter
  x1 = (10-x1^2) / x2
  x2 = 57 - 3*x1*(x2^2)
endfor

x1 = 1.5
x2 = 3.5
for i = 1:iter
  x1 = (10-x1*x2)^(1/2)
  x2 = ((57 - x2)/(3*x1))^(1/2)
endfor