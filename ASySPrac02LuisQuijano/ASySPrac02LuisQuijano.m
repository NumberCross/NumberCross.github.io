%% Práctica 2: Señales en tiempo continuo
% Quijano Gutiérrez Luis Humberto
%
%% Objetivos
% * Manipulación básica de MATLAB
% * Gráficas de señales reales y complejas continuas
% * Transformación de señales continuas (escalamiento y traslación)
% * Calculo de energía y potencia de señales continuas
%
%% Introducción
% MATLAB signifca MATrix LABoratory, y es un software para realizar
% calculos númericos y simbólicos. Nace debido a una necesidad de un 
% software de calculo avanzado y que no sea tan complicado de usar.  
% La  primera versión de MATLAB  fue desarrolada por Cleve Moler en FORTRAN. 
% Despues se implementaron algoritmos matriciales mediante LINKSPACE y 
% EISPACK, quienes desarrollaron el lenguaje de promgramación M en los años
% '70. La versión actual de MATLAB fue desarrollada en C por The Mathworks,
% quienes de igual forma lo distribuyen. 
% 
% Ya que MATLAB es un programa que necesita una lincencia para su uso,
% existen alternativas de software libre. Una de esas es Octave, el cual es 
% un lenguaje para realizar e interpretar cálculos numéricos. Es de cierta
% forma compatible con MatLab, ya que puede leer el lenguaje M. Es un software
% libre bajo la licencia de GNU. En el siguiente enlace se muestra la 
% documentación de Octave, así como algunos ejemplos proporcionados por la
% página de <https://octave.org/doc/interpreter/ Octave>.
% Aquí tambien de encuentran ejemplos de Octave:
% <https://www.ibiblio.org/pub/linux/docs/LuCaS/Presentaciones/200304curso-glisa/octave/curso-glisa-octave-html/x24.html Ejemplos>
% 
% Otro software libre es Python. Es un lenguaje de programación independiente 
% orientado a objetos a base de scripting. Es un lenguaje interpretado, lo
% que significa que no se necesita compilar el código fuente para
% ejecutarse. Es un software que te permite crear todo tipo de programas,
% desde apps hasta páginas web. Contiene una gran cantidad de librerías,
% tipos de datos y funciones incorporadas en el mismo lenguaje. En el
% siguiente enlace encontraras una guía para principiantes:
% <https://wiki.python.org/moin/BeginnersGuide/Programmers Python>
%
%% Problema 1
%   function [fw] = fun1(w,a)
%   fw=a/(a^2+w^2);
%   end
%
%% Problema 2
%   RtoR('Parte 2', 'f(w)', w, f);
% 
% <<parte2.png>>
% 
%% Problema 3
% 
% <<parte3_1.png>>
% 
% <<parte3_2.png>>
% 
% <<Espectrodeamplitud.png>>
% 
% <<Espectrodefase.png>>
% 
%% Problema 4 M1.1
% <include>M1_1.m</include>
%
%% Problema 4 M1.2
% <include>M1_2.m</include>
%
%% Problema 4 M1.3
% <include>M1_3.m</include>
%
%% Problema 4 M1.4
% <include>M1_4.m</include>
%
%% Problema 5
% <include>parte5.m</include>
% 
% <<parte5.png>>
% 
%% Problema 6
% <include>energia.m</include>
%
% Problema 1.1.3
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
%% Problema 7
% <include>potencia.m</include>
%
% Problema 1.1.4
t=-2:0.001:2;
syms c;
x=@(t) t.^3;
t1=max(t);
t2=min(t);
x1=@(t) -x(t);
x2=@(t) 2.*x(t);
x3=c.*x;
Potencia=potencia(x,t2,t1)
P1=potencia(x1,t2,t1)
RMS1=sqrt(P1)
P2=potencia(x2,t2,t1)
RMS2= sqrt(P2)
P3=potencia(x3,t2,t1)
RMS3=sqrt(P3)
%% Referencias
% <https://www.ecured.cu/MATLAB#Historia Matlab Historia>
%
% <https://www.monografias.com/trabajos5/matlab/matlab.shtml Matlab>
%
% <http://nereida.deioc.ull.es/~pcgull/ihiu01/cdrom/matlab/contenido/node3.html Historia de Matlab>
%
% <https://la.mathworks.com/help/matlab/ref/if.html Condicionales>
%
% <https://la.mathworks.com/help/matlab/data-type-identification.html Data Type Identification>
%
% <https://www.programoergosum.com/cursos-online/raspberry-pi/244-iniciacion-a-python-en-raspberry-pi/que-es-python ¿Qué es python?>
%
% <https://www.ibiblio.org/pub/linux/docs/LuCaS/Presentaciones/200304curso-glisa/octave/curso-glisa-octave-html/x18.html ¿Qué es octave?>
% 
