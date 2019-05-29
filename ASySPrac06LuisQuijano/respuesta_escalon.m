%laplace
clc
clear all
close all

s=tf('s')
g=(2*s^4+12*s^3+21*s^2+21*s+12)/(s^5+3*s^4+6*s^3+8*s^2+8*s+4)
t=0:0.01:10;
step(g,t)