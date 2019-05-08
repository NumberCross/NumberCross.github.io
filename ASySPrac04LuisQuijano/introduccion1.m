 t=-10:0.001:10;
f=@(t) exp(-t).*heaviside(t) - exp(t).*heaviside(-t);
g=@(t) heaviside(t);
subplot(2,1,1)
plot(t,f(t),'b'); grid on;
subplot(2,1,2)
plot(t,g(t),'r'); grid on;
% h=@(t) -exp(-t).*(t>=0) + -exp(t).*(t<0);
% plot(t,h(t),'g'); grid on;
% convconm(g,f,-5,5);