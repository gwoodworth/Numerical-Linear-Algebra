
x=pi/4;
y=x+pi/2;
z=y+pi/2;
m=z+pi/2;
t=[x y z m x];
a=(2/sqrt(2))*cos(t);
b=(2/sqrt(2))*sin(t);
plot(a,b)
xlim([-2 2])
ylim([-2 2])
title('Infinity Norm Closed Unit Ball')