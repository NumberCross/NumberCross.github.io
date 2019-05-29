function [Respuesta_Total] = R_total(a,b,ciy,xi)

Respuesta_Total=R_entrada00(a,ciy)+R_estado00(a,b,xi);
fplot(Respuesta_Total,[0, 5],'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta Total')
end


