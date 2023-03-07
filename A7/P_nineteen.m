x = 2.85:0.01:3.15;
c = [1 -30 405 -3240 17010 -61236 153090 -262440 295245 -196830 59049];
hold on
semilogy(x,polyval(c,x),x,(x-3).^10)

%semilogy(x,polyval(c,x))
