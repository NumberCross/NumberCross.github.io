t=-2:.001:2;
g=@(t) exp(-t).*cos(2*pi*t).*(t>=0);
subplot(2,2,1)
plot(t,g(t));
xlabel('t'); ylabel('g(t)'); grid on;
subplot(2,2,2)
plot(t,g(2*t+1)); 
xlabel('t'); ylabel('g(2t+1)'); grid on;
subplot(2,2,3)
plot(t,g(-t+1)); 
xlabel('t'); ylabel('g(-t+1)'); grid;
subplot(2,2,4)
plot(t,g(2*t+1)+g(-t+1)); 
xlabel('t'); ylabel('h(t) = g(2*t+1)+g(-t+1)'); grid;