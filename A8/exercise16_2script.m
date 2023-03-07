format long
Udiff=zeros(1,5);
Vdiff=zeros(1,5);
Sdiff=zeros(1,5);
Adiff=zeros(1,5);
k=zeros(1,5);
for i=[1:5]
    [U,X]=qr(randn(50));
    [V,Y]=qr(randn(50));
    S = diag(sort(rand(50,1),'descend')).^6;
    A=U*S*V';
    [U2,S2,V2]=svd(A);
    for j=[1:50]
        for p=[1:50]
            if sign(U2(j,p))~=sign(U(j,p))
                U2(j,p)=-1*U2(j,p);
            end
            if sign(V2(j,p))~=sign(V(j,p))
                V2(j,p)=-1*V2(j,p);
            end
        end
    end
    Udiff(i)=norm(U-U2);
    Vdiff(i)=norm(V-V2);
    Sdiff(i)=norm(S-S2);
    Adiff(i)=norm(A-U2*S2*V2');
    k(i)=S(1,1)/S(50,50);
    normS=norm(S)
    normv=norm(V)
    figure(i)
    hold on
    plot(diag(U2'*U),'b')
    plot(V2'*V,'r')
    legend('diag(U2*U)','V2*V')
end
Udiff
Vdiff
Sdiff
Adiff
k