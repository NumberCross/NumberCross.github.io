%% Pr�ctica 5: Series de Fourier en tiempo continuo
% Quijano Guti�rrez Luis Humberto
%
%% Objetivos
% * Realizar gr�ficas de series de Fourier exponenciales y trigonom�tricas en tiempo continuo
% * Manipulaci�n de instrucciones en MATLAB
% * Calculo n�merico de los coeficientes de Fourier
%
%% Introducci�n
% Las series de Fourier son una forma de representar se�ales y/o f�rumas en
% una serie infinita de combinciones l�neales de esta. A los componentes
% que forman la series se les llama coeficientes de Fourier. Hay varios
% m�todos para obtener las series de Fourier, pero del que se le va hablar
% es el de exponencial compleja. La f�rmula para obtener la serie mediante
% la exponencial compleja es la siguiente:
% 
% 
% $$Dn=\frac{1}{T_0} \int_{T_0}x(t)e^{-jnw_0t}dt$$
%
% $$=\lim_{T\rightarrow \:
% 0}\frac{1}{N_0T}\sum_{k=0}^{N_0-1}x(kT)e^{-jnw_0kT}T$
%
% $$==\lim_{T\rightarrow \: 0}\frac{1}{N_0}\sum_{k=0}^{N_0-1}x(kT)e^{-jn\Omega_0k}$
%
% en donde $$x(kT)$$ es la k-�sima muestra de $$x(t)$,
% $$N_0=\frac{T}{T_0}$ y $$\Omega_0 = \omega_0T = \frac{2\pi}{N_0}$
%
% Entonces, para obtener los valores de los coeficientes $$D_n$ se requiere
% que $$ T \rightarrow \: 0$, pero eso en la pr�ctica no es posible,
% entonces lo que se hace es hacer que $$T$ sea un n�mero tan peque�o, sin
% ser cero, que no altere la f�rmula y as� poder determinar el
% comportamiento como si $$T$ fuese cero. Quedando la sigueinte f�rmula:
%
% $$D_n=\frac{1}{N_0}\sum_{k=0}^{N_0-1}x(kT)e^{-jn\Omega_0k}$
% 
% 
%% Problema 1 
%
% * |Serie de Fourier con 4 arm�nicos| *
%
% <<problema11.png>>
%
% * |Serie de Fourier con 15 arm�nicos| *
%
% <<problema12.png>>
%
%% Problema 2
%
% * |Serie de Fourier con 4 arm�nicos| *
%
% <<problema2.png>>
%
% * |Serie de Fourier con 15 arm�nicos| *
%
% <<problema2_2.png>>
%
%% Problema 3
%
% * |Serie de Fourier con 4 arm�nicos| *
%
% <<problema3.png>>
%
% * |Serie de Fourier con 15 arm�nicos| *
%
% <<problema3_2.png>>
%
%% Problema 4
%
% * |Serie de Fourier con 4 arm�nicos| *
%
% <<problema1.png>>
%
% * |Serie de Fourier con 15 arm�nicos| *
%
% <<problema1_2.png>>
%
%% Problema 5
%
% * |Serie de Fourier con 4 arm�nicos| *
%
% <<problema51.png>>
%
% * |Serie de Fourier con 15 arm�nicos| *
%
% <<problema5.png>>
%
%% Problema 6
%
%% Problema 7
% 
% <<problema7.png>>
%
% <<problema7_2.png>>
%
%% Referencias
% Lathi, B. P., (2005). Linear Systems and Signals. EUA: Oxford university Press
%