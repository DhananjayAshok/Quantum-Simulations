function result = gaussian_integral(func,min, max, order)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[xtemp, wtemp] = lgwt(order, min, max);
atemp = zeros(length(xtemp), 1);
for index = 1 : length(xtemp)
    atemp(index) = func(xtemp(index));
end

result = sum(atemp.*wtemp);
end

