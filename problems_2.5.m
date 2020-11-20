% 201602057 Junkyu Lim
a = 2
b = 5

x = 0:pi/40:pi/2
y = b*exp(-a*x).*sin(b*x).*(0.012*x.^4-0.15*x.^3+0.075*x.^2+2.5*x)
z = y.^2
w = [x' y' z']
format short g

plot(x,y,'-.rp',...
      'LineWidth',1.5,...
      'MarkerSize',14,...
      'MarkerEdgeColor','red',...
      'MarkerFaceColor','white')

hold on
plot(x,z,'-bs',...
      'MarkerEdgeColor','blue',...
      'MarkerFaceColor','green')
hold off
xlabel('X')
ylabel('Y,Z')