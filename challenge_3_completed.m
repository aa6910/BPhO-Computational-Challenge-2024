X = input('Enter X coordiante of target')
Y = input('Enter Y coordinate of target')
h = input('Enter launch height')
#u = input('Enter launch speed')

g = 9.80665
u = (g^0.5)*(Y+((X^2)+(Y^2))^0.5)^0.5
a = g*(0.5/(u^2))*(X^2)
b = 0-X
c = Y -h + g*(X^2)*(0.5/(u^2))

t1 = (-b + ((b^2)-4*a*c)^0.5)/(2*a)
t2 = (-b - ((b^2)-4*a*c)^0.5)/(2*a)
t3 = ((Y + ((X^2)+(Y^2))^0.5)/X)

x = 0:X/1000:X

y1 = h+ (t1.*x)-((g/(2*(u^2)))*(1+(t1)^2)*(x.^2))
y2 = h+ (t2.*x)-((g/(2*(u^2)))*(1+(t2)^2)*(x.^2))
#y3 = h+(t3.*x)-((g/(2*(u^2)))*(1+(t3)^2)*(x.^2))
y3 = x.*((Y + ((X^2)+(Y^2))^0.5)/X)-((((X^2)+(Y^2))^0.5)/(X^2)).*(x.^2)

plot(x,y1,'b')
hold on
plot(x,y2,'m')
hold on
plot(x,y3,'r')
xlabel('x')
ylabel('y')
title('challenge 3')
