% syms t w;
t=-1:0.001:5;
f=@(t) exp(-2*t).*heaviside(t);
% fw=int(f.*exp(-1j*w*t),t,-Inf,Inf);
RtoR('Parte 3', 'f(t)', t, f(t));