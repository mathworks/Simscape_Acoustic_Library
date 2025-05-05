function Zrad = zrad_cap(f, r, a, theta, rho, c)
% This function returns a complex vector for the radiation impedance of a
% spherical cap. See reference for the analytical solution derivations. 
% Given the inputs:
%
% f: frequencies of interest in vector (Hz)
% r: radius of the sphere (m)
% a: radius of the cap opening (m)
% theta: half angle of the cap (rad)
% rho: density of surrounding fluid (kg/m^3)
% c: speed of sound in fluid (m/s)
%
% Note:
% To use the function polyval, the coefficients of the P polynomials are 
% arranged in descending order rather than ascending, which are presented 
% in the references. 
%
% References:
% https://doi.org/10.3813/AAA.918501
% https://www.researchgate.net/publication/233699837
% "Modeling Acoustical Horns As A Cascade Of Conical Transmission Line 
% Segments Terminated With A Spherical Radiator"
% Master thesis by Max R. Pagnucco

h = r - sqrt(r^2 - a^2);       % height of the spherical cap
S = 2*pi*r*h;                  % surface area of the spherical cap
Z0_cap = rho*c/S;              % characteristic acoustic impedance

nu = r.*f./c;                  % unitless frequency dependent term of the complex impedance

% coefficients of the polynomial in descending powers
Pa_coeff = [0.1113,    -0.6360,     1.1620,    -1.24200,    1.0830,     0.8788];
Pz_coeff = [0,          0.0207,    -0.1440,     0.22100,    0.0799,     0.7200];
Pv_coeff = [-0.1980,    0.2607,    -0.4240,    -0.07946,    4.7040,    -0.0220];

% P values are coefficients of a power series for given theta value
Pa = polyval(Pa_coeff, theta);
Pz = polyval(Pz_coeff, theta);
Pv = polyval(Pv_coeff, theta);

% complex radiation impedance for a spherical cap
Zrad = Z0_cap.*((1i .* nu .* (Pv/Pa) - (nu .* Pv).^2) ./ ...
               ((1 + 2 * 1i .* nu .* Pz * Pv) - (nu .* Pv).^2));

end