% 201602057 ¿”¡ÿ±‘

m = [83.6 60.2 72.1 91.1 92.9 65.3 80.9]
vt = [53.4 48.5 50.9 55.7 54 47.7 51.1]
g = 9.81

cd = g*m./vt.^2

cdavg = mean(cd), cdmin = min(cd), cdmax=max(cd)

vpred = sqrt(g*m/cdavg)

%%%%%%%%%%%%%%%%%%FIGURE 2.2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(2,1,1); plot(vt,vpred,'o',vt,vt)
xlabel('meansured')
ylabel('predicted')
title('Plot of predicted versus meansured velocities')

subplot(2,1,2); plot(m,cd,'o')
xlabel('mass (kg)')
ylabel('estimated drag coefficient (kg/m)')
title('Plot of drag coefficient versus mass')
