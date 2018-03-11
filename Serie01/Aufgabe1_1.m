clear;
clc;

x = 1:0.5:10;
figure(1);
plot(x, 1/60.*x.^2-1/4.*x+37/30, x, 1./sqrt(x));
title("Serie01 - Aufgabe 1.1")
legend("Approximation", "1/sqrt(x)");