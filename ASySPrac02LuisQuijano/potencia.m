function [Px] = potencia(X,t2,t1)
A=isa(X,'function_handle');
if A == 1
    p=@(t) (X(t)).^2;
    Px=(1/(t1-t2)).*(integral(p,t2,t1));
else
    syms tao;
    Px=limit((1/(2*tao)).*(int(X.^2,-tao,tao)),tao,inf);
end
end

