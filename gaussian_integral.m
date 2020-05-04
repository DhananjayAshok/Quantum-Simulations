function result = gaussian_integral(func,min, max, order)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[xtemp, wtemp] = lgwt(order, min, max);
result = sum(func(xtemp).*wtemp);
end

