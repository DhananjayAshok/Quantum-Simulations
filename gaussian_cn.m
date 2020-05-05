function c = gaussian_cn(n, l, ind)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
func = q2wavefunc(n, l, ind);
if ind == 2
    c = gaussian_integral(func, 0, l/2, 10);
else
    c = gaussian_integral(func, 0, l/4, 10);
end
end

