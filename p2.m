function matrices(s)
a = -10;
b = 10;
r=zeros(8,s)
n=zeros(8,s)
d=zeros(8,s)

for k= 1:s
    for l= 1:8
        m=2^l
        Z = (b-a).*rand(m) + a;
        r(l,k)=rank(Z)
        n(l,k)=norm(Z)
        d(l,k)=abs(det(Z))
      
      
    end
       
end
m = [2^1,2^2,2^3,2^4,2^5,2^6,2^7,2^8]
figure()
scatter(m,r)
title('Rank of random(range[-10,10]) mXm matrices')
xlabel('m')
ylabel('Rank')
figure()
scatter(m,n)
title('2-Norms of random(range[-10,10]) mXm matrices')
xlabel('m')
ylabel('2-Norm')
figure()
scatter(m,d)
title('Determinates of random(range[-10,10]) mXm matrices')
xlabel('m')
ylabel('Determinate')


