clear;
clc;

format long

x=40:1:48
figure();
title('LogInterpol(x) vs Log2 [40,48]')
xlabel('x')
ylabel('y')
plot(x,LogInterpol(x),'--',x,log2(x))

x=1:100;
figure();
title('LogInterpol(x) vs Log2 [1,100]')
xlabel('x')
ylabel('y')
plot(x,LogInterpol(x),'--',x,log2(x))

x=40:48;
figure()
title('Fehlerfunktion')
plot(x,abs(log2(x)-LogInterpol(x)))

y=LogInterpol(45.254834)
x=log2(45.254834)