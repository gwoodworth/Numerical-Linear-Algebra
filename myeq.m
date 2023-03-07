function sol=myeq(x)
sol(1)=x(1)^2+x(2)^2+(x(3)^2)-4;
sol(2)=x(1)-cos(pi*x(2));
sol(3)=x(2)^2-x(3);
sol=sol';