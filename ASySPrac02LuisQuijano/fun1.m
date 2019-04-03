function [fw] = fun1(w,a)
%Crea una función que se llame fun1 y reciba dos parametros $\omega$ y $a$
% la función debe regresar la evaluación $F(\omega)=a/(a^2+\omega^2)$, esta
% función debe trabajr con $a\in R$ y $t\in  R^n$. Debe mostrar su código 
%en el reporte (sin ejecutar).
fw=a./(a.^2+w.^2);
end

