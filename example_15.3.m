# 201602057 Junkyu-lim

x = [0 1 2 3 4 5]';
y = [2.1 7.7 13.6 27.2 40.9 61.1]';

Z = [ones(size(x)) x x.^2]

Z'*Z

a = (Z'*Z)\(Z'*y)

Sr = sum((y-Z*a).^2)

syx = sqrt(Sr/(length(x)-length(a)))