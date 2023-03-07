format long
m=50;
n=12;
t=linspace(0,1,m)';
A=fliplr(vander(t));
A=A(:,1:n);
b=cos(4*t);
%normal equation sol'n
xa = A'*A\(A'*b);
%mgs  sol'n
[Q,R]=mgs(A);
xb = R\(Q'*b);
%householder sol'n
[W,R]=house(A);
Q = formQ(W);
Q(:,n+1:m)=[];
xc = R\(Q'*b);
%matlab qr sol'n
[Q,R]=qr(A);
xd = R\(Q'*b);
%\ sol'n
xe = A\b;
%svd sol'n
[U,S,V]=svd(A);
w = S\(U'*b);
xf = V*w;
abc=[xa,xb,xc]
def=[xd,xe,xf]



