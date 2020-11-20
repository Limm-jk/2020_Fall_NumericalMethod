#201602057 Junkyu-Lim

A = [40 -20 0; -20 40 -20; 0 -20 40]

e = eig(A)

[v,d] = eig(A)

vpower = [-0.7071 1 -0.7071]';
vML = vpower/norm(vpower)