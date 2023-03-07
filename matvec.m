function z = matvec(A,v)
    sA = size(A);
    sv = size(v);
    z=zeros(sA(1),sv(2));
    if sA(2)==sv(1)
        for i=1:(sA(1))
            for j=1:sv(1)
                z(i)= z(i)+A(i,j)*v(j);
            
            end
        end
    else disp('error')
        
    end
