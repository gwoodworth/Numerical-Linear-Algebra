A=rand(5,5);A=A+A';
A0=A;
for i=1:100
    [Q,R]=qr(A);A=R*Q;
end
A0
A
