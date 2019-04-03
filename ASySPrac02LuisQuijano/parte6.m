t=-10:0.001:10;
x1=@(t) 1*(0<=t & t<=2);
y1=@(t) 1.*(0<=t & t<=1)-1.*(1<=t & t<=2);
x2=@(t) sin(t).*(0<=t & t<=2*pi);
y2=@(t) 1.*(0<=t & t<=2*pi);
x3=@(t) sin(t).*(0<=t & t<=pi);
y3=@(t) (0<=t & t<=pi);
h1=@(t) (x1(t)+y1(t)).^2;
energia(h1)
h11=@(t) (x1(t)-y1(t)).^2;
energia(h11)
h2=@(t) (x2(t)+y2(t)).^2;
energia(h2)
h22=@(t) (x2(t)-y2(t)).^2;
energia(h22)
h3=@(t) (x3(t)+y3(t)).^2;
energia(h3)
h33=@(t) (x3(t)-y3(t)).^2;
energia(h33)