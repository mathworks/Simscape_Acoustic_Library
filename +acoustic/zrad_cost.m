function cost = zrad_cost(f, PistonVal, Zcap)
% This function returns a single cost function value, the numerical 
% difference between the spherical cap radiation impedance and baffled 
% piston radiation impedance with a surface area equal to the cap opening 
% area. Given the inputs:
%
% f: frequencies of interest in vector (Hz)
% PistonVal: vector, component values for a baffled piston radiation 
%            impedance using the cap opening as the piston surface area
%            value order: Ma, Ca, Ra1, Ra2
% Zcap: complex vector, analytical solution for a spherical cap radiation 
%       impedance

Ma = PistonVal(1);
Ca = PistonVal(2);
Ra1 = PistonVal(3);
Ra2 = PistonVal(4);

w = 2*pi.*f;                % angular frequencies
Zm = 1i.*w.*Ma;             % impedance for Ma
Zc = 1./(1i.*w.*Ca);        % impedance for Ca

Za = 1./((1./Zc) + (1/Ra1));            % Ca parallel with Ra1
Zb = Za + Ra2;                          % Ra2 in series with Za
Zpist = 1./(1./Zm + 1./Zb);             % Za parallel with Ma

% calculate cost function value, the numerical difference between the two curves
cost = sum( abs( real(Zcap) - real(Zpist) ) ) + sum( abs( imag(Zcap) - imag(Zpist) ) );

end