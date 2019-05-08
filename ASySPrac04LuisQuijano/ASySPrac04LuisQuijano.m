%% Práctica 4: Convolución y correlación de señales en tiempo continuo y tiempo discreto
% Quijano Gutiérrez Luis Humberto
%
%% Objetivos
% * Conocer métodos básicos de integración numérica
% * Manipulación de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de señales continuas
% * Simular convoluciones y correlaciones de señales discretas
%
%% Introducción
% *Convolución:*
%
% Por definición, la convolución es la integral de menos infinito a
% infinito del producto de dos señales, una de ellas invertida y trasladada.
% La convolución posee varias propiedades:
%
% * Conmutatividad
% * Asociatividad
% * Distributividad
%
% entre otras, pero estas son las más aplicadas.
%
% Para realizar una convolución se tienen varios métodos, los cuales se van
% a mostrar a continuación:
%
% _Método analítico:_
%
% Se tiene dos señales: $$f(t) = e^{-t}*u(t) - e^{t}*u(-t)$ y $$g(t) = u(t)$.
% Para el método analítico se debe tener las expresiones analíticas de las
% señales. Una vez que se tengan las expresiones analíticas, si se quiere
% hacer la convolución de $$f(t)*g(t)$, se sustitulle en $$f(t)$ la $$t$ por $$\tau$,
% quedando $$f(\tau)$; y en $$g(t)$ se sustitulle $$t$ por $$(t-\tau)$, quedando
% $$g(t-\tau)$.
% Se aplican propiedades de intragrales para separar la integral en una
% suma de integrales (si es posible) y, una vez realizada la sustitución,
% se tiene que realizar una interpretación para determinar cuando sobrevive
% la convolución.
%
% <<introduccion1.png>>
%
% <<introduccion2.png>>
% 
% _Método semigráfico:_
%
% Este método nos sirve para encontrar los límites de integración de la
% convolución.  De igual forma, se deben tener dos señales $$f(t)$ y $$g(t)$. A
% la señal $$f(t)$ se le sustituye por $$f(\tau)$ y queda la misma geometría, la
% unica diferencia es el nombre del eje horizontal. Para la señal $$g(t)$ se
% sustituye por $$g(t-\tau)$, pero, para que se facilite la convolución,
% primero se invierte la señal y luego se empieza a trasladar. 
%
% <<introduccion1.png>>
%
% <<introduccion3.png>>
%
% Para este método, se tiene que realizar por casos, y cada caso corresponde a un
% cambio en la fórmula de las señales. A continuación, se muestra una
% animación de como se ve gráficamente una convolución, en este caso se
% realizó de $$-5$ a $$5$, por practicidad. Notese que la convolución cambia de
% forma cuando $$g(t-\tau)$ entra en la segunda fórmula de $$f(\tau)$:
%
% <<introduccion1.gif>>
%
% *Correlación:*
%
% Por definición, la convolución es la integral de menos infinito a
% infinito del producto de dos señales, una de ellas trasladada.
% A diferencia de la convolución, la correlación no conmuta, es decir, no
% es lo mismo la correlación de $$f(t)$ con $$g(t)$ que la correlación de
% $$g(t)$
% con $$f(t)$.
% Hay 3 definiciones para realizar la corelación:
%
% * $$\int_{-\infty}^{\infty}f(t+\tau)g(\tau)$
% * $$\int_{-\infty}^{\infty}f(\tau)g(\tau-t)$
% * Mediante la convolución de $$f(t)*g(-t)$
%
% _Método analítico:_
%
% Este método es muy similiar al de convolución ya que se necesitan las expresiones analíticas de las señales, la unica diferencia es la sustitución
% de la variabe t, ya sea $$f(t+\tau)$ y $$g(\tau)$ o $$f(\tau)$ y $$g(\tau-t)$; estas
% parejas de sustituciones son equivalentes siempre y cuando se respeten
% dichas parejas. Una vez realizada la sustitución, se aplican propiedades
% de las integrales para separar la integral en varias integrales y luego
% se realiza la interpretación para ver cuando sobrevive la correlación y
% cuando no.
%
% <<introduccion4.png>>
%
% <<introduccion5.png>>
%
% _Método semigráfico:_
%
% Los pasos a seguir en el método gráfico son los siguientes:
%
% # Dibujar $$f(\tau)$ y $$g(\tau)$
% # Agregar un "$$-t$" en cada cambio de fórmula de $$f(\tau)$
% # Se traslada $$f(\tau)$ de tal forma que se obtenga $$f(t+\tau)g(\tau)$
% # Encontrar los valores de $$\tau$
% # Se encuentran los valores de $$t$ de tal manera que los valores
% encontrados de $$\tau$ sean validos
% # Se repiten los pasos 4, 5 y 6 para todos los valores de t reales
%
% _Correlación mediante convolución:_
%
% Para este método se toma en cuenta la propiedad de que la correlación es
% la convolución de la primera señal con la inversión horizontal de la
% segunda, $$f(t)*g(-t)$, y se realizan los pasos de una convolución.
%
% <<introduccion6.png>>
%
% <<introduccion7.gif>>
%
%% Problema 1
%
% <<problema1_1.png>>
%
% <<problema1.gif>>
%
% <<problema1_2.png>>
% 
%% Problema 2
% 
% <<problema2_1.png>>
%
% <<problema1.gif>>
%
% <<problema2_2.png>>
%
%% Problema 3
% 
% <<problema3.gif>>
%
%% Problema 4
% En este problema se realizó la correlación de la señal f(t) con la señal
% g(t) mediante la convolución. En este método, se invierte la segunda
% señal, en este caso g(t). Como dicha señal es simetrica, si la
% invertimos queda igual a la original, por lo tanto la correlación es
% igual a la convolución.
%
% <<problema4.gif>>
%
%% Problema 5
% <include>problema5.m</include>
%
% <<problema5.png>>
%
%% Referencias
% Lathi, B. P., (2005). Linear Systems and Signals. EUA: Oxford university Press