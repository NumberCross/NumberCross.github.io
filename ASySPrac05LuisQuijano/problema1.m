d0=0.504;
dn=@(n) (0.504).*(1/(sqrt(1+16*n^2))).*exp(-atan(4*n)*1i);
t0=0;
tf=pi;
f=@(t) exp(-t/2);
armo=15;
a=-10;
b=7;
sfc(t0,tf,dn,d0,f,armo,a,b)