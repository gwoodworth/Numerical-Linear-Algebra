function [lam,v] = rqi(A,vO)
v=vO/norm(vO);
lam = v'*A*v;
[m,~]=size(A);

for k=1:20
    B = A-lam*eye(m);
    if rcond(B)<10*eps
        break
    end
    w=(B)\v;
    v=w/norm(w);
    lam=v'*A*v;
end

end
