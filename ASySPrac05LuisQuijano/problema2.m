d0=0;
dn=@(n) (12/((n*pi).^2)).*abs(sin(n*pi/2)).*exp((-pi/2)*n*1i);
t0=-0.5;
tf=1.5;
f=@(t) 6*t.*(t>=-0.5 & t<=0.5) + 6*(1-t).*(t>0.5 & t<=3);
armo=15;
a=-4.5;
b=6;
sfc(t0,tf,dn,d0,f,armo,a,b)