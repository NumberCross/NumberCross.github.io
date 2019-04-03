t=-10:0.001:10;
x=@(t) -t.*((t>=-4)&(t<=0)) + t.*((t>0)&(t<=2));
subplot(2,3,1)
plot(t,x(t))
xlabel('t'); ylabel('x(t)'); grid on;
subplot(2,3,2)
plot(t,x(t-4))
xlabel('t'); ylabel('x(t-4)'); grid on;
subplot(2,3,3)
plot(t,x(t/1.5))
xlabel('t'); ylabel('x(t/1.5)'); grid on;
subplot(2,3,4)
plot(t,x(-t))
xlabel('t'); ylabel('x(-t)'); grid on;
subplot(2,3,5)
plot(t,x(2*t-4))
xlabel('t'); ylabel('x(2t-4)'); grid on;
subplot(2,3,6)
plot(t,x(2-t))
xlabel('t'); ylabel('x(2-t)'); grid on;