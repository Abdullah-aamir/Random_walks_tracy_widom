%Author: Abdullah Bin Aamir
%This program simulates random walks for a fixed number of particles,
%their final positions are compared to try to prove that the
%system growth follows a Tracy-widom distribution

clear all;
close all;

noOFParts = 10000;
timeSteps = 10000;

rs = [];
x0s = [];
y0s = [];
maxr = 0;
max_rs = [];

figure(1);
for ensemble = 1:noOFParts
    x0 = 0;
    y0 = 0;
    maxr = 0;
    for t = 1:timeSteps
        dx = randn;
        dy = randn;
        x0 = x0+dx;
        y0 = y0+dy;
    end
    r = sqrt(x0^2+y0^2);
    rs = [rs r];
    x0s = [x0s x0];
    y0s = [y0s y0];
end
scatter(x0s,y0s,'.k');
figure(2);
histogram(rs);
