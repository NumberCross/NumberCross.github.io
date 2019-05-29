function [Respuesta_Total] = R_totalDis(a,b,ciy,xi)
syms n;
Respuesta_Total=R_entrada0Dis(a,ciy)+R_estado0Dis(a,b,xi);
tiempo=0:1:10;
stem(tiempo,subs(Respuesta_Total,n,tiempo),'b','LineWidth',2)
xlabel('tiempo')
title('Respuesta Total','FontWeight','bold','FontSize',16)
end

