function [ Respuesta_Estado0 ] = R_estado00(a,b,xi)
close all
tam=size(a);
tami=size(b);
syms y(t) Y(s) X(s) Yy;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
end
edi=subs(edi,X(s), laplace(xi));
edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);
Respuesta_Estado0=ilaplace(edd);
fplot(Respuesta_Estado0,[0, 5],'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta a estado cero','FontWeight','bold','FontSize',16)
end








