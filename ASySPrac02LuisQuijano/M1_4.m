% dt=0.001;
% t=0:dt:1;
% x=@(t) exp(-t).*((t>=0)&(t<1));
% E_x=sum(x(t).*x(t)*dt);
% 
% x_squared=@(t) exp(-2*t);
% Ex=integral(x_squared,0,1);

t=0:0.001:100;
g_squared=@(t) exp(-2*t).*(cos(2*pi*t).^2);
E_g=sum(g_squared(t)*0.001)

Eg=integral(g_squared,0,100)
