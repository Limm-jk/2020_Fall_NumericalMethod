# 201602057 Junkyu Lim

x = linspace(-1,1,9);
y = 1./(1+25*x.^2);

xx = linspace(-1,1);
yy = spline(x,y,xx);

yr = 1./(1+25*xx.^2);
#plot(x,y,'o',xx,yy,xx,yr,'--')

yc = [1 y -4];
yyc = spline(x,yc,xx);
plot(x,y,'o',xx,yyc,xx,yr,'--')