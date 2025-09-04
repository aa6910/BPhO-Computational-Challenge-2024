theta = input('Enter an angle less than 90 degrees')
u = input('Enter an initial trajectory speed')
h = input('Enter a launch height')
N = input('How many bounces?')
c = input('What is the coefficient of restitution?')

ax = 0
ay = -9.81
n = 0
dt = 0.01
n = 0

x = 0
y = h
vx = u*cosd(theta)
vy = u*sind(theta)


while (n != N)
  do
    vx = vx + ax*dt
    vy = vy + ay*dt
    x = x + vx*dt + 0.5*ax*(dt)^2
    y = y + vy*dt + 0.5*ay*(dt)^2
    plot(x,y,'b')
    hold on
  until (y < 0)
  n += 1
  y = 0
  u = u*c
  vx = u*cosd(theta)
  vy = u*sind(theta)
endwhile


xlabel('x')
ylabel('y')
title('challenge 8')
