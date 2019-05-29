function [ Respuesta_0 ] = R_entrada00(a,ciy)
close all
tam=size(a);
syms y(t) Y(s) Yy;
syms edd; 
edd=0;


for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==0;
edd=solve(eq1, Yy);
Respuesta_0=ilaplace(edd);
fplot(Respuesta_0,[0, 5],'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta a entrada cero')
end

