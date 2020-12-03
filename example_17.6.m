#201602057 Junkyu_Limm

t = [1920:10:1990];
pop = [106.46 123.08 132.12 152.27 180.67 205.05 227.23 249.46];

p = polyfit(t,pop,7)

ts = (t - 1955)/35;
p = polyfit(ts,pop,7);

polyval(p,(2000-1955)/35)

tt = linspace(1920,2000);
pp = polyval(p,(tt-1955)/35);
plot(t,pop,'o',tt,pp)