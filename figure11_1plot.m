t=[-5,-4,-3,-2,-1,0,1,2,3,4,5]';
b=[0,0,0,1,1,1,0,0,0,0,0]';
tt=-6:.01:6;
plot(t,b,'x'), hold on,axis off
%c=polyfit(t,b,10);
c=polyfit(t,b,7);
plot(tt,polyval(c,tt),'k')
plot([-6,6],[0,0],'k')
plot([0,0],[-3,6],'k')
xlim([-6,6])
ylim([-3,6])