n=-2:20;
r=1.1;
a=0.5;
fn=@(n) (r.^a).*cos(a.*n)+(r.^a).*sin(a.*n)*j;
NtoR2(n,real(fn(n)),imag(fn(n)),'Problema 3')
