constants;
len = input("Please Enter Size of Box: ");
mass = input("Please Enter Mass of particle: ");
slope = input("Please Enter the slope (Alpha Parameter) of the box: ");

k = 100; % Number of N we use in our estimate ( the answer for k = 10 is same as answer for k = 200)

fun = @(x) equations(3, x, k, len, slope, mass);
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

