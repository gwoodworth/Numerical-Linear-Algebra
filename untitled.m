function zero=mynewton(x)
x=[-1 1 1];
for ii=[1:5]
  
     f=myeq(x);
     jac=myj(x);
       
    
    s=jac\f;
    x=x-s;
end
zero=x