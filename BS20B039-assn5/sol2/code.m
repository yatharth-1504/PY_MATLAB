% f = -A*cos(theta)/(x^2 + y^2) => f = -A*x/(x^2+y^2)
nx = 12;
ny = 12;
phi = zeros(nx, ny);
xo = 0;
yo = 4;
A = -4;
for i = 1:nx 
  for j = 1:ny
    a = -A*(i-xo);
    b = ((j-xo)*(j - xo) + (i-xo)*(i-xo));
    phi(i,j) = a/b; 
  endfor
endfor
gx = zeros(nx -1,ny -1);
gy = zeros(ny -1,ny -1);
for i = 2:(nx-1)
  for j = 2:(ny-1)
    gx(i,j) = phi(i+1, j)- phi(i - 1,j);
    gy(i,j) = phi(i, j + 1) - phi(i, j -1);
  endfor  
  figure(1);
  xlabel('x-coordonates');
  ylabel('y-coordinates');
  title('velocity field');
  quiver(gx,gy);
  fname=sprintf('field_%d',i-1);
  print(1,'-dpng', fname);
endfor