clc
close all

t = 0:0.1:20;


x =0;
r = 5;
xqd = [];
yqd =[];
xqdA = [];
yqdA = [];
w = 1;
phi0 = 30;
phi = phi0 + w*t;

for i = 1: length(t)
    x = w*r*t(i);
    y=r;
    xqd = [xqd x];
    yqd = [yqd y];
    
    
    [X,Y] = circle(x,y,r);
    hold off
    plot(X,Y,'linewidth',3);
    hold on
    xA = x - r*sin(phi(i));
    yA = r*(1-cos(phi(i)));
    xqdA = [xqdA xA];
    yqdA = [yqdA yA];
    
    plot(x, y,'.','markersize',20);
    plot(xA,yA,'.','markersize',20);
    
    plot(xqdA,yqdA,'-','linewidth',2);
    plot(xqd,yqd,'-','linewidth',2);
    
    axis equal
    axis([-r r+100 -r r+10]); %co dinh ko gian

    getframe;
    
end

function [X,Y] = circle(x,y,r)
ang=0:0.01:2*pi; 
xp=r*cos(ang);
yp=r*sin(ang);
X = x + xp;
Y = y + yp;
end