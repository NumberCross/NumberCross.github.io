%% Pr�ctica 4: Convoluci�n y correlaci�n de se�ales en tiempo continuo y tiempo discreto
% Quijano Guti�rrez Luis Humberto
%
%% Objetivos
% * Conocer m�todos b�sicos de integraci�n num�rica
% * Manipulaci�n de instrucciones en MATLAB
% * Simular convoluciones y correlaciones de se�ales continuas
% * Simular convoluciones y correlaciones de se�ales discretas
%
%% Introducci�n
% *Convoluci�n:*
%
% Por definici�n, la convoluci�n es la integral de menos infinito a
% infinito del producto de dos se�ales, una de ellas invertida y trasladada.
% La convoluci�n posee varias propiedades:
%
% * Conmutatividad
% * Asociatividad
% * Distributividad
%
% entre otras, pero estas son las m�s aplicadas.
%
% Para realizar una convoluci�n se tienen varios m�todos, los cuales se van
% a mostrar a continuaci�n:
%
% _M�todo anal�tico:_
%
% Se tiene dos se�ales: $$f(t) = e^{-t}*u(t) - e^{t}*u(-t)$ y $$g(t) = u(t)$.
% Para el m�todo anal�tico se debe tener las expresiones anal�ticas de las
% se�ales. Una vez que se tengan las expresiones anal�ticas, si se quiere
% hacer la convoluci�n de $$f(t)*g(t)$, se sustitulle en $$f(t)$ la $$t$ por $$\tau$,
% quedando $$f(\tau)$; y en $$g(t)$ se sustitulle $$t$ por $$(t-\tau)$, quedando
% $$g(t-\tau)$.
% Se aplican propiedades de intragrales para separar la integral en una
% suma de integrales (si es posible) y, una vez realizada la sustituci�n,
% se tiene que realizar una interpretaci�n para determinar cuando sobrevive
% la convoluci�n.
%
% <<introduccion1.png>>
%
% <<introduccion2.png>>
% 
% _M�todo semigr�fico:_
%
% Este m�todo nos sirve para encontrar los l�mites de integraci�n de la
% convoluci�n.  De igual forma, se deben tener dos se�ales $$f(t)$ y $$g(t)$. A
% la se�al $$f(t)$ se le sustituye por $$f(\tau)$ y queda la misma geometr�a, la
% unica diferencia es el nombre del eje horizontal. Para la se�al $$g(t)$ se
% sustituye por $$g(t-\tau)$, pero, para que se facilite la convoluci�n,
% primero se invierte la se�al y luego se empieza a trasladar. 
%
% <<introduccion1.png>>
%
% <<introduccion3.png>>
%
% Para este m�todo, se tiene que realizar por casos, y cada caso corresponde a un
% cambio en la f�rmula de las se�ales. A continuaci�n, se muestra una
% animaci�n de como se ve gr�ficamente una convoluci�n, en este caso se
% realiz� de $$-5$ a $$5$, por practicidad. Notese que la convoluci�n cambia de
% forma cuando $$g(t-\tau)$ entra en la segunda f�rmula de $$f(\tau)$:
%
% <<introduccion1.gif>>
%
% *Correlaci�n:*
%
% Por definici�n, la convoluci�n es la integral de menos infinito a
% infinito del producto de dos se�ales, una de ellas trasladada.
% A diferencia de la convoluci�n, la correlaci�n no conmuta, es decir, no
% es lo mismo la correlaci�n de $$f(t)$ con $$g(t)$ que la correlaci�n de
% $$g(t)$
% con $$f(t)$.
% Hay 3 definiciones para realizar la corelaci�n:
%
% * $$\int_{-\infty}^{\infty}f(t+\tau)g(\tau)$
% * $$\int_{-\infty}^{\infty}f(\tau)g(\tau-t)$
% * Mediante la convoluci�n de $$f(t)*g(-t)$
%
% _M�todo anal�tico:_
%
% Este m�todo es muy similiar al de convoluci�n ya que se necesitan las expresiones anal�ticas de las se�ales, la unica diferencia es la sustituci�n
% de la variabe t, ya sea $$f(t+\tau)$ y $$g(\tau)$ o $$f(\tau)$ y $$g(\tau-t)$; estas
% parejas de sustituciones son equivalentes siempre y cuando se respeten
% dichas parejas. Una vez realizada la sustituci�n, se aplican propiedades
% de las integrales para separar la integral en varias integrales y luego
% se realiza la interpretaci�n para ver cuando sobrevive la correlaci�n y
% cuando no.
%
% <<introduccion4.png>>
%
% <<introduccion5.png>>
%
% _M�todo semigr�fico:_
%
% Los pasos a seguir en el m�todo gr�fico son los siguientes:
%
% # Dibujar $$f(\tau)$ y $$g(\tau)$
% # Agregar un "$$-t$" en cada cambio de f�rmula de $$f(\tau)$
% # Se traslada $$f(\tau)$ de tal forma que se obtenga $$f(t+\tau)g(\tau)$
% # Encontrar los valores de $$\tau$
% # Se encuentran los valores de $$t$ de tal manera que los valores
% encontrados de $$\tau$ sean validos
% # Se repiten los pasos 4, 5 y 6 para todos los valores de t reales
%
% _Correlaci�n mediante convoluci�n:_
%
% Para este m�todo se toma en cuenta la propiedad de que la correlaci�n es
% la convoluci�n de la primera se�al con la inversi�n horizontal de la
% segunda, $$f(t)*g(-t)$, y se realizan los pasos de una convoluci�n.
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
% En este problema se realiz� la correlaci�n de la se�al f(t) con la se�al
% g(t) mediante la convoluci�n. En este m�todo, se invierte la segunda
% se�al, en este caso g(t). Como dicha se�al es simetrica, si la
% invertimos queda igual a la original, por lo tanto la correlaci�n es
% igual a la convoluci�n.
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