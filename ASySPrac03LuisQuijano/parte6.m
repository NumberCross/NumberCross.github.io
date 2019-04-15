n=-20:20;
xn=@(n) n.*((n>=0) & (n<=3)) + (-n+6).*((n>3) & (n<=6));
stem(n,xn(n))
xlabel('n'); ylabel('x[n]'); grid on;

subplot(3,2,1)
stem(n,xn(-n))
xlabel('n'); ylabel('x[-n]'); grid on;
xlim([-7 1]);
subplot(3,2,2)
stem(n,xn(n+6))
xlabel('n'); ylabel('x[n+6]'); grid on;
xlim([-7 1]);
subplot(3,2,3)
stem(n,xn(n-6))
xlabel('n'); ylabel('x[n-6]'); grid on;
xlim([5 13]);
subplot(3,2,4)
stem(n,xn(3*n))
xlabel('n'); ylabel('x[3n]'); grid on;
xlim([-1 3]);
subplot(3,2,5)
stem(n,xn(n/3))
xlabel('n'); ylabel('x[n/3]'); grid on;
xlim([-1 19]);
subplot(3,2,6)
stem(n,xn(3-n))
xlabel('n'); ylabel('x[3-n]'); grid on;
xlim([-4 4]);