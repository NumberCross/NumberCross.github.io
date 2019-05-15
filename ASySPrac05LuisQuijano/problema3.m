d0=0.5;
dn=@(n) sin((pi*n)/2)./(n*pi);
t0=-pi;
tf=pi;
f=@(t) 0.*(-pi<=t<=-pi/2 & pi/2<=t<=pi) + 1.*(t>-pi/2 & t<pi/2);
armo=15;
a=-5*pi;
b=5*pi;
sfc(t0,tf,dn,d0,f,armo,a,b)