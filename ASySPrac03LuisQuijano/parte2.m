n=-2:10;
a=0.9;
xn=@(n) n.*a.*heaviside(n);
NtoR(n,xn(n),'Parte 2', 'x[n]');
