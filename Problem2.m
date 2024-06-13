figure(1)
t = linspace(0, 1, 20);  %t is 20 equally spaced points from 0 to 1
[x, y] = meshgrid(t,t); % form a grid of (x,y) pairs on [0, 1]^2
x = x(:);
y = y(:);
plot(x, y, '.k', 'markersize', 15) % plots pairs of points,
title('Square Points')
% uses dot markers,  k = black color, size 15 markers

%%
s = 1 / 6;
L = tilt(s);

figure(2)
newGrid = L * [x, y]';
newx = newGrid(1, :)';
newy = newGrid(2, :)';
plot(newx, newy, '.k', 'markersize', 15)
title('Tilted Points')

%%
function L = tilt(s)
    L = [1 s; 0 1];
end