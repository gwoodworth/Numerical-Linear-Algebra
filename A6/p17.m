x=(1:0.00001:2)';
A=[exp(x),cos(x),x.^.5];
b=1./x;
c=A\b;
plot(x,b,'b'),hold on
plot(x,A*c,'r')
%estimates of accuracy
norm(b-A*c,'inf')
norm(b-A*c)/sqrt(100000)