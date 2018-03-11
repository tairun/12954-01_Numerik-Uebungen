clc,clear,clf
xs = 0:0.4:1.6;
for i=1:length(xs)-1
    x = linspace(xs(i),xs(i+1),11);
    l = LinInterpol(xs(i),xs(i+1),x);
    q = QuadInterpol(xs(i),xs(i+1),x);
    subplot(1,2,1); plot(x,f(x),'-',x,l,'o:'); title('linear');      hold on
    subplot(1,2,2); plot(x,f(x),'-',x,q,'v:'); title('quadratisch'); hold on    
end