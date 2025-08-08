function [M, C, R1, R2] = SphericalCapRadVal(rho, c, a, r, theta)

Sd = pi*a^2;        % cap opening area [m^2]
f = 20:20e3;        % frequency range [Hz]

% optimization iteration number and process condition
iter_num = 5e3;
options = optimset ('MaxFunEvals', iter_num);

% function returns complex vector for the radiation impedance of a baffled
% piston and component values for the Beranek model.
% returned component values order: Ma, Ca, Ra1, Ra2
[~, val] = zrad_piston(f, Sd, rho, c);

% function returns complex vector for the radiation impedance of a
% spherical cap
Zcap = zrad_cap(f, r, a, theta, rho, c);

% use fminsearch function to perform the optimization
% this will find the component values used in Beranek model that will yield
% the correct complex radiation impedance of a spherical cap matching the
% analytical solution
% returned component values order: Ma, Ca, Ra1, Ra2
CapVal = fminsearch (@(val) zrad_cost(f, val, Zcap), val, options);

M = CapVal(1);
C = CapVal(2);
R1 = CapVal(3);
R2 = CapVal(4);

end