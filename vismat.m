function vismat(A)
[m,n]=size(A);
B=A';
if m==2
    if n==2
        z=A(1,1)-B(1,1)+A(2,1)-B(2,1)+A(1,2)-B(1,2)+A(2,2)-B(2,2);
        if z==0
            [U,S,V]=svd(A);
            v_1 = V(:,1);
            v_2 = V(:,2);
            u_1 = U(:,1);
            u_2 = U(:,2);
            v=[v_1,v_2];
            %su=[(S(1)*u_1(1)),S(2)*u_2(1);S(1)*u_1(2),(S(2)*u_2(2))];
            su=U*S;
            figure(1);
            plotv(v,'-')
            hold on
            figure(1);
            fimplicit(@(x,y)x.^2+y.^2-norm(v_1)^2)
            title('S');
            
           
           
            %plot s elipse
            figure(2);
            plotv(su,'-')
            hold on
            
          
            
            xCenter = 0;
            yCenter = 0;
          
           
          
            xRadius = norm(su(:,1));
            yRadius = norm(su(:,2));
            theta = 0 : 0.01 : 2*pi;
            x = xRadius * cos(theta) + xCenter;
            y = yRadius * sin(theta) + yCenter;
            plot(x, y, 'LineWidth', 3);
            title('AS')
            
           
            
        end
      
        
        
    end
   
    
end
