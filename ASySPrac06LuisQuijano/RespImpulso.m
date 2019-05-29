function [ht] = RespImpulso(a,b,ciy,cix,xi)
syms  Hs;
Hs=FdeTransferencia(a,b,ciy,cix,xi);
ht= ilaplace(Hs);
fplot(ht,[0, 5],'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta al Impulso')
end

