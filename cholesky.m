function [R]=cholesky(A,m)
R=A;
for k=1:m
    for j=k+1:m
        Rt=R';
        R(j,j:m)=R(j,j:m)-R(k,j:m)*Rt(k,j)/R(k,k);
    end
    R(k,k:m)=R(k,k:m)/sqrt(R(k,k));
end


end
