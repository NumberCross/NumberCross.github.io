function [fn] = fun1(omega,a)
r=2;
n=3;
fn=(r.^a).*cos(omega.*n)+(r.^a).*sin(omega.*n)*j;
end
