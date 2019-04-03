function RtoR(TITULO, YL, X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

% Create figure
figure1 = figure('Name', TITULO );

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1);

% Create ylabel
ylabel(YL);

% Create xlabel
xlabel('t');

% Create title
title(TITULO);

box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontName','Microsoft JhengHei UI','FontWeight','bold',...
    'XAxisLocation','origin','XGrid','on','YGrid','on');
end

