function out = equations(method, question, x, k, len, slope, mass)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
out = zeros(1, k+1);
for iii = 1 : k
    for jjj = 1 : k
        out(iii) = out(iii) + x(jjj)* hintegral(method, question, len, slope, mass, iii, jjj);
    end
    out(iii) = out(iii) -(x(iii)* x(k+1));    
    out(k+1) = out(k+1) + (x(iii)^2);
end
out(k+1) = out(k+1) - 1;
end

