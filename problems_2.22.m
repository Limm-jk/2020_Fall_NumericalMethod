% 201602057 Junkyu Lim
t = 0:1/16:100
x = sin(t).*(exp(cos(t))-2*cos(4*t)-sin(t/12).^5);
y = cos(t).*(exp(cos(t))-2*cos(4*t)-sin(t/12).^5);

subplot(2, 1, 1)
plot(t,x,t,y,':')
title('(a)')
legend('x','y')

subplot(2,1,2)
plot(x,y)
title('(b)')