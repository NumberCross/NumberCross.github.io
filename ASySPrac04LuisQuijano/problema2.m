t=-6:0.001:6;
f=@(t) heaviside(t)-2*heaviside(t-3)+heaviside(t-4);
g=@(t) heaviside(-t)-2*heaviside(-t-3)+heaviside(-t-4);
% subplot(2,1,1)
% plot(t,f(t)); grid on, ylim([min(f(t))-1 max(f(t))+1])
% subplot(2,1,2)
% plot(t,g(t)); grid on, ylim([min(g(t))-1 max(g(t))+1]);
convconm(f,g,-5,5)