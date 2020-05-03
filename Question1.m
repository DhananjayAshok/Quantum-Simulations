constants;

a = input("Please Enter length of box (best number is 4): ");
m = input("Please Enter Mass of particle *10^65 (Changes in wavefunction only seen with mass < 0.05): ")*(10^-65);
n = input("Please Enter quantum number i.e nth energy state: ");

nt = 50;                        % Number of time steps
En = PIBEnergy(n, m, a);
wn = En / hbar;                   % angular frequency of vibration [rad/s]
Tn = 2*pi / wn;                   % period of vibration [s]
dt = Tn / nt;                     % time step [s]
t = 0;                            % initial time [s]

x = linspace(0, a, 200);
%wavelet = sqrt(2/a)*sin((n/a)*pi.*x);
wavelet = PIBwavelet(n, x, a);
time_factor = e^-(1i*t*En);
figure(1)
for k =  1 : nt
    clf
    time_factor = e^-(i*En*k); % Recalculate the time factor
    PSI = wavelet .* time_factor; % Recalculate the PSI
    plot(x,real(PSI),'b','lineWidth',2);
    hold on
    plot(x,imag(PSI),'Color','r','lineWidth',2);
    plot(x,conj(PSI).*PSI,'k','lineWidth',2);
    legend('real \Psi','imaginary \Psi','prob. density');
    titlestring = ["Stationary Wave Dynamics at t = ", t];
    title(titlestring);
    pause(0.1)
    
    Movie(k) = getframe;
    t = t + dt;
    hold off
end
msg = "Stationary Wave - The Real and Imaginary Parts of the wave oscillate but the probability distribution does not change"

wavelet1 = PIBwavelet(1,x, a);
wavelet2 = PIBwavelet(2,x, a);
figure(2)
for k = 1 : nt
    clf
    E1 = PIBEnergy(1, m, a);
    E2 = PIBEnergy(2, m, a);
    time_factor1 = e^-(i*E1*k); % Recalculate the time factor
    time_factor2 = e^-(i*E2*k); % Recalculate the time factor
    wave = time_factor1*0.5.*wavelet1 + time_factor2*0.866.*wavelet2;
    PSI = wave; % Recalculate the PSI
    plot(x,real(PSI),'b','lineWidth',2);
    hold on
    plot(x,imag(PSI),'Color','r','lineWidth',2);
    plot(x,conj(PSI).*PSI,'k','lineWidth',2);
    legend('real \Psi','imaginary \Psi','prob. density');
    titlestring = ["Superposition Wave Dynamics at t = ", t];
    title(titlestring);
    pause(0.1)
    
    Movie(k) = getframe;
    t = t + dt;
    hold off
end

msg = "Non-Stationary Wave: All aspects of the wave change over time, local maximums form depending on the coefficients strength of each n"
