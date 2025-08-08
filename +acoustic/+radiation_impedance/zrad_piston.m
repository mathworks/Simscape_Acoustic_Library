function [Zrad, componentVal] = zrad_piston(f, Sd, rho, c)
% This function returns the complex vector and the values of each component
% for the radiation impedance of a baffled piston. The model is know as the 
% Beranek structure that approximates the behavior compared to the 
% analytical solution. Returned values order: Ma, Ca, Ra1, Ra2
% Given the inputs:
%
% f: frequencies of interest in vector (Hz)
% Sd: piston surface area (m^2)
% rho: density of surrounding fluid (kg/m^3)
% c: speed of sound in fluid (m/s)
%
% Reference:
% Acoustics: Sound Fields and Transducers by Leo Beranek and Tim J. Mellow
% https://www.sciencedirect.com/book/9780123914217/acoustics-sound-fields-and-transducers#book-description

a = sqrt(Sd/pi);                    % piston radius

% compute component values, see reference for details and derivations
Ma = 8*rho/(3*pi^2*a);
Ca = 5.94*a^3/(rho*c^2);
Ra1 = 0.1404*rho*c/a^2;
Ra2 = rho*c/(pi*a^2);

componentVal = [Ma, Ca, Ra1, Ra2];              % return component values in vector

w = 2*pi.*f;                % angular frequencies
Zm = 1i.*w.*Ma;             % impedance for Ma
Zc = 1./(1i.*w.*Ca);        % impedance for Ca

Za = 1./((1./Zc) + (1/Ra1));            % Ca parallel with Ra1
Zb = Za + Ra2;                          % Ra2 in series with Za
Zrad = 1./(1./Zm + 1./Zb);              % Za parallel with Ma

end