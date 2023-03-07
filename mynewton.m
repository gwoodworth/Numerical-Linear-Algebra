function mynewton(x)
format long
for ii=(1:5)
  
     f=myeq(x);
     jac=myj(x);
       
    
    s=jac\f;
    x=x-s';
end
f
x