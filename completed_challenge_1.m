theta = input('Enter an angle')
u = input('Enter an initial trajectory speed')
g = 9.81
h = input('Enter a launch height')
a = u*cosd(theta)
b = u*sind(theta)
c = (b + (b^2 + 2*g*h)^0.5)/g
t = 0:0.1:2*c

y = h + (a - g.*t).*t + 0.5*g.*(t.^2)
x = a.*t

plot(x,y)
xlabel('x')
ylabel('y')
title('challenge 1')
