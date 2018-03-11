function [p] = LogInterpol (t)
x=[40 42 44 46 48];
y=log2(x);

n = length (x);

for i=1:n
    c(i) = y(i);
end

for k=2:n
    for i=n:-1:k
        c(i)=(c(i)-c(i-1)) ./ (x(i)-x(i-k+1));
    end
end

for k=1:length(t)
    p(k) = c(n);
    for i=n-1:-1:1
        p(k) = c(i)+(t(k)-x(i)) .* p(k);
    end
end


        