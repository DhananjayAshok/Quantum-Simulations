function c =smartcn(n,l, ind)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if ind == 2
    func = @(x)(sqrt(2/l)*sin(n*pi*x/l)*x*(l/2-x)*(48/(l^3)));
    c = gaussian_integral(func, 0, l/2, 10);
else
    func = @(x)(sqrt(2/l)*sin(n*pi*x/l)*x*(l/2-x)*(96/(l^3)));
    c = gaussian_integral(func, 0, l/4, 10);
end
end

