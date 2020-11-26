# 201602057 Junkyu-lim

function f = fSSR(a,xm,ym)
  yp = a(1)*xm.^a(2);
  f = sum((ym-yp).^2);
end
x = [10 20 30 40 50 60 70 80]; 
y = [25 70 380 550 610 1220 830 1450];

fminsearch(@fSSR, [1, 1], [], x, y)