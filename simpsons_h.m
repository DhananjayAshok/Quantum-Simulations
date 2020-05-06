function result = simpsons_h(len, omega, mass, n, m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
func = q4_int_func(len, omega, mass, n, m);
x_spacing = linspace(0, len, 200);
val = zeros(1, 200);
for index = 1 : length(x_spacing)
    val(index) = func(x_spacing(index));
end
result = simps(x_spacing, val);
end