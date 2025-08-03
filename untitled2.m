% Constants
mu_0 = 4*pi*10^-7;  
mu_r = 26;          
N = 360;           
r_in = 3;           
r_out = 4;          
f = 100;            

% Problem 3
I_rms = [0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5]; 
r_mean = (r_in + r_out) / 2;   
A = pi * (r_out^2 - r_in^2);   
xi = sqrt(2 * pi^2 * f * N * mu_0 * mu_r * A * I_rms.^2);   

% Display results
disp('Problem 3: RMS value of induced voltage');
for i = 1:numel(I_rms)
    disp(['I_rms = ', num2str(I_rms(i)), ' | xi = ', num2str(xi(i))]);
end
