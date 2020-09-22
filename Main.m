clear all
close all
clc


%Select to open the figure of temperature or salinity profiles
fig = openfig('Temperature.fig');
% fig = openfig('Salinity.fig');


% Extract the data from the Fig.
dataObjs_Y = findobj(fig,'-property','YData')
dataObjs_X = findobj(fig,'-property','XData')



Select=1;   % select which data you want out of 4 lines
y = dataObjs_Y(Select).YData;
x = dataObjs_X(Select).XData; 


% plot the selected data
figure
plot(x,y)
set(gca, 'YDir','reverse')


grid on, ax=gca; ax.GridAlpha=1; ax.GridLineStyle=':'; ax.MinorGridAlpha=1; set(gca,'FontSize',10)
set(findall(gca, 'Type', 'Line'),'LineWidth',2); set(gcf,'windowstyle','normal')
set(gcf,'rend','painters','pos',[700 300 400 400])   