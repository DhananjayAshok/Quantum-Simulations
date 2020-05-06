function func = q4_int_func(len, omega, mass, n, m)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h = 1;
u = @(x) sqrt(2/len) * sin(n*pi*x/len);
a = @(x) (h/(2*mass))*(sqrt(2)*(pi^2)*(mass^2)*sin(m*pi*x/len))/(len^2.5);
b = @(x) 0.5 * mass * (omega^2) * (x^2) * sqrt(2/len) * sin(m*pi*x/len);
func = @(x) u(x) * (a(x) + b(x));
end

