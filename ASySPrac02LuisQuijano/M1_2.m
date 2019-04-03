%t=-2:2;
t=-2:.001:2;
u=@(t) t>=0;
plot(t,u(t));
xlabel('t'); ylabel('u(t)'); grid on;
axis ([-2 2 -0.1 1.1]);

p=@(t) t>=0 & t<1;
plot(t,p(t));
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)'); grid on;
axis ([-1 2 -.1 1.1]);