function [hn] = RespImpulsoDis(a,b,ciy,cix,xi)
syms  Hz n;
Hz=FdeTransferenciaDis(a,b,ciy,cix,xi);
hn= iztrans(Hz);


tiempo=0:1:10;
stem(tiempo,subs(hn,n,tiempo),'b','LineWidth',2)
title('Respuesta al Impulso ','FontWeight','bold','FontSize',16)
grid on
end

