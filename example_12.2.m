#201602057 Junkyu Lim
x1 =0
x2 = 0
lambda = 1.2

old_x1 = x1
old_x2 = x2

x1 = (8 + 2*old_x2) / 10
x1_relaxed = lambda*x1 + (1-lambda)*old_x1
x2 = (9 + 3*x1_relaxed) / 12
x2_relaxed = lambda*x2 + (1-lambda)*old_x2

max_iter = 50
iter = 1
ea_1 = 100
ea_2 = 100

while((ea_1 > 10 || ea_2 > 10) && iter < max_iter)
  old_x1 = x1_relaxed
  old_x2 = x2_relaxed
  
  iter
  
  x1 = (8 + 2*old_x2) / 10
  x1_relaxed = lambda*x1 + (1-lambda)*old_x1
  ea_1 = abs(x1_relaxed - old_x1) / x1_relaxed * 100
  
  x2 = (9 + 3*x1_relaxed) / 12
  x2_relaxed = lambda*x2 + (1-lambda)*old_x2
  ea_2 = abs(x2_relaxed - old_x2) / x2_relaxed * 100
  
  iter = iter + 1
endwhile