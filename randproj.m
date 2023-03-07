function P=randproj(m,k)
if (m>0) && (k>=0) && (k<=m)
    [Q,~,~]=svd(randn(m,m));
    t = m-k;
    e = eye(k);
    zc = zeros(size(e,1),t);
    zr = zeros(t,m);
    S = [eye(k),zc;zr];
    P=Q*S*Q';
%Check
    r=rank(P);
    PP=P*P;
    diffPP = PP-P;
    diff = P-P';
    nPP = norm(diffPP);
    n = norm(diff);
    if (r==k) && (nPP<1e-10) && (n<1e-10)
        disp('rank(P)=k')
        disp('P=P^2')
        disp('P=P^*')
        disp('It worked!')
    else
        disp('Did not work...')
    end
else
    disp('Incompatible entries. Note that m>0 and 0<=k<=m must both be true')
end
