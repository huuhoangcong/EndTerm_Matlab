clc
clear all
close all

t = 0:0.01:4;
R = sqrt(2)/2;


f1 = figure;

X1 = [];
Y1 = [];

X = [];
Y = [];


for i = 1:length(t)
    goc = [-pi/4 -3*pi/4 3*pi/4 pi/4];
    
    b = pi*t(i);
    
    x0 = 5*cos(b);
    y0 = 5*sin(b);
    
    
    clf('reset')    
    hold on
    
    for j = 1:size(goc,2)
        
        % GIATOC = 5
        a = 5*t(i)^2+goc(j);
        xt = x0+R*cos(a);
        yt = y0-R*sin(a);
        plot([x0 xt],[y0 yt],'-o','markersize',5);
    end
    

    X = [X xt];
    Y = [Y yt];
    
    X1 = [X1 x0];
    Y1 = [Y1 y0];
    plot(X1,Y1,'--')
    plot([0 x0],[0 y0],'-o','markersize',5);
    plot(X,Y,'--')
    grid on
    axis equal
    axis([-5-1 5+1 -5-1 5+1])

    khung_hinh = getframe;
end