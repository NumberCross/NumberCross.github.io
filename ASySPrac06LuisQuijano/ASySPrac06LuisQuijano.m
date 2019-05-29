%% Práctica 6: Sistemas Diferenciales y en diferencias
% Quijano Gutiérrez Luis Humberto
%
% Zárate Murillo Jose Antonio
%
%% Problema 1
% <include>FdeTransferencia.m</include>
%
syms t;
FdeTransferencia([2 2 1],[2 1],[1 1],[0],exp(-t).*heaviside(t))
%% Problema 2
% <include>RespImpulso.m</include>
%
syms t;
RespImpulso([2 2 1],[2 1],[1 1],[0],exp(-t).*heaviside(t))
%% Problema 3
% <include>R_entrada00.m</include>
%
syms t;
R_entrada00([2 2 1],[0 1])
%% Problema 4
% <include>R_estado00.m</include>
%
syms t;
R_estado00([2 2 1],[2 1],exp(-t).*heaviside(t))
%% Problema 5
% <include>R_total.m</include>
%
syms t;
R_total([2 2 1],[2 1],[0 1],exp(-t).*heaviside(t))
%% Problema 6
clc
clear all
close all

s=tf('s')
g=(2*s^4+12*s^3+21*s^2+21*s+12)/(s^5+3*s^4+6*s^3+8*s^2+8*s+4)
t=0:0.01:10;
step(g,t)
xlabel('tiempo')
title('Respuesta al escalon')
%% Problema 7
% <include>parte1_7.m</include>
%
% <<parte17.png>>
%
%% Problema 8
% <include>FdeTransferenciaDis.m</include>
%
syms n;
FdeTransferenciaDis([6 5 1],[1 1],[2 1],[0.5],heaviside(n))
%% Problema 9
% <include>RespImpulsoDis.m</include>
%
syms n;
RespImpulsoDis([6 5 1],[1 1],[2 1],[0.5],heaviside(n))
%% Problema 10
% <include>R_entrada0Dis.m</include>
%
syms n;
R_entrada0Dis([6 5 1],[2 0])
%% Problema 11
% <include>R_estado0Dis.m</include>
%
syms n;
R_estado0Dis([6 5 1],[1 1],heaviside(n))
%% Problema 12
%<include>R_totalDis.m</include>
%
syms n;
R_totalDis([6 5 1],[1 1],[2 0],heaviside(n))
%% Problema 13
clc
clear all
close all

N=[12 22 -31 1];
D=[-12 2  8  2];
[Nz,Dz]=c2dm(N,D,1,'zoh');
y=dstep(Nz,Dz);
plot(y,'.')
grid on;
%% Problema 14
% <include>parte2_7.m</include>
%
% <<parte27.png>>
%
%% Referencias
% 