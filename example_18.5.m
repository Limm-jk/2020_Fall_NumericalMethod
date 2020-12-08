# 201602057 Junkyu Lim

t = [0 20 40 56 68 80 84 96 104 110];
v = [0 20 20 38 80 80 100 100 125 125];
tt = linspace(0,110);
vl = interp1(t,v,tt);


subplot(2,2,1)
plot(t,v,'o',tt,vl)

vn = interp1(t,v,tt,'nearest');
subplot(2,2,2)
plot(t,v,'o',tt,vn)

vs = interp1(t,v,tt,'spline');
subplot(2,2,3)
plot(t,v,'o',tt,vs)

vh = interp1(t,v,tt,'pchip');
subplot(2,2,4)
plot(t,v,'o',tt,vh)