n=-3:3;
x=[-9 -6 -3 0 3 6 9];
h=[0 4 2 0 2 4 0];
c=conv(x,h);
nmin=-(length(x)+length(h)-2)/2;
nmax=(length(x)+length(h)-2)/2;
nt=nmin:nmax;
stem(nt,c)