clc;
clear all;
close all;

f=@(t)'exp(-t/2)';
b=4;
a=0;
n=15;

h=(b-a)/n;
g=@(n) 0.504/(1+4*n*1i);
s=0;
hold on
for i=1:n
    
    s=h/2*(g(a+(i-1)*h)+g(a+(i)*h))+s;
end

x1=linspace(a,b,n);
y1=subs(f,x1);
bar(x1,y1)
plot(x1,y1,'red','LineWidth',3)