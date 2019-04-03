t=-2:0.001:2;
syms c;
x=@(t) t.^3;
t1=max(t);
t2=min(t);
x1=@(t) -x(t);
x2=@(t) 2.*x(t);
x3=c.*x;
Potencia=potencia(x,t2,t1)
P1=potencia(x1,t2,t1)
RMS1=sqrt(P1)
P2=potencia(x2,t2,t1)
RMS2= sqrt(P2)
P3=potencia(x3,t2,t1)
RMS3=sqrt(P3)