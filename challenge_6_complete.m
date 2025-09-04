

  theta = input('Enter an angle less than 90 degrees')
  u = input('Enter an initial trajectory speed')
  h = input('Enter a launch height')

  ax = 0
  ay = -9.81
  dt = 0.01
  n = 0

  x = 0
  y = h
  x_new = 0
  y_new = h
  s = 0
  s_total = 0
  vx = u*cosd(theta)
  vy = u*sind(theta)

  do
    vx = vx + ax*dt
    vy = vy + ay*dt
    x = x_new
    y = y_new
    x_new = x + vx*dt + 0.5*ax*(dt)^2
    y_new = y + vy*dt + 0.5*ay*(dt)^2
    s = sqrt(((x_new - x)^2)+((y_new - y)^2))
    s_total = s_total + s
    plot(x_new,y_new,'r')
    hold on
  until (y < 0)


  thetam = asind(1/sqrt(2+((2*9.81*h)/u^2)))


  x = 0
  y = h
  x_new = 0
  y_new = h
  s = 0
  sm_total = 0
  vx = u*cosd(thetam)
  vy = u*sind(thetam)

  do
    vx = vx + ax*dt
    vy = vy + ay*dt
    x = x_new
    y = y_new
    x_new = x + vx*dt + 0.5*ax*(dt)^2
    y_new = y + vy*dt + 0.5*ay*(dt)^2
    s = sqrt(((x_new - x)^2)+((y_new - y)^2))
    sm_total = sm_total + s
    plot(x_new,y_new,'b')
    hold on
  until (y < 0)

  disp('total distance travelled is')
  disp(s_total)
  disp('total distance travelled when theta is maximised is')
  disp(sm_total)





