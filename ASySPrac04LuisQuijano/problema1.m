t=-2:0.001:2;
f=@(t) exp(-t).*(t>=0 & t<=1);
g=@(t) t.*(t>=-1 & t<=1);
% subplot(2,1,1)
% plot(t,f(t),'g-'); grid on; xlim([-1 2]);
% subplot(2,1,2)
% plot(t,g(t),'r-'); grid on; xlim([-2 2]);
convconm(f,g,-2,3)