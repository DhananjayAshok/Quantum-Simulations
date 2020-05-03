function [En] = PIBEnergy(n,m,a)
% Returns the En for a given particle with specified n, mass and length of
% box
%   Detailed explanation goes here
constants;
En = (n^2*pi^2*hbar^2)/(2*m*a^2);
end

