function [Ex] = energia(X)
A=isa(X,'function_handle');
if A == 1
Ex=integral(X,-inf,inf);
else
    Ex=int(X,-inf,inf);
end
end

