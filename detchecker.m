function detchecker(~)
format long
n=10;
detA=[];
detB=[];
for i=[1:n]
    A = rand(10,10);
    d = diag(A);
    
    if (max(d, [], 'all')/min(d, [], 'all'))<10    %well conditioned
        detA(i)=prod(d);
    else              %not well conditioned
        detB(i)=prod(d);
    end
    
end
detA
detB

%both are small