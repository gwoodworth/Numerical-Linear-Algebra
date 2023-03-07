A=ones(60);
A=tril(A);
A=tril(A-.00001);
A=-A;
[m,m]=size(A);
L=eye(60);
P=eye(60);
U=A
for k=1:m-1
    if 
    U(k,k:m)=U(
end
