C=randn(20);
[m,m]=size(C);

for j=1:20
    C(:,j+1)=[C(m,j);C(1:m-1,j)];
end
f=zeros(20,5);
for j=1:20
    for k=1:5
    f(j,k)=cos(-1*(j-1)*(k-1)*2*pi/m);
    end
end
plot(f)