t=-10:0.001:3;
f=@(t) heaviside(t+2)-heaviside(t-2);
g=@(t) exp(-t).*heaviside(t);
g2=@(t) exp(t).*heaviside(-t);
h=@(t) (exp(t+2)-exp(t-2)).*(t<=-2)+(1-exp(t-2)).*(t>-2 & t<=2) + 0.*(t>2);
% plot(t,h(t)); grid on; 
subplot(2,1,1)
plot(t,f(t),'b'); grid on; ylim([min(f(t))-0.1 max(f(t))+0.1]);
subplot(2,1,2)
plot(t,g(t),'r'); grid on; ylim([min(g(t))-0.1 max(g(t))+0.1]);
%  convconm(f,g2,-10,3)