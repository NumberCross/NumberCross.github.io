w=-10:0.01:10;
%fw=1/(2 + w*1i) - limit(exp(-2*t)*exp(-t*w*1i), t, Inf)/(2 + w*1i)
% El limite de exp(-2*t)*exp(-t*w*1i) cuando t tiende a infinito es cero
fw=@(w) 1./(2 + w.*1i);
RtoR2(w,real(fw(w)),imag(fw(w)), 'Parte Real', 'Parte Imaginaria', 'Transformada de Fourier');
% Espectro de amplitud
Ea=@(w) abs(fw(w));
RtoR('Espectro de amplitud', 'Amplitud', w, Ea(w));
% Espectro de fase
Ef=@(w) angle(fw(w));
RtoR('Espectro de fase' , 'Fase', w, Ef(w));