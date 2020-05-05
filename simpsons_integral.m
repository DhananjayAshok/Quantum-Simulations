function c = simpsons_integral(n, l, ind)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
func = q2wavefunc(n, l, ind);

if ind == 2
    maximum = l/2;
    
else
    maximum = l/4;
end
    x_spacing = linspace(0, maximum, 200);
    val = zeros(1, 200);
    for index = 1 : length(x_spacing)
        val(index) = func(x_spacing(index));
    end
    c = simps(x_spacing, val);
end
