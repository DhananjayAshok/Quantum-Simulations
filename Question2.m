constants;
l = input("Please Enter Size of Box (3 works best): ");
m = input("Please Enter Mass of particle works best with mass < 1: ");
nt = 40;
dt = 0.00001;
estimates = 300;
datapoints = 200;


half = l/2;
quarter = l/4;

Nhalf = 48/(l^3);
Nquarter = 96/(l^3);

shalf = 0;
squarter = 0;
chalf = zeros(1, estimates); % Row vector
cquarter = zeros(1, estimates);
for k = 1 : estimates
    chalf(k) = cn(k, l, 2);
    cquarter(k) = cn(k,l,4);
    shalf = shalf + (chalf(k))^2;
    squarter = squarter + (cquarter(k))^2;
end


xhalf = linspace(0, half, datapoints);
xquarter = linspace(0,quarter,datapoints);

t=0;
for tk = 1: nt
    clf
    wave = zeros(1,datapoints);
    for k = 1: estimates
        wavelet = PIBwavelet(k, xhalf, l);
        energy = PIBEnergy(k, m, l);
        miniwave = (chalf(k).*wavelet).*(e^-(energy*t));
        wave = wave + miniwave;
    end
    plot(xhalf,conj(wave).*wave,'k','lineWidth',2);
    legend('prob. density');
    titlestring = ["Wave Dynamics = ", tk];
    title(titlestring);
    pause(0.1)
    
    Movie(tk) = getframe;
    t = t + dt;
    hold off
end

averageKE = 0;
for k = 1: estimates
    energy = PIBEnergy(k, m, l);
    averageKE = averageKE + (chalf(k)^2)*energy;
end
averageKEHalf = averageKE
disp("Average Kinetic Energy Should Not Change Over time. This is because as Potential energy is always 0 in the box and total energy is conserved kinetic energy must remain constant over time")
disp("This is true regardless of the length parameter of the wavefunction and hence should hold true for L/4 as well")




