h_input = input('Enter a launch height')
X = input('X target')
Y = input('Y target')

function projectile_plot(u,theta,h,colour)

  ax = 0
  ay = -9.81
  dt = 0.01
  dx = 0.5

  x = 0
  y = h
  vx = u*cosd(theta)
  vy = u*sind(theta)

  do
    y = h + x*tand(theta) - (9.81*(x^2)*(1 + (tand(theta))^2)/(2*(u^2)))
    plot(x,y,colour)
    hold on
    x += dx
  until (y < 0)
endfunction

function minimum_trajectory(X,Y,colour)
x = 0
dx = 0.5
  do
    y = x*((Y + ((X^2)+(Y^2))^0.5)/X)-((((X^2)+(Y^2))^0.5)/(X^2))*(x^2)
    plot(x,y,colour)
    hold on
    x += dx
  until (y < 0)
endfunction

u_high_low = sqrt(9.81*(Y + sqrt((X^2)+(Y^2))))
a = 9.81*(0.5/(u_high_low^2))*(X^2)
b = 0-X
c = Y -h_input + 9.81*(X^2)*(0.5/(u_high_low^2))
theta_high = atand((-b + sqrt((b^2) - 4*a*c))/(2*a))
theta_low = atand((-b - sqrt((b^2) - 4*a*c))/(2*a))
theta_high = real(theta_high)
theta_low = real(theta_low)

theta_max = asind(1/sqrt(2 + (2*9.81*h_input)/(u_high_low^2)))

function bounding_parabola(u,h,colour)

  dxb = 1
  xb = 0

  do
    yb = h + ((u^2)/(2*9.81))-(9.81/(2*(u^2)))*(xb^2)
    plot(xb,yb,colour)
    hold on
    xb += dxb
  until (yb < 0)
endfunction

projectile_plot(u_high_low,theta_high,h_input,'r')
projectile_plot(u_high_low,theta_low,h_input,'b')
projectile_plot(u_high_low,theta_max,h_input,'m')
minimum_trajectory(X,Y,'g')
bounding_parabola(u_high_low,h_input,'k')

