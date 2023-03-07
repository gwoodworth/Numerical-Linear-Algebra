function [W,R]=house(A)
m=size(A,1);
n=size(A,2);
e=eye(m);
W=zeros(m,n);
if m>= n
    for k=1:n
        x=A(k:m,k);
        v = x;
        v = v + sign(x(1))*norm(x)*e(k:m,k);
        v=v/norm(v);
        A(k:m,k:n)=A(k:m,k:n)-2*v*(v'*A(k:m,k:n));
        W(k:m,k)=v;
    end
    if m==n
        R=A;
    else
        A(n+1:m,:)=[];
        R=A;
    end
else
    disp("Error: Input must be a tall or a square matirx")
end
end