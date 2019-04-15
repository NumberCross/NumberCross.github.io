n=-10:10;
xn=@(n) (n+4).*((n>=-3) & (n<=0)) + (-n+4).*((n>0) & (n<=3));
xn2=@(n) n.*((n>=-4) & (n<=4));
stem(n,xn(n))
xlabel('n'); ylabel('x[n]'); grid on;
xlim([-5 5]);

stem(n,xn(2*n))
xlabel('n'); ylabel('x[2n]'); grid on;
xlim([-3 3]);

stem(n,xn(n/2))
xlabel('n'); ylabel('x[n/2]'); grid on;
xlim([-9 9]);

stem(n,xn2(n))
xlabel('n'); ylabel('y[n]'); grid on;
xlim([-4 4]);

stem(n,xn2(-n))
xlabel('n'); ylabel('y[-n]'); grid on;
xlim([-4 4]);

stem(n,xn2(-2*n))
xlabel('n'); ylabel('y[-2n]'); grid on;
xlim([-4 4]);


stem(n,xn2(-n/2))
xlabel('n'); ylabel('x[n]'); grid on;
xlim([-9 9]);