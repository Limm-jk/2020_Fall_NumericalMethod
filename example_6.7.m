%201602057 Junkyu-Limm

%options = optimset('display','iter')
options = optimset('tolx', 1e-3)
[x, fx] = fzero(@(x) x^10-1, 0.5, options)