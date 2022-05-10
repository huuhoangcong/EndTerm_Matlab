a = "Enter expression: ";
b = "Choose color (black, red, yellow, green, pupil, blue): ";
daThuc = input(a);
color = input(b,"s");

Plot(daThuc, color)

function Plot(daThuc, color)
    colrTex = {'black'; 'red'; 'yellow'; 'green'; 'pupil'; 'blue'};
    colrCod = [0 0 0;...
               1 0 0;...
               1 1 1/255;...
               0 1 0;...
               176/255 1/255 1;...
               0 0 1];
    
    x = linspace(-1,3,500);
    y = polyval(daThuc,x);
           
    [checking, indexColr] = ismember(color, colrTex);
    if checking == 0
        disp("There's no color in our list! Reset to normal!")
        plot(x,y)
    else
        plot(x,y,'color',colrCod(indexColr,:))
    end
    grid on
end