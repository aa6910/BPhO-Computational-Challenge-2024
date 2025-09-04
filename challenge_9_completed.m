theta = input('Enter an angle less than 90 degrees')
u = input('Enter an initial trajectory speed')
h = input('Enter a launch height')
m = input('What is the mass of the object?')
r = input('What is the radius of the object?')
d = input('What is the drag coeffiecient?')

A = (pi)*(r^2)
p = 1.28
gd = 9.81
dt = 0.01
k = (0.5*d*p*A)/m

xd = 0
yd = h
vxd = u*cosd(theta)
vyd = u*sind(theta)

do
  vd = sqrt((vxd^2)+(vyd^2))
  axd = -(vxd/vd)*k*(vd^2)
  ayd = -gd -(vyd/vd)*k*(vd^2)
  vxd = vxd + axd*dt
  vyd = vyd + ayd*dt
  xd = xd + vxd*dt + 0.5*axd*(dt)^2
  yd = yd + vyd*dt + 0.5*ayd*(dt)^2
  plot(xd,yd,'b')
  hold on
until (yd < 0)

x = 0
y = h
vx = u*cosd(theta)
vy = u*sind(theta)
ax = 0
ay = -9.81

do
  vx = vx + ax*dt
  vy = vy + ay*dt
  x = x + vx*dt + 0.5*ax*(dt)^2
  y = y + vy*dt + 0.5*ay*(dt)^2
  plot(x,y,'r')
  hold on
until (y < 0)

xlabel('x')
ylabel('y')
title('challenge 9')
