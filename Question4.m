constants;
%len = input("Please Enter Size of Box: ");
len = 40;
mass = input("Please Enter Mass of particle: ");
frequency = input("Please Enter the desired frequency of the particle: ");
omega = frequency * 2 * pi;

k = 100; % Number of N we use in our estimate ( the answer for k = 10 is same as answer for k = 200)

fun = @(x) equations(4, x, k, len, omega, mass);
x0 = rand(1, k+1);
x = fsolve(fun,x0);
lowest_energy = x(k+1);
disp("Lowest Energy is " + lowest_energy + " e.V - i.e Eigenvalue Estimation of Ground State")

long_string = "";
n_sig = 0;
for count = 1 : k
    if x(count) > 5e-05 || count < 5
        n_sig = n_sig + 1;
        long_string = long_string + "c" + count + ": " + x(count) + "| ";
    else
        break
    end
end
disp("The Eigenstate estimate of the ground state is the linear combination of the first  " + n_sig + " stationary states of a PIB. Coefficients as follows:")
disp(long_string)

fprintf('\n\n')
disp("From theory we then have that the next eigenvalue is 2hw + E0 This gives us E1 = " + lowest_energy + 1*hbar*omega);
fprintf('\n\n')
disp("From theory we also see that the next eigenstate can be obtained from the first state using the raising operator")
fprintf('\n\n')
disp("The eigenstate estimate of the 1st excited state is the linear combination of the first " + n_sig + "terms of the form acos(npix/l)+bx with coefficients a, b as given below")

long_string = "";
bottom = (sqrt(2*hbar*mass*omega));
mw = mass * omega;
hpi = hbar * sqrt(2) * pi;
for count = 1 : n_sig
    a = (hpi/bottom)*(x(count)*count);
    long_string = long_string + "a" + count + ": " + a + "| ";
    
end
disp(long_string)
disp("And b for all k is " + mw/bottom)

