u = input('enter speed')
theta = input('enter angle from 0 to 90 degrees')
g = 9.81

R = ((u^2)/g)*sind(2*theta)
T = R/(u*cosd(theta))

t = 0:T/1000:T
r = sqrt((u^2)*(t.^2)-g*(t.^3)*u*sind(theta)+0.25*(g^2)*(t.^4))

tmax = ((3*u)/(2*g))*(sind(theta)+sqrt(((sind(theta))^2)-(8/9)))
rmax = sqrt((u^2)*(tmax^2)-g*(tmax^3)*u*sind(theta)+0.25*(g^2)*(tmax^4))

tmin = ((3*u)/(2*g))*(sind(theta)-sqrt(((sind(theta))^2)-(8/9)))
rmin = sqrt((u^2)*(tmin^2)-g*(tmin^3)*u*sind(theta)+0.25*(g^2)*(tmin^4))

plot(t,r,'c')
hold on
plot(tmax,rmax,'b')
hold on
plot(tmin,rmin,'r')
xlabel('t')
ylabel('r')
title('challenge 7')


