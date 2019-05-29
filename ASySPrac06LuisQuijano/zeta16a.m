function zeta16a(a,b,ciy,cix,xi,n0)
%a coeficientes de las traslaciones de la salida mayor a menor [a_n, ..., a_0]
%b coeficientes de las traslaciones de la entrada mayor a menor [b_m, ..., b_0]
%ciy condiciones iniciales de la salida de mayor a menor [y(n-1), y(0)]
%cix condiciones iniciales de la entrada de mayor a menor [x(m-1), x(0)]
%xi funcion de entrada en terminos de la variable simbolica n previamente
%declarada en el command window
%n0 tiempo final para graficar la solucion, y la entrada
%ejemplo: resolver
%6y[n+2]+5y[n+1]+y[n]=x[n+1]+x[n] con y[1]=2 y[0]=1
%x[0]=0.5, x[n]=u[n], para 30 segundos, se resuleve como
syms n
zeta2016a([6 5 1],[ 1, 1],[2 1],[0.5],heaviside(n),30)
close all
tam=size(a);
tami=size(b);
syms y(n) n z Y(z) x(n) X(z) Yy fp Rescalon(n) ess(n);
syms edd edi
edd=0; %Transformada lado izquierdo
edi=0; %Transformada lado derecho
for i=1:tam(2)
   yd(i)=y(n+tam(2)-i);
   edd=edd+ a(i)*ztrans(yd(i));
end
for i=1:tami(2)
   xd(i)=x(n+tami(2)-i);
   edi=edi+ b(i)*ztrans(xd(i));
end
mensaje('APLICAMOS TRANSFORMADA ZETA ')
edd=subs(edd,ztrans(y(n),n,z), Y(z));
edi=subs(edi,ztrans(x(n),n,z), X(z));
pretty(edd)
disp('=')
pretty(edi)
mensaje('SUBSTITUIMOS CONDICIONES INICIALES')
for j=1:tami(2)-1
edi=subs(edi,x(tami(2)-1-j),cix(j));
end
for j=1:tam(2)-1
edd=subs(edd,y(tam(2)-1-j),ciy(j));
end
pretty(edd)
disp('=')
pretty(edi)
mensaje('SUBSTITUIMOS LA TRANSFORMADA DE LA ENTRADA')
edi=subs(edi,X(z), ztrans(xi));
pretty(edd)
disp('=')
pretty(edi)
mensaje('DESPEJAMOS Y(z)')
edd=collect(edd,Y(z));
edd=subs(edd,Y(z),Yy);
eq1=edd==edi;
disp('Y(z)=')
edd=solve(eq1, Yy);
pretty(edd)
mensaje('Aplicamos transformada inversa, asi la solucion es')
disp('y(n)=')
y(n)=iztrans(edd);
pretty(y(n))
figure (2)
hFig = figure(2);
set(hFig, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig,'FontWeight','bold','FontSize',16);
tiempo=0:1:n0;
subplot(2,3,1)
stem(tiempo,subs(xi,n,tiempo),'b','LineWidth',2)
hold on
stem(tiempo,subs(y(n),n,tiempo),'r','LineWidth',2)
legend('Entrada x[n]','Salida y[n]','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Solucion de la ecuacion en diferencias ','FontWeight','bold','FontSize',16)
grid on
%Funcion de transf
H(n) = Y(n)/X(n)
mensaje('Función de transferencia')
H(z)=edd*(1/edi);
pretty(H(z))
%Usando la definicion de respuesta a estado cero
RE0 = H(n)*F(n)
mensaje('Respuesta a estado cero')
EdoCero(z)=H(z)*edi;
e(n)=iztrans(EdoCero(z));
pretty(e(n))
figure(2)
subplot(2,3,4)
stem(tiempo,subs(e(n),tiempo),'r','LineWidth',2)
title('Respuesta a estado cero')
%Usando la definicion
%Respuesta total = REstado0 + REntrada0
mensaje('Respuesta a entrada cero')
E1(n)=Y(n)-EdoCero(n);
e1(n)=y(n)-e(n);
pretty(e1(n))
figure(2)
subplot(2,3,3)
stem(tiempo,subs(e1(n),tiempo),'b','LineWidth',2)
title('Respuesta a entrada cero')
%Usando la definicion de respuesta total
%RT = REstado0 + REntrada0
mensaje('Respuesta total')
RT(n)=e1(n)+e(n);
figure(2)
hFig4 = figure(2);
set(hFig4, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig4,'FontWeight','bold','FontSize',16);
subplot(2,3,5)
stem(tiempo,subs(RT(n),tiempo),'r','LineWidth',2)
title('Respuesta total')
%Respuesta al impulso con condiciones iniciales cero
mensaje('Respuesta al impulso')
%Usando la definicion
RECo= iztrans(H(n))
Rescalon(n) = iztrans(H(z));
pretty(Rescalon(n))
figure(2)
hFig5 = figure(2);
set(hFig5, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig5,'FontWeight','bold','FontSize',16);
subplot(2,3,2)
stem(tiempo,subs(Rescalon(n),tiempo),'r','LineWidth',2)
title('Respuesta impulso')
%Respuesta al escalon con condiciones iniciales cero
mensaje('Respuesta al escalon')
es(z) = (H(z))/z;
ess(n) = iztrans(es);
pretty(ess);
figure(2)
hFig6 = figure(2);
set(hFig6, 'Position', [0 0 900 900])
axes1 = axes('Parent',hFig6,'FontWeight','bold','FontSize',16);
subplot(2,3,6)
stem(tiempo,subs(ess(n),tiempo),'r','LineWidth',2)
title('Respuesta escalon')
end