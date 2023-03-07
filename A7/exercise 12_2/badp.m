function badp
%n=zeros(30,1);
m=zeros(30,1);
n=(1:30)';
nrm = zeros(30,1);
for i=1:30
    m(i,1) = 2*i-1;
end
for i=1:30
    %sx = 2/(i-1);
    
    if i==1
        A=0;
        
    else
        sy = 2/(m(i-1,1)+1);
        %x = (-1:sx:1);
        y = (-1:sy:1)';
        %A = zeros(m(i,1),n(i,1));
        for j= 1:i%size(y,1)
            A(1:size(y,1),i)= y(j).^(j-1);
        end
    end
    %A = fliplr(vander(y));
    %v = A*x;
    nrm(i,1) = norm(A,inf);
    
end
semilogy(n,nrm);
%plot(n,nrm);
end
