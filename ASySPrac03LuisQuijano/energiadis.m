function [energia] = energiadis(tiempo,alturas)
energia=sum(alturas.^2);
NtoR(tiempo,alturas,'Energía','x[n]');
end