function x = inhousesolve(A,b);
[m n] = size(A);
[p,q] = size(b);
if m ~= n,  error('A must be square'),  end
if p~=m, error('b must be compatible with A'), end
if q~=1, error('b must be a column vector'), end
A=[A;zeros(1,m)];
x=zeros(m,1);
for k = 1:m
    v = A(k:m,k);              
    v(1) = sign(v(1)) * norm(v,2) + v(1);
    v = v / norm(v,2);
    A(k:m,k:m) = A(k:m,k:m) - 2 * v * (v' * A(k:m,k:m)); 
    b(k:m)=b(k:m)-2*v*(v'*b(k:m));
    A(k+1:m+1,k)=v;
end

for j=m:-1:1
    xr=zeros(m-j,1);
    for k=j:m
        xr(k)=x(k)*A(j,k);
    end
    xr=sum(xr);
    x(j,1)=(b(j,1)-xr)/A(j,j);
end


