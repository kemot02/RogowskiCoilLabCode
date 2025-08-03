% Constants
mu_0 = 4*pi*10^-7;  
mu_r = 26;          
N = 360;            
r_in = 3;           
r_out = 4;          
f = 100;            

% Problem 1
I_0 = 1;            
t = 0:1/(10*f):0.01;   
i_t = I_0 * sin(2*pi*f*t);  

% Problem 2
I_rms = rms(i_t);   

% Problem 3
r_mean = (r_in + r_out) / 2;    
A = pi * (r_out^2 - r_in^2);    
xi = sqrt(2 * pi^2 * f * N * mu_0 * mu_r * A * I_rms^2);    


disp('Problem 1: Time-domain representation');
disp(['Current waveform (i_t) = ', num2str(i_t)]);
disp(' ');

disp('Problem 2: RMS value of current');
disp(['RMS value of current (I_rms) = ', num2str(I_rms)]);
disp(' ');

disp('Problem 3: RMS value of induced voltage');
disp(['RMS value of induced voltage (xi) = ', num2str(xi)]);
