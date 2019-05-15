clear all
clc
syms n t;
w=pi;
p1=int(6*t.*exp(-n*w*1i*t),t,-0.5,0.5)
p2=int(6*(1-t).*exp(-n*w*1i*t),t,0.5,1.5)
p3=simplify((pi+p2)/w)