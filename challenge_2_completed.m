theta = input('Enter an angle between 0 and 2*pi radians')
u = input('Enter an initial trajectory speed')
g = input('Enter a value for the strength of gravity')
h = input('Enter a launch height')

a = cos(theta)
b = sin(theta)
c = tan(theta)

R = ((u^2)/g)+(b*a + a*(b^2 + ((2*g*h)/(u^2))))

x = 0:R/1000:R
y = h+(c.*x)-((g/(2*(u^2)))*(1+(c^2))*(x.^2))

x_apogee = ((u^2)/g)*(b*a)
y_apogee = h + ((u^2)/(2*g))*(b^2)


plot(x,y,'b',x_apogee,y_apogee,'x')
xlabel('x')
ylabel('y')
title('challenge 2')
