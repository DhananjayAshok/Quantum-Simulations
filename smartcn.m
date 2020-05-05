function c =smartcn(method, n,l, ind)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
switch(method)
    case "analytic"
        c = cn(n, l, ind);
    case "trapezoidal"
        c = trapezoidal_integral(n, l, ind);
    case "gaussian"
        c = gaussian_cn(n, l, ind);
    case "simpsons"
        c = simpsons_integral(n, l, ind);
    otherwise 
        c = cn(n, l, ind);
end
end

