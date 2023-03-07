A=rand(5,3);
svd(A);
[S V D]=svd(A)
norm(A-S*V*D)