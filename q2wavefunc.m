function func = q2wavefunc(n,l,ind)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if ind == 2
    func = @(x)(sqrt(2/l)*sin(n*pi*x/l)*x*(l/2-x)*(sqrt(960/(l^5))));
else
    func = @(x)(sqrt(2/l)*sin(n*pi*x/l)*x*(l/2-x)*(sqrt(960/(l^5))));
end
end

