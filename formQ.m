function Q=formQ(W)
m=size(W,1);
n=size(W,2);
e=eye(m);
Q=zeros(m);
for l=m:-1:1
    for k=n:-1:1
        e(k:m,l) = e(k:m,l)-2*W(k:m,k)*(W(k:m,k)'*e(k:m,l));
        Q(k:m,l) = e(k:m,l);
    end
end

