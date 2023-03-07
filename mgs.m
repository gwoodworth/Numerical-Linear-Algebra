function [Q,R]= mgs(A)
m = size(A,1);
n = size(A,2);
R = zeros(n);
v= zeros(m,n);
if m>= n
    for i=1:n
        v(:,i)=A(:,i);
    end
    for i=1:n
        r = norm(v(:,i));
        Q(:,i) = (1/r).*v(:,i);
        R(i,i) = r;
        Qp = Q(:,i)';
        for j=i+1:n
            R(i,j) = Q(:,i)'*v(:,j);
            v(:,j) = v(:,j) - R(i,j)*Q(:,i);
        end
    end

else
    disp('Incompatible size')
end
