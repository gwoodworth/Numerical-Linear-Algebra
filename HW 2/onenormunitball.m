
x=pi/4;
y=x+pi/2;
z=y+pi/2;
m=z+pi/2;
t=[x y z m x];
a=cos(t+pi/4);
b=sin(t+pi/4);
plot(a,b)
xlim([-2 2])
ylim([-2 2])
title('One Norm Closed Unit Ball')