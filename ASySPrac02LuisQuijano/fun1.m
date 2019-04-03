function [fw] = fun1(w,a)
%Crea una funci�n que se llame fun1 y reciba dos parametros $\omega$ y $a$
% la funci�n debe regresar la evaluaci�n $F(\omega)=a/(a^2+\omega^2)$, esta
% funci�n debe trabajr con $a\in R$ y $t\in  R^n$. Debe mostrar su c�digo 
%en el reporte (sin ejecutar).
fw=a./(a.^2+w.^2);
end

