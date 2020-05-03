function [wv] = PIBwavelet(n, spacing, a)
%Returns a vector wavelet for a Particle in a box with max_n being maximum number
%of data points
%   Detailed explanation goes here
wv = sqrt(2/a)*sin((n/a)*pi.*spacing);
end

