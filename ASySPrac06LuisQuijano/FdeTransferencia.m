function [Hs] = FdeTransferencia(a,b,ciy,cix,xi)
close all
tam=size(a);
tami=size(b);
syms Y(s) X(s) Yy Ys Xs H(s);
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   for k=1:i-1
       edi=edi-b(i)*(s^(i-1-k)*cix(k));
   end
end
edi=subs(edi,X(s), laplace(xi));
edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);
Ys=partfrac(edd);
Xs=laplace(xi);
Hs=simplify(Ys/Xs);
end