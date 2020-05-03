function [result] = hintegral(question, len, parameter ,mass,n, m)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
h = 1;
if question == 3
    if n ~= m
        num = 4 * parameter * len * n * m * (((-1)^(n+m)) - 1 );
        den = (pi^2) * ((n-m)^2) * ((n+m)^2);
        result = num/den;
    else
        t1 = (n^2)*(pi^2)/(2*mass * (len^2));
        t2 = parameter* len * 0.5;
        result = t1+t2;
    end
else
    if n ~= m
        num = ((-1)^(n+m+1))*(4*mass*(len^2)*(-m*n^3 + m^3*n))*(-parameter^2);
        den = (pi^2)*(n^2-m^2)^3;
        result = num/den;
    else
        t1 = mass * (len^2) * (parameter^2) * ((1/(4*pi^2*n^2))-(1/6));
        t2 = -(pi^2 * n^2 * h)/(2*mass*len);
        result = t1 + t2;
    end
end
end

