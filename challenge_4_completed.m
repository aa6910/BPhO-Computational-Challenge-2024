g = input('Enter value for strength of gravity')
u = input('Enter launch speed')
h = input('Enter launch height')
theta = input('Enter launch angle in the range 0 to pi')


a = sin(theta)
b = cos(theta)
c = tan(theta)

thetamax = asin(1/((2 + ((2*g*h)/(u^2)))^0.5))

a2 = sin(thetamax)
b2 = cos(thetamax)
c2 = tan(thetamax)

R = ((u^2)/g)*((a*b + b*((a^2)+((2*g*h)/u^2)))^0.5)
Rmax = ((u^2)/g)*((1 + ((2*g*h)/u^2))*0.5)

x1 = 0:R/1000:1.5*R
y1 = h+(c.*x1)-((g/(2*(u^2)))*(1+(c^2))*(x1.^2))

x2 = 0:Rmax/1000:1.5*Rmax
y2 = y = h+(c2.*x2)-((g/(2*(u^2)))*(1+(c2^2))*(x2.^2))

plot(x1,y1,'b')
hold on
plot(x2,y2,'m')
xlabel('x')
ylabel('y')
title('challenge 4')



