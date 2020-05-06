function [result] = hintegral(method,question,len, parameter ,mass,n, m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if question == 3
    result = analytical_h(question, len, parameter, mass, n, m);
else
switch (method)
    case "analytical"
        result = analytical_h(question, len, parameter, mass, n, m);
    case "trapezoidal"
        result = trapezoidal_h(len, parameter, mass, n, m);
    case "simpsons"
        result = simpsons_h(len, parameter, mass, n, m);
    case "gaussian"
        func = q4_int_func(len, parameter, mass, n, m);
        result = gaussian_integral(func, 0, len, 10);
    otherwise
        result = analytical_h(question, len, parameter, mass, n, m);
end
end
end

