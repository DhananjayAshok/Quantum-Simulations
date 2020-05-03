function [c] = cn(n,l,ind)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if ind == 2
    cncon = -3*(2^3.5);
    sinterm = pi*n*sin(pi*n/2); 
    costerm = 4*cos(pi*n/2)-4;
    temp = cncon*(sinterm + costerm);
else
    cncon = -3*(2^1.5);
    coscoefficient = (pi^2*n^2+32);
    costerm = cos(pi*n/4);
    cosconstant = 32;
    temp = cncon*(coscoefficient*costerm-cosconstant);
end
c = temp / ((pi^3)*sqrt(l)*(n^3));
end
