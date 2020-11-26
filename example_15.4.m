# 201602057 Junkyu-lim

x = [0 1 2 3 4 5]';
y = [2.1 7.7 13.6 27.2 40.9 61.1]';
Z = [ones(size(x)) x x.^2]

a = polyfit(x,y,2)

a = Z\y