function H=hessen(A,stages)
AO=A; %save original A to check if it is hermitian at the end
[m,n]=size(A);
if m ~= n,  error('A must be square'),  end
if stages==false
    for k = 1:m-2
        v = A(k+1:m,k);
        v(1) = sign(v(1))*norm(v)+v(1);
        v = v/norm(v);
        A(k+1:m,k:m)=A(k+1:m,k:m)-2*v*(v'*A(k+1:m,k:m));
        A(1:m,k+1:m)=A(1:m,k+1:m)-2*(A(1:m,k+1:m)*v)*v';
    end
end
if stages==true
    format short
    A
    for k = 1:m-2
        v = A(k+1:m,k);
        v(1) = sign(v(1))*norm(v)+v(1);
        v = v/norm(v);
        A(k+1:m,k:m)=A(k+1:m,k:m)-2*v*(v'*A(k+1:m,k:m));
        A(1:m,k+1:m)=A(1:m,k+1:m)-2*(A(1:m,k+1:m)*v)*v';
        S=A
    end
end
H=triu(A,-1);%make true zeros in lower left 
if ishermitian(AO)==1
    H=tril(H,1);%make true zeros in upper right if A is hermitian
end