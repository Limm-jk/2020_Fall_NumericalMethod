%201602057 Junkyu-Limm

a = [1 -3.5 2.75 2.125 -3.875 1.25]
polyval(a,1)
b = [1 .5 -.5]
b = poly([0.5 -1])
[q,r] = deconv(a,b)
x = roots(q)
a = conv(q,b)
x = roots(a)
a = poly(x)